import 'package:flutter/material.dart';

enum Auth { SignIN, SignUP }

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  Auth _authMode = Auth.SignIN;

  void change() {
    if (_authMode == Auth.SignIN) {
      setState(() {
        _authMode = Auth.SignUP;
      });
    } else {
      setState(() {
        _authMode = Auth.SignIN;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Image.asset(
                          './assests/GettyImages-913326528-1200x540.jpg',
                          fit: BoxFit.cover,
                        ),
                        height: MediaQuery.of(context).size.height * 0.42,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                  Padding(
                    padding: _authMode == Auth.SignIN
                        ? const EdgeInsets.only(top: 255)
                        : const EdgeInsets.only(top: 191),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18)),
                      child: Container(
                        height: _authMode == Auth.SignIN
                            ? MediaQuery.of(context).size.height * 0.6
                            : MediaQuery.of(context).size.height * 0.7,
                        color: Colors.white,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 25),
                            child: _authMode == Auth.SignIN
                                ? Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Text('CHEAPKART',
                                                  style: TextStyle(
                                                      fontSize: 40,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      letterSpacing: 6)),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text('Welcome',
                                                  style: TextStyle(
                                                      fontSize: 35,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: 2)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Form(
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: 'E-Mail'),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: 'Password'),
                                              obscureText: true,
                                            ),
                                            SizedBox(height: 20),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: RaisedButton(
                                                    onPressed: () {},
                                                    child: Text('Sign In'),
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text('New User?'),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    change();
                                                  },
                                                  child: Text(
                                                    'SignUp',
                                                    style: TextStyle(
                                                        color: Colors.blue),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Text('CHEAPKART',
                                                  style: TextStyle(
                                                      fontSize: 40,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      letterSpacing: 6)),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text('Welcome',
                                                  style: TextStyle(
                                                      fontSize: 35,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: 2)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Form(
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: 'E-Mail'),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: 'Password'),
                                              obscureText: true,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText:
                                                      'Confirm Password'),
                                              obscureText: true,
                                            ),
                                            SizedBox(height: 20),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: RaisedButton(
                                                    onPressed: () {},
                                                    child: Text('Sign UP'),
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text('Have an Account?'),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    change();
                                                  },
                                                  child: Text(
                                                    'SignIn',
                                                    style: TextStyle(
                                                        color: Colors.blue),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
