import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF1F1F1),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),

          // Carte informative
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFE3F2FD),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xFF90CAF9), width: 1),
            ),
            child: Column(
              children: [
                Text(
                  "Suivez votre santé".tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1565C0),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Accédez à vos dossiers médicaux, prescriptions et historiques en quelques clics."
                      .tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            ),
          ),

          const Spacer(),

          // GIF animé
          Center(child: Image.asset('assets/images/your_gif.gif', height: 390)),

          const SizedBox(height: 160),
        ],
      ),
    );
  }
}
