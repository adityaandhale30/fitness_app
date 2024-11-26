import 'package:flutter/material.dart';

Future<void> main() async {
  // WidgetsFlutterBinding
  //     .ensureInitialized(); // Ensures Flutter binding is initialized before any async operations
  //     debugPrintRebuildDirtyWidgets = true;

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: t1(),
    );
  }
}

class t1 extends StatefulWidget {
  const t1({super.key});

  @override
  State<t1> createState() => _t1State();
}

class _t1State extends State<t1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.purple,
        body: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            const SizedBox(width: 30),
            const Text("GateWay +",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    shadows: [Shadow(color: Colors.white)])),
            SizedBox(height: 140),
            Container(
                alignment: Alignment.center,
                height: 350,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(0, 0),
                        blurStyle: BlurStyle.normal,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                      )
                    ],
                    border: BorderDirectional(top: BorderSide()),
                    //color: Color.fromRGBO(51, 51, 51, 1),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.729,
                      child: TextField(
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.email_outlined,
                            color: Colors.purple,
                          ),
                          labelText: "Email Id",
                          labelStyle: const TextStyle(
                              //color: Color.fromARGB(255, 0, 0, 0),
                              color: Colors.purple,
                              fontSize: 20),
                          hintText: "Enter Email.....",
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w300),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              // color: Color.fromARGB(255, 0, 0, 0),
                              color: Colors.purple,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                //  color: Color.fromARGB(255, 0, 0, 0),
                                color: Colors.purple,
                                width: 2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusColor: const Color.fromARGB(255, 0, 0, 0),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 86,
                      width: MediaQuery.of(context).size.width * 0.729,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextField(
                            style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0)),
                            decoration: InputDecoration(
                              suffixIconColor: Colors.purple,
                              labelText: "password",
                              labelStyle: const TextStyle(
                                  color: Colors.purple, fontSize: 20),
                              hintText: "Enter Your Password.....",
                              hintStyle: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w300),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.purple,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.purple, width: 2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusColor: const Color.fromARGB(255, 0, 0, 0),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          const Text("forgot password?")
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.486,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 0.5),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.purple,
                      ),
                      child: const Center(
                          child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Container();
                        }));
                      },
                      child: const Text.rich(TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "Sign up",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      )),
                    ),
                    const SizedBox(height: 10),
                  ],
                ))
          ]),
        ));
  }
}
