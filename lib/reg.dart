import 'package:flutter/material.dart';
// import 'package:flutter_app/home_page.dart';

void main() {
  runApp(const Register());
}

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pasa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFFF5F5F5),
          appBar: AppBar(
            title: const Text('Register Page'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Register',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        style: const TextStyle(color: Colors.purple),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Colors
                                .purple, // Set the desired color for the label
                          ),
                          hintText: 'Enter your username',
                          prefixIcon: Icon(
                            Icons.abc,
                            color: Colors.purple,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        onChanged: (String constValue) {},
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.purple),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors
                                .purple, // Set the desired color for the label
                          ),
                          hintText: 'Enter email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.purple,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        onChanged: (String Value) {},
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.purple),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors
                                .purple, // Set the desired color for the label
                          ),
                          hintText: 'Enter password',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.purple,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        onChanged: (String constValue) {},
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.purple),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                            color: Colors
                                .purple, // Set the desired color for the label
                          ),
                          hintText: 'Confirm password',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.purple,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        onChanged: (String Value) {},
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        style: TextStyle(color: Colors.purple),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            color: Colors
                                .purple, // Set the desired color for the label
                          ),
                          hintText: 'Enter your phone number',
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.purple,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        onChanged: (String Value) {},
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: MaterialButton(
                          minWidth: double.maxFinite,
                          height: 50,
                          onPressed: () {},
                          child: const Text('Register'),
                          color: Colors.purple,
                          textColor: Colors.white,
                        )),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
