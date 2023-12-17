import 'package:flutter/material.dart';

class VideoHero extends StatelessWidget {
  const VideoHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 200.0,
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: const [
            Text(
              'France Data',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Atlas des données de France',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                letterSpacing: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
