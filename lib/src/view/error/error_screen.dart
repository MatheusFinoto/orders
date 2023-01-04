import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({super.key});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 200,
                  child: Image.asset(
                    'assets/allthenticLogo.webp',
                    width: 200,
                    fit: BoxFit.fitWidth,
                  )),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Text(
                      'Opss..',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ))
                  ],
                ),
              ),
              SizedBox(
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Text(
                      'Você não pode abrir esse site através de um computador.\nAcesse o link Pelo seu Celular.',
                      style: Theme.of(context).textTheme.labelLarge,
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
