import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key});

  String rutinaPecho() {
    return '''
    Rutina de pecho:
    1. Press de banca: 4 series x 10 repeticiones
    2. Flexiones de brazos: 3 series x 15 repeticiones
    3. Pullover con mancuerna: 3 series x 12 repeticiones
    ''';
  }

  String rutinaBiceps() {
    return '''
    Rutina de bíceps:
    1. Curl de bíceps con barra: 4 series x 10 repeticiones
    2. Curl de martillo: 3 series x 12 repeticiones
    3. Curl concentrado: 3 series x 10 repeticiones
    ''';
  }

  Widget _buildRutinaCard(String rutina) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(width: 2, color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text(
          rutina,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Rutina Parte Superior'),
            SizedBox(width: 10),
            Lottie.network(
              'https://lottie.host/ff804e2c-703f-45f1-b2ab-5141d42afa38/7yzaL5TuTC.json',
              height: 80,
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red[900],
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Rutina de Pecho y Bíceps',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              _buildRutinaCard(rutinaPecho()),
              SizedBox(height: 20),
              _buildRutinaCard(rutinaBiceps()),
            ],
          ),
        ),
      ),
    );
  }
}
















