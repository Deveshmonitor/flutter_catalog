import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_catalog/utils/routes.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRotes);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        hintText: "Enter Your Username",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "UserName Required";
                        }

                        return null;
                      },
                      onChanged: (value) {
                        name = value;

                        setState(() {});
                        //this setState change the UI and callback the build method
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Your Password",
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Password is required";
                        } else if (value!.length < 6) {
                          return "Password length should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Color.fromARGB(255, 185, 188, 204),
                                )
                              : Text(
                                  "login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                        ),
                      ),
                    )

                    // ElevatedButton(
                    //   onPressed: () {
                    //     // Add your login logic here
                    //     print('Username: ${usernameController.text}');
                    //     print('Password: ${passwordController.text}');
                    //     Navigator.pushNamed(context, MyRoutes.homeRotes);
                    //   },
                    //   child: const Text(
                    //     'Login',
                    //     style: TextStyle(
                    //         fontSize: 18,
                    //         fontWeight: FontWeight.w500,
                    //         color: Colors.white),
                    //   ),
                    //   style: TextButton.styleFrom(
                    //       minimumSize: Size(200, 50),
                    //       backgroundColor: Color.fromARGB(255, 107, 81, 211)),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
