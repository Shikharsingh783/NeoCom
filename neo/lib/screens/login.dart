import 'package:flutter/material.dart';
import 'package:neo/main.dart';
import 'package:neo/screens/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromARGB(255, 0, 0, 0), Color.fromRGBO(75, 70, 196, 10)],
      )),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // child: Image.asset("images/lock3.png"),
              // Padding(
              //   padding: const EdgeInsets.only(top: 160),
              //   child: Container(
              //     width: 350,
              //     child: TextFormField(
              //       decoration: InputDecoration(
              //           focusedBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.transparent),
              //               borderRadius: BorderRadius.circular(20)),
              //           filled: true,
              //           fillColor: Color.fromRGBO(255, 255, 255, 0.2),
              //           labelText: "Email",
              //           labelStyle: TextStyle(color: Colors.white),
              //           contentPadding:
              //               EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              //           enabledBorder: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(20))),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: EdgeInsets.only(top: mq.height * .2),
                child: SizedBox(
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20)),
                        filled: true,
                        fillColor: Color.fromRGBO(255, 255, 255, 0.2),
                        labelText: "Phone number",
                        labelStyle: TextStyle(color: Colors.white),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: mq.height * .07),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  // decoration:
                  //     BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => home()));
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Padding(
                padding: EdgeInsets.only(left: mq.width * .33),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Transform.scale(
                          scale: 0.8, child: Image.asset("images/g.png")),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Transform.scale(
                          scale: 0.7, child: Image.asset("images/apple.png")),
                    ),
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

// import 'package:flutter/material.dart';

// class Login extends StatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: Padding(
//         padding: const EdgeInsets.only(left: 90, top: 300),
//         child: Stack(children: [
//           Container(
//             height: 80,
//             width: 190,
//             decoration: BoxDecoration(
//                 color: Colors.white, borderRadius: BorderRadius.circular(40)),
//           ),
//           Container(
//             height: 80,
//             width: 80,
//             decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 0, 0, 0),
//                 borderRadius: BorderRadius.circular(40)),
//           )
//         ]),
//       ),
//     );
//   }
// }
