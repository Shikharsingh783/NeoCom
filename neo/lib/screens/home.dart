import 'package:flutter/material.dart';

import '../main.dart';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromRGBO(75, 70, 196, 10),
            ])),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.transparent,
            scrolledUnderElevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 300),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 60.0),
                  child: Text(
                    "Write to your\nfriends",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 43,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: SizedBox(
                          width: 290,
                          child: TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(255, 255, 255, 0.1),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                labelText: "Search",
                                labelStyle: const TextStyle(
                                    color: Colors.white, fontSize: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100))),
                          ),
                        ),
                      ),
                    ),
                    Stack(alignment: Alignment.center, children: [
                      Container(
                        height: 47,
                        width: 47,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.1),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      SizedBox(width: 63),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      )
                    ]),
                  ],
                ),
                SizedBox(
                  height: 27,
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: ListWheelScrollView(
                      physics: const FixedExtentScrollPhysics(),
                      perspective: 0.003,
                      diameterRatio: 2.3,
                      itemExtent: 190,
                      squeeze: 0.97,
                      children: [
                        Stack(children: [
                          //container 1 starts
                          GestureDetector(
                            onTap: () => showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              isDismissible: false,
                              context: context,
                              builder: (context) => buildsheet(),
                            ),
                            child: Container(
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(35)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0, top: 18),
                            child: Stack(children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("images/user.jpeg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Positioned(
                                  bottom: 2,
                                  right: 3,
                                  child: Container(
                                    height: 11.5,
                                    width: 11.5,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(75, 70, 196, 10),
                                        shape: BoxShape.circle),
                                  )),
                            ]),
                          ),
                          Container(),
                          const Padding(
                            padding: EdgeInsets.only(left: 18.0, top: 85),
                            child: Text(
                              "Akshat Jha",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w700),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 18.0, top: 140),
                            child: Text(
                              "Thank you, this is approved",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 290.0, top: 95),
                            child: Text(
                              "13:57",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 300, top: 140),
                            child: Icon(
                              Icons.check,
                              color: Color.fromRGBO(75, 70, 196, 10),
                              size: 25,
                            ),
                          )
                        ]),
                        //container 1 ends
                        Stack(children: [
                          //container 1 starts
                          Container(
                            height: 190,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0, top: 18),
                            child: Stack(children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("images/user2.jpeg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Positioned(
                                  bottom: 2,
                                  right: 3,
                                  child: Container(
                                    height: 11.5,
                                    width: 11.5,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        shape: BoxShape.circle),
                                  )),
                            ]),
                          ),
                          Container(),
                          const Padding(
                            padding: EdgeInsets.only(left: 18.0, top: 85),
                            child: Text(
                              "Aakarsh",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w700),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 18.0, top: 140),
                            child: Text(
                              "Hey,this task is already done ",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 290.0, top: 95),
                            child: Text(
                              "13:57",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 300.0, top: 135),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(75, 70, 196, 10),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          )
                        ]),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35)),
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35)),
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35)),
                        )
                      ],
                    ),
                  ),
                ),
                // Container(
                //   height: 150,
                //   width: 370,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(35)),
                // )
              ],
            ),
          ),
        ));
  }

  Widget buildsheet() => Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 5,
                width: 80,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(206, 206, 206, 1)),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: mq.height * 0.021, left: mq.width * .07),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("images/user.jpeg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Akshat Jha",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.more_horiz,
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: mq.height * 0.7, left: mq.width * .065),
              child: Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.attachment_outlined,
                      size: 32,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 33,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 190,
                      // color: Color.fromRGBO(242, 242, 242, 1),
                      child: TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                            hintText: "Mesaage",
                            filled: true,
                            fillColor: Color.fromRGBO(242, 242, 242, 1),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 3),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(40))),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.send,
                      color: Color.fromRGBO(75, 70, 196, 1),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
