import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 75, 229, 240),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(height: 15),

          const SizedBox(height: 70),
          Container(
            width: double.infinity, // Occupe toute la largeur du parent
            height: 380, // Taille fixe de l'image
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/chat_doctor.png'),
                fit: BoxFit.cover, // Couvre tout l'espace sans distorsion
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ), // Un peu d'espace entre l'image et le texte
          // Texte stylisé
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Discutez avec un médecin".tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Prenez rendez-vous ou lancez un appel vidéo à tout moment."
                      .tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
