import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key});

  String rutinaEspalda() {
    return '''
    Rutina de espalda:
    1. Dominadas: 4 series x 12 repeticiones
    2. Jalón al pecho con barra: 4 series x 15 repeticiones
    3. Remo con barra: 4 series x 12 repeticiones
    ''';
  }

  String rutinaTriceps() {
    return '''
    Rutina de tríceps:
    1. Fondos en paralelas: 4 series x 12 repeticiones
    2. Press francés con barra: 4 series x 12 repeticiones
    3. Extensiones de tríceps con mancuerna: 4 series x 12 repeticiones
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
              'https://lottie.host/4b44d061-7dc7-462d-b44a-f600d6654a36/vjmw5dYJAl.json',
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
                'Rutina de Espalda y Triceps',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              _buildRutinaCard(rutinaEspalda()),
              SizedBox(height: 20),
              _buildRutinaCard(rutinaTriceps()),
            ],
          ),
        ),
      ),
    );
  }
}
