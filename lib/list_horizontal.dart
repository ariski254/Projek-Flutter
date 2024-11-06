import 'package:flutter/material.dart';

class List_view_horizontal extends StatelessWidget {
  const List_view_horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Horizontal List",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            _buildCardItem(color: Colors.blue),
            _buildCardItem(color: Colors.red),
            _buildCardItem(color: Colors.yellow),
            _buildCardItem(color: Colors.green),
            _buildCardItem(color: Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget _buildCardItem({
    required Color color,
  }) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    );
  }
}
