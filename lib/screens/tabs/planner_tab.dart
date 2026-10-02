import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class PlannerTab extends StatelessWidget {
  const PlannerTab({super.key});

  @override
  Widget build(BuildContext context) {
    final days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];

    return Scaffold(
      appBar: AppBar(title: const Text('Weekly Meal Plan'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: days.length,
        itemBuilder: (ctx, i) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.restaurant_menu_rounded, color: AppTheme.primary),
              title: Text(days[i], style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Lunch: Grilled Chicken Salad • Dinner: Salmon Bowl'),
            ),
          );
        },
      ),
    );
  }
}
