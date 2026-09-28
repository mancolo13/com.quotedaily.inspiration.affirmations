import 'dart:math';
import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class QuoteTab extends StatefulWidget {
  const QuoteTab({super.key});

  @override
  State<QuoteTab> createState() => _QuoteTabState();
}

class _QuoteTabState extends State<QuoteTab> {
  final List<Map<String, String>> _quotes = [
    {"q": "The only way to do great work is to love what you do.", "a": "Steve Jobs"},
    {"q": "Do what you can, with what you have, where you are.", "a": "Theodore Roosevelt"},
    {"q": "Act as if what you do makes a difference. It does.", "a": "William James"},
    {"q": "Success is not final, failure is not fatal: it is the courage to continue that counts.", "a": "Winston Churchill"},
  ];

  int _idx = 0;

  void _next() {
    setState(() => _idx = Random().nextInt(_quotes.length));
  }

  @override
  Widget build(BuildContext context) {
    final item = _quotes[_idx];
    return Scaffold(
      appBar: AppBar(title: const Text('QuoteDaily Inspiration'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      const Icon(Icons.format_quote_rounded, size: 48, color: AppTheme.primary),
                      const SizedBox(height: 16),
                      Text('"${item['q']}"', style: const TextStyle(fontSize: 22, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                      const SizedBox(height: 16),
                      Text('— ${item['a']}', style: const TextStyle(fontSize: 16, color: AppTheme.secondary)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 36),
              ElevatedButton.icon(
                onPressed: _next,
                icon: const Icon(Icons.refresh),
                label: const Text('Inspire Me Again'),
                style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primary, foregroundColor: Colors.black, padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
