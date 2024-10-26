import 'package:concerns_implementation/src/presentation/auth/widgets/content.dart';
import 'package:concerns_implementation/src/presentation/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final userController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: const SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 40.0, left: 20.0),
                child: Column(
                  children: [
                    Text(
                      'TEKTON',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
          bottom: -50.0,
          left: 0.0,
          right: 0.0,
          child: Column(
            children: [
              Content(
                children: [
                  CustomTextFormField(
                    controller: userController,
                    hint: 'Usuario',
                    icon: const Icon( Icons.person ),
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    controller: passwordController,
                    hint: 'Contraseña',
                    isPassword: true,
                    icon: const Icon( Icons.shield_outlined ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight( 55 ),
                    ),
                    onPressed: (){}, 
                    child: const Text('Registrar'),
                  ),
                ],
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}