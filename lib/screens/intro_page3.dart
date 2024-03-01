import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key});

  String rutinaPierna() {
    return '''
    Rutina de pierna:
    1. Sentadillas: 4 series x 12 repeticiones
    2. Peso muerto rumano: 4 series x 15 repeticiones
    3. Bulgaras: 4 series x 15 repeticiones
    ''';
  }

  String rutinaGluteo() {
    return '''
    Rutina de glúteo:
    1. Sentadillas sumo: 4 series x 15 repeticiones
    2. Desplantes: 4 series x 15 repeticiones
    3. Hip Thrusts: 4 series x 15 repeticiones
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
            Text('Rutina Parte Inferior'),
            SizedBox(width: 10),
            Lottie.network(
              'https://lottie.host/627379f8-61f3-4a40-a53f-3eada6f4380f/nEKe1J9saR.json',
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
                'Rutina de Pierna y Glúteo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              _buildRutinaCard(rutinaPierna()),
              SizedBox(height: 20),
              _buildRutinaCard(rutinaGluteo()),
            ],
          ),
        ),
      ),
    );
  }
}
