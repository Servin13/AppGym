import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              alignment: Alignment.center,
              child: Text(
                '!!!!!Si sigues estas rutinas, te pondrás bien mamado!!!!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/resultados.png',
              width: 500,
              height: 500,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}



