import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/info_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100], // Light background for better contrast
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Mic button placeholder
            SizedBox(height: 20),
            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for crops, weather, tasks...',
                hintStyle: GoogleFonts.roboto(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                //suffixIcon: Icon(Icons.mic, color: Colors.grey),
                filled: true,
                fillColor: Colors.white, // White background for the search bar
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 30),
            // Information Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InfoCard(
                  icon: Icons.opacity,
                  label: 'Water Level',
                  value: '75%',
                  backgroundColor: Colors.white, // White background for better contrast
                ),
                InfoCard(
                  icon: Icons.grass,
                  label: 'Soil Health',
                  value: 'Good',
                  backgroundColor: Colors.white,
                ),
                InfoCard(
                  icon: Icons.wb_sunny,
                  label: 'Weather',
                  value: 'Sunny',
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
