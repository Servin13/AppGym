import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool isLoading = false;

  final txtUser = TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: const InputDecoration(
      border: OutlineInputBorder()
    ),
  );

  final pwdUser = TextFormField(
    keyboardType: TextInputType.text,
    obscureText: true,
    decoration: const InputDecoration(
      border: OutlineInputBorder()
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/fitness.png')
          )
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 50,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width*.9,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SignInButton(
                      Buttons.Email, 
                      onPressed: (){
                        setState(() {
                          isLoading = !isLoading;
                        });
                        Future.delayed(
                          new Duration(milliseconds: 5000),
                          (){
                            Navigator.pushNamed(context, "onboarding").then((value){
                              setState(() {
                                isLoading = !isLoading;
                              });
                            });
                          }
                        );
                      }
                    ),
                  ],
                ),
              )
            ),
            isLoading ? const Positioned(
              top: 260,
              child: CircularProgressIndicator(
                color: Colors.white,
              )
            )
            : Container()
          ],
        ),
      ),
    );
  }
}

