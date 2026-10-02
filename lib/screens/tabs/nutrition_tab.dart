import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class NutritionTab extends StatelessWidget {
  const NutritionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Macro Targets'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: const [
                  Text('2,100 kcal', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                  Text('Target Daily Intake', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  ListTile(title: Text('Protein'), trailing: Text('140g / 150g', style: TextStyle(fontWeight: FontWeight.bold))),
                  Divider(),
                  ListTile(title: Text('Carbs'), trailing: Text('210g / 220g', style: TextStyle(fontWeight: FontWeight.bold))),
                  Divider(),
                  ListTile(title: Text('Healthy Fats'), trailing: Text('65g / 70g', style: TextStyle(fontWeight: FontWeight.bold))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
