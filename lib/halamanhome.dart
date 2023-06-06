import 'package:flutter/material.dart';
import 'package:utsmobapps/main.dart';
import 'halamanmer.dart';
import 'halamanprj.dart';
import 'halamantij.dart';

class HalamanHome extends StatelessWidget {
  const HalamanHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> judulrute = <String>["PRJ", "MER", "TIJ"];
    final List<String> destinasi = <String>[
      "Purabaya - Rajawali\nRajawali - Purabaya",
      "Kenpark - Gunung Anyar\nGunung Anyar - Kenpark",
      "UNESA - Joyoboyo\nJoyoboyo - UNESA"
    ];
    final List<String> jaraktempuh = <String>["16 km", "16 km", "12 km"];
    final List<String> halte = <String>["20 Halte", '24 Halte', "18 Halte"];
    final List<String> harga = <String>[
      "Rp. 7.000.00",
      "Rp. 7.000.00",
      "Rp. 7.000.00"
    ];
    final List<Widget> halaman = <Widget>[
      const HalamanPRJ(),
      const HalamanMER(),
      const HalamanTIJ(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("RUTE")),
        backgroundColor: const Color.fromRGBO(121, 0, 0, 1.0),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ),
              );
            },
            child: const Text("LOGOUT"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 26, top: 20),
              child: Text(
                "Where We Go?",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28, bottom: 10),
              child: Text(
                "Pilih Rute Suroboyo Bus yang Dituju",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.only(left: 20, right: 20),
              itemCount: judulrute.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 20,
              ),
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => halaman[index],
                      ),
                    );
                  },
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              child: Text(
                                judulrute[index],
                                style: const TextStyle(
                                  color: Color.fromRGBO(121, 0, 0, 1.0),
                                  fontSize: 60.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  Text(
                                    destinasi[index],
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 17, top: 13),
                            child: Row(
                              children: [
                                Text(
                                  jaraktempuh[index],
                                  style: const TextStyle(
                                    color: Color.fromRGBO(121, 0, 0, 1.0),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 130),
                                  child: Text(
                                    halte[index],
                                    style: const TextStyle(
                                      color: Color.fromRGBO(121, 0, 0, 1.0),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110),
                                  child: Text(
                                    harga[index],
                                    style: const TextStyle(
                                      color: Color.fromRGBO(121, 0, 0, 1.0),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
