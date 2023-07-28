import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quil;
import 'package:lanka_derana/presentation/widgets/posting_ad_pageviews/rich_text_area.dart';

import '../../../data/models/category.dart';
import 'image_input.dart';

class BasicInfoForm extends StatefulWidget {
  const BasicInfoForm({super.key, required this.item});

  final Category item;

  @override
  State<StatefulWidget> createState() {
    return _BasicInfoFormState();
  }
}

class _BasicInfoFormState extends State<BasicInfoForm> {
  String? _selectedOption;
  String? _selectedAdType;
  String? _selectedPriceType;
  String? _selectedCurrency;
  String? _selectedItemCondition;
  String? _selectedItemWarranty;

  File? _selectedImage;

  final List<String> customOptions = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6'
  ];

  final List<String> _adTypes = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    // Add more options as needed
  ];

  final List<String> _priceTypes = [
    'Option A',
    'Option B',
    'Option C',
    // Add more options as needed
  ];

  final List<String> _currencies = [
    '\₨', // Use '\₨' to display ₹
    '\$', // Use '\$' to display $
    '€', // Add more currency options as needed
  ];

  final List<String> _itemConditions = [
    'Option A',
    'Option B',
    'Option C',
    // Add more options as needed
  ];

  final List<String> _itemWarranties = [
    'Option A',
    'Option B',
    'Option C',
    // Add more options as needed
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
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            const ListTile(
              leading: Icon(Icons.info_sharp),
              title: Text('Basic Information'),
            ),
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
                });
              },
              items: customOptions.map((option) {
                return DropdownMenuItem<String>(
                    value: option, child: Text(option));
              }).toList(),
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Title *',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Ad Description',
              style: TextStyle(fontSize: 16),
            ),
            const RichTextArea(),
            const SizedBox(height: 15),
            DropdownButtonFormField<String>(
              value: _selectedAdType,
              hint: const Text('Type of Ad *'),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedAdType = newValue!;
                });
              },
              items: _adTypes.map((option) {
                return DropdownMenuItem<String>(
                    value: option, child: Text(option));
              }).toList(),
            ),
            const SizedBox(height: 15),
            DropdownButtonFormField<String>(
              value: _selectedPriceType,
              hint: const Text('Price Type *'),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedPriceType = newValue!;
                });
              },
              items: _priceTypes.map((option) {
                return DropdownMenuItem<String>(
                    value: option, child: Text(option));
              }).toList(),
            ),
            const SizedBox(height: 15),
            DropdownButtonFormField<String>(
              value: _selectedCurrency,
              hint: const Text('Currency *'),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCurrency = newValue!;
                });
              },
              items: _currencies.map((option) {
                return DropdownMenuItem<String>(
                    value: option, child: Text(option));
              }).toList(),
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Price *',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            DropdownButtonFormField<String>(
              value: _selectedItemCondition,
              hint: const Text('Item Condition'),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItemCondition = newValue!;
                });
              },
              items: _itemConditions.map((option) {
                return DropdownMenuItem<String>(
                    value: option, child: Text(option));
              }).toList(),
            ),
            const SizedBox(height: 15),
            DropdownButtonFormField<String>(
              value: _selectedItemWarranty,
              hint: const Text('Item Warranty'),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItemWarranty = newValue!;
                });
              },
              items: _itemWarranties.map((option) {
                return DropdownMenuItem<String>(
                    value: option, child: Text(option));
              }).toList(),
            ),
            const SizedBox(height: 15),
            ImageInput(
              onPickImage: (File image) {
                _selectedImage = image;
              },
            ),
          ],
        ),
      ),
    );
  }
}
