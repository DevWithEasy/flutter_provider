import 'package:flutter/material.dart';
import 'package:learn_provider/app/provider/theme_changer_provider.dart';
import 'package:provider/provider.dart';

class ThemeChangerScreen extends StatelessWidget {
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Change'),
      ),
      body: Column(
        children: [
          RadioListTile(
              title: const Text('Light Theme'),
              value: ThemeMode.light,
              groupValue: themeProvider.themeMode,
              onChanged: themeProvider.setTheme
          ),
          RadioListTile(
              title: const Text('Dark Theme'),
              value: ThemeMode.dark,
              groupValue: themeProvider.themeMode,
              onChanged: themeProvider.setTheme
          ),
          RadioListTile(
              title: const Text('Light Theme'),
              value: ThemeMode.system,
              groupValue: themeProvider.themeMode,
              onChanged: themeProvider.setTheme
          ),
        ],
      ),
    );
  }
}
