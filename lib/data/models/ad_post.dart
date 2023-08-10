class AdPost {
  final int id;
  final String date;
  final String dateGmt;
  final String guid;
  final String modified;
  final String modifiedGmt;
  final String slug;
  final String status;
  final String type;
  final String link;
  final Title title;
  final Content content;
  final int author;
  final int featuredMedia;
  final int parent;
  final String template;
  final List<Links> links;

  AdPost({
    required this.id,
    required this.date,
    required this.dateGmt,
    required this.guid,
    required this.modified,
    required this.modifiedGmt,
    required this.slug,
    required this.status,
    required this.type,
    required this.link,
    required this.title,
    required this.content,
    required this.author,
    required this.featuredMedia,
    required this.parent,
    required this.template,
    required this.links,
  });

  factory AdPost.fromJson(Map<String, dynamic> json) {
    return AdPost(
      id: json['id'],
      date: json['date'],
      dateGmt: json['date_gmt'],
      guid: json['guid']['rendered'],
      modified: json['modified'],
      modifiedGmt: json['modified_gmt'],
      slug: json['slug'],
      status: json['status'],
      type: json['type'],
      link: json['link'],
      title: Title.fromJson(json['title']),
      content: Content.fromJson(json['content']),
      author: json['author'],
      featuredMedia: json['featured_media'],
      parent: json['parent'],
      template: json['template'],
      links: List<Links>.from(json['_links']['self'].map((x) => Links.fromJson(x))),
    );
  }
}

class Title {
  final String rendered;

  Title({required this.rendered});

  factory Title.fromJson(Map<String, dynamic> json) {
    return Title(
      rendered: json['rendered'],
    );
  }
}

class Content {
  final String rendered;
  final bool protected;

  Content({required this.rendered, required this.protected});

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      rendered: json['rendered'],
      protected: json['protected'],
    );
  }
}

class Links {
  final String href;

  Links({required this.href});

  factory Links.fromJson(Map<String, dynamic> json) {
    return Links(
      href: json['href'],
    );
  }
}
