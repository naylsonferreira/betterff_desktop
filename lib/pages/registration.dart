import 'package:betterff_desktop/componets/button.componet.dart';
import 'package:betterff_desktop/componets/form.componet.dart';
import 'package:betterff_desktop/componets/input.componet.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  getInputSize(double width) {
    if (width < 800.0) {
      return 100.0;
    } else {
      return 50.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: LayoutBuilder(builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: FormApp(
                width: 800.0,
                height: 385.0,
                children: [
                  InputApp(
                    icon: Icons.person,
                    textInputType: TextInputType.name,
                    placeholder: 'Digite seu nome',
                    minWidth: getInputSize(constraints.maxWidth),
                  ),
                  InputApp(
                    icon: Icons.shopify,
                    textInputType: TextInputType.name,
                    placeholder: 'Digite seu CPF',
                    minWidth: getInputSize(constraints.maxWidth),
                  ),
                  InputApp(
                    icon: Icons.phone,
                    textInputType: TextInputType.phone,
                    placeholder: 'Digite seu celular',
                    minWidth: getInputSize(constraints.maxWidth),
                  ),
                  InputApp(
                    icon: Icons.email,
                    textInputType: TextInputType.emailAddress,
                    placeholder: 'Digite seu email',
                    minWidth: getInputSize(constraints.maxWidth),
                  ),
                  InputApp(
                    icon: Icons.lock,
                    textInputType: TextInputType.visiblePassword,
                    placeholder: 'Digite sua senha',
                    minWidth: getInputSize(constraints.maxWidth),
                  ),
                  InputApp(
                    icon: Icons.lock,
                    textInputType: TextInputType.visiblePassword,
                    placeholder: 'Digite sua senha de confirmação',
                    minWidth: getInputSize(constraints.maxWidth),
                  ),
                  const SizedBox(height: 100),
                  SizedBox(
                    width: constraints.maxWidth,
                    height: 120,
                    child: Container(
                      color: Colors.white,
                      child: Flex(
                        direction: getInputSize(constraints.maxWidth) == 100.0
                            ? Axis.vertical
                            : Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        textDirection:
                            getInputSize(constraints.maxWidth) == 100.0
                                ? TextDirection.ltr
                                : TextDirection.rtl,
                        children: [
                          ButtonApp(
                            onPressed: () {},
                            text: 'Criar conta',
                            color: Colors.blue,
                            icon: Icons.login,
                            style: ButtonAppStyle.primary,
                          ),
                          ButtonApp(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/login');
                            },
                            text: "Já possui uma conta? Ir para o login",
                            color: Colors.white,
                            icon: Icons.person_add,
                            style: ButtonAppStyle.secondary,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
