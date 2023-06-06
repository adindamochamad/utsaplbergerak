import 'package:flutter/material.dart';
import 'package:utsmobapps/halamanhome.dart';

class prjreceipts1 extends StatelessWidget {
  const prjreceipts1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TIKET"),
          backgroundColor: const Color.fromRGBO(121, 0, 0, 1.0),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HalamanHome()));
          },
          backgroundColor: const Color.fromRGBO(121, 0, 0, 1.0),
          child: const Icon(Icons.home),
        ),
        body: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 22, top: 20),
                child: Text(
                  "Tiket Saya",
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromRGBO(121, 0, 0, 1.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 430,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(14.0)),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Start",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 19),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Purabaya",
                          style: TextStyle(
                            color: Color.fromRGBO(121, 0, 0, 1.0),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Finish",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 19),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Rajawali",
                          style: TextStyle(
                            color: Color.fromRGBO(121, 0, 0, 1.0),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 40),
                        child: Text(
                          "Pemberangkatan",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 19, top: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Halte Siwalankerto",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 3),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Senin, Juni 2023",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(121, 0, 0, 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "G X W Y Y 2 0 0",
                            style: TextStyle(color: Colors.white, fontSize: 55),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
