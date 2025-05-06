import 'package:flutter/material.dart';

class PatientProfileScreen extends StatelessWidget {
  const PatientProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF8F7),
      appBar: AppBar(
        title: const Text('Profil Patient'),
        backgroundColor: const Color(0xFF2AB3C6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            const CircleAvatar(radius: 50, backgroundColor: Colors.grey, child: Icon(Icons.person, size: 50)),
            const SizedBox(height: 30),
            _buildTextField('Nom', Icons.person),
            _buildTextField('Email', Icons.email),
            _buildTextField('Téléphone', Icons.phone),
            _buildTextField('Groupe sanguin', Icons.bloodtype),
            _buildTextField('Antécédents médicaux', Icons.assignment),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2AB3C6),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Enregistrer', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}