import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lanka_derana/data/models/ad_media.dart';
import 'package:lanka_derana/data/models/ad_post.dart';
import 'package:lanka_derana/presentation/pages/item_details_page.dart';
import 'package:http/http.dart' as http;

class AdPostCard extends StatefulWidget {
  const AdPostCard({super.key, required this.adPost});

  final AdPost adPost;

  @override
  State<AdPostCard> createState() => _AdPostCardState();
}

class _AdPostCardState extends State<AdPostCard> {
  Future<List<AdMedia>>? media;

  @override
  void initState() {
    // Use async/await to wait for the Future to complete
    media = _fetchMediaForAdPost();
    super.initState();
  }

  Future<List<AdMedia>> _fetchMediaForAdPost() async {
    try {
      final response = await http.get(Uri.parse(
          'https://lankaderana.lk/wp-json/wp/v2/media?parent=${widget.adPost.id}'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        return jsonData.map((data) => AdMedia.fromJson(data)).toList();
      } else {
        throw Exception('Failed to load media for ad post ${widget.adPost.id}');
      }
    } catch (error) {
      print('Error fetching media: $error');
      rethrow; // Re-throw the error to handle it further up the call stack
    }
  }

  @override
  Widget build(BuildContext context) {
    void selectItem() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => AdDetailsPage(adPost: widget.adPost),
      ));
    }

    return GestureDetector(
      onTap: selectItem,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder<List<AdMedia>>(
                future: media,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    return SizedBox(
                      height: 130,
                      width: double.infinity,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(snapshot.data![0].sourceUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  widget.adPost.title.rendered,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.black54),
                ),
              ),
              Text(
                'Price On Call',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                DateFormat('dd MMM yyyy HH:mm')
                    .format(DateTime.parse(widget.adPost.date)),
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.black45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
