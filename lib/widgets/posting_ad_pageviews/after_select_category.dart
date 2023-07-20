import 'package:flutter/material.dart';
import 'package:lanka_derana/models/category.dart';
import 'package:flutter_quill/flutter_quill.dart' as quil;

class AfterSelectCategory extends StatefulWidget {
  const AfterSelectCategory({super.key, required this.item});

  final CategoryItem item;

  @override
  State<AfterSelectCategory> createState() => _AfterSelectCategoryState();
}

class _AfterSelectCategoryState extends State<AfterSelectCategory> {
  String? _selectedOption;
  bool _showTextField = false;

  final FocusNode _focusNode = FocusNode();
  final quil.QuillController _controller = quil.QuillController.basic();

  final List<String> customOptions = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.item.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text(
              'Select an Option',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 15),
            DropdownButtonFormField<String>(
              value: _selectedOption,
              hint: const Text('Select a most suitable option'),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue;
                  _showTextField = true;
                });
              },
              items: customOptions.map((option) {
                return DropdownMenuItem<String>(
                    value: option, child: Text(option));
              }).toList(),
            ),
            const SizedBox(height: 15),
            if (_showTextField)
              Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Title [ character limit(100) ]',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: quil.QuillEditor(
                      controller: _controller,
                      focusNode: _focusNode,
                      autoFocus: true,
                      readOnly: false,
                      showCursor: true,
                      scrollable: true,
                      padding: EdgeInsets.zero,
                      expands: false,
                      scrollController: ScrollController(),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
