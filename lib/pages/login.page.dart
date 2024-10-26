import 'package:betterff_desktop/componets/button.componet.dart';
import 'package:betterff_desktop/componets/form.componet.dart';
import 'package:betterff_desktop/componets/input.componet.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: FormApp(
            children: [
              const InputApp(
                icon: Icons.email,
                textInputType: TextInputType.emailAddress,
                placeholder: 'Digite seu email',
              ),
              const InputApp(
                icon: Icons.lock,
                textInputType: TextInputType.visiblePassword,
                placeholder: 'Digite sua senha',
              ),
              ButtonApp(
                onPressed: () {},
                text: 'Entrar',
                color: Colors.blue,
                icon: Icons.login,
                style: ButtonAppStyle.primary,
              ),
              ButtonApp(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/registration');
                },
                text: "Cadastre-se",
                color: Colors.white,
                icon: Icons.person_add,
                style: ButtonAppStyle.secondary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
