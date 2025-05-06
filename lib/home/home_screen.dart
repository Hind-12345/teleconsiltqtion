import 'package:flutter/material.dart';
import 'package:teleconsultation_medicale/screens/doctor_profile/doctor_profile_screen.dart';
import 'package:teleconsultation_medicale/screens/patient_profile/patient_profile_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF8F7),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.local_hospital, size: 80, color: Color(0xFF0A6D92)),
              const SizedBox(height: 16),
              const Text(
                'Bienvenue',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF0A6D92)),
              ),
              const SizedBox(height: 8),
              const Text(
                'Choisissez un profil pour continuer',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PatientProfileScreen()));
                },
                icon: const Icon(Icons.person),
                label: const Text('Patient'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2AB3C6),
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorProfileScreen()));
                },
                icon: const Icon(Icons.medical_services),
                label: const Text('Médecin'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0A6D92),
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}