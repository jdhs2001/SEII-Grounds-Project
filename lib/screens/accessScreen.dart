import 'package:flutter/material.dart';
import 'signup.dart';

class AccessPage extends StatefulWidget {
  const AccessPage({Key? key}) : super(key: key);

  @override
  State<AccessPage> createState() => _AccessPageState();
}

class _AccessPageState extends State<AccessPage> {
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: Card(
            elevation: 8,
            child: Container(
              padding: const EdgeInsets.all(32.0),
              constraints: const BoxConstraints(maxWidth: 350),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Image.asset('assets/images/letuLogo.jpeg'),
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/images/letuLogo.jpeg'),
                    ),
                    _gap(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "LETU Groundskeeping",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Fill in your information to continue.",
                        style: Theme.of(context).textTheme.caption,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    _gap(),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please the Access Code';
                        }

                        if (value.length != 7) {
                          return 'Wrong Access Code';
                        }
                        return null;
                      },
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                          labelText: 'Access Code',
                          hintText: 'Enter the Access Code',
                          prefixIcon: const Icon(Icons.lock_outline_rounded),
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(_isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          )),
                    ),
                    _gap(),
                    // CheckboxListTile(
                    //   value: _rememberMe,
                    //   onChanged: (value) {
                    //     if (value == null) return;
                    //     setState(() {
                    //       _rememberMe = value;
                    //     });
                    //   },
                    //   title: const Text('Remember me'),
                    //   controlAffinity: ListTileControlAffinity.leading,
                    //   dense: true,
                    //   contentPadding: const EdgeInsets.all(0),
                    // ),
                   // _gap(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Enter',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return SignInPage1();
                            },),);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
