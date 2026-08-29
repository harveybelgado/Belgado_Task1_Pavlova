import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova ({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belgado_Activity 1')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/pavlova.jpg', fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Kiwi Pavlova',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),
                const Text(
                  'A delicious dessert made with layers of whipped cream, and fresh kiwis.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height:12),
                Center(child: buildRatingRow()),
                const SizedBox(height: 24),
                buildRowTabs(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRatingRow() => Row (
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        children: List.generate(
          5,
          (index) => Icon(
            index < 3 ? Icons.star : Icons.star_border,
            color: Colors.yellow,
            size: 20,
          ),
        ),
      ),
      const SizedBox(width: 8),
      const Text( 
        '140 Reviews',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      )
    ]
  );

  Widget buildIcontab(IconData icon, String label, String value) => Column(
    children: [
      Icon(icon, color: Colors.yellow, size: 30),
      const SizedBox(height: 4),
      Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 4),
      Text(value, style: const TextStyle(fontSize: 13, color: Colors.black)),
    ],
  );

  Widget buildRowTabs() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildIcontab(Icons.timer_outlined, 'Prep', '30 min'),
      buildIcontab(Icons.timer_outlined, 'Prep', '30 min'),
      buildIcontab(Icons.timer_outlined, 'Prep', '30 min'),
    ],
  );
}