import 'package:flutter/material.dart';
import 'list_horizontal.dart';
import 'list_vertical.dart';
import 'grid_view.dart';

class Page_view extends StatelessWidget {
  const Page_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "List View Page",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                "Select List View",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            const SizedBox(height: 30),
            _buildOptionButton(
              context,
              title: "List View Vertical",
              color: Colors.blueAccent,
              icon: Icons.view_headline,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => List_view_Vertical()),
                );
              },
            ),
            const SizedBox(height: 15),
            _buildOptionButton(
              context,
              title: "List View Horizontal",
              color: const Color(0xFF1976D2),
              icon: Icons.view_column,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => List_view_horizontal()),
                );
              },
            ),
            const SizedBox(height: 15),
            _buildOptionButton(
              context,
              title: "Grid View",
              color: const Color(0xFF0D47A1),
              icon: Icons.grid_view,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Grid_View()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton(
    BuildContext context, {
    required String title,
    required Color color,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white),
      label: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: color.withOpacity(0.4),
        elevation: 6,
      ),
    );
  }
}
