import 'package:flutter/material.dart';
import 'package:smanirogo/components/gap.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  var _hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Center(
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                    key: GlobalKey<FormState>(),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: userCtrl,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.account_circle)),
                        ),
                        const Gap(),
                        TextFormField(
                          controller: passCtrl,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (_hidePassword) {
                                        _hidePassword = false;
                                      } else {
                                        _hidePassword = true;
                                      }
                                    });
                                  },
                                  child: Icon(_hidePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility))),
                          textInputAction: TextInputAction.send,
                          obscureText: _hidePassword,
                        ),
                        const Gap(),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("LOGIN")),
                        const Gap(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Lupa Password",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary),
                            ))
                      ],
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
