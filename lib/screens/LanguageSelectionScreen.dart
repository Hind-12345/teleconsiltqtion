import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:teleconsultation_medicale/screens/splash/splash_screen.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.language, size: 80, color: Colors.grey[700]),
              const SizedBox(height: 20),
              Text(
                "Choisissez votre langue",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 40),
              LanguageButton(
                locale: Locale('fr'),
                label: 'Français',
                icon: Icons.flag,
              ),
              const SizedBox(height: 15),
              LanguageButton(
                locale: Locale('en'),
                label: 'English',
                icon: Icons.language,
              ),
              const SizedBox(height: 15),
              LanguageButton(
                locale: Locale('ar'),
                label: 'العربية',
                icon: Icons.translate,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageButton extends StatelessWidget {
  final Locale locale;
  final String label;
  final IconData icon;

  const LanguageButton({
    required this.locale,
    required this.label,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () async {
        await context.setLocale(locale);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const SplashScreen()),
        );
      },
      icon: Icon(icon, size: 20, color: Colors.blueAccent),
      label: Text(
        label,
        style: TextStyle(fontSize: 18, color: Colors.blueAccent),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.blueAccent),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
