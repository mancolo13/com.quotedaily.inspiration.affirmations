import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class GroceryTab extends StatefulWidget {
  const GroceryTab({super.key});

  @override
  State<GroceryTab> createState() => _GroceryTabState();
}

class _GroceryTabState extends State<GroceryTab> {
  final List<Map<String, dynamic>> _items = [
    {'name': 'Avocados (3 pcs)', 'checked': false},
    {'name': 'Chicken Breast 500g', 'checked': true},
    {'name': 'Extra Virgin Olive Oil', 'checked': false},
    {'name': 'Fresh Spinach', 'checked': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shopping List'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _items.length,
        itemBuilder: (ctx, i) {
          final it = _items[i];
          final checked = it['checked'] as bool;
          return Card(
            margin: const EdgeInsets.only(bottom: 8),
            child: CheckboxListTile(
              title: Text(
                it['name'] as String,
                style: TextStyle(decoration: checked ? TextDecoration.lineThrough : null),
              ),
              value: checked,
              activeColor: AppTheme.primary,
              onChanged: (v) => setState(() => it['checked'] = v),
            ),
          );
        },
      ),
    );
  }
}
