import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class RecipesTab extends StatelessWidget {
  const RecipesTab({super.key});

  final List<Map<String, String>> _recipes = const [
    {"name": "Mediterranean Avocado Toast", "time": "8 mins", "cal": "310 kcal"},
    {"name": "Garlic Butter Lemon Salmon", "time": "15 mins", "cal": "480 kcal"},
    {"name": "Quinoa Power Veggie Bowl", "time": "12 mins", "cal": "390 kcal"},
    {"name": "Creamy Tuscan Chicken Skillet", "time": "18 mins", "cal": "520 kcal"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RecipeBox 15m Meals'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _recipes.length,
        itemBuilder: (ctx, i) {
          final r = _recipes[i];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.restaurant_menu, color: AppTheme.primary),
              title: Text(r['name']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('${r['time']} • ${r['cal']}'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 14),
            ),
          );
        },
      ),
    );
  }
}
