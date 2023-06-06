import 'package:flutter/material.dart';
import 'package:utsmobapps/prjreceipts1.dart';
import 'package:utsmobapps/prjreceipts2.dart';

class HalamanPRJ extends StatefulWidget {
  const HalamanPRJ({super.key});

  @override
  State<HalamanPRJ> createState() => _HalamanPRJState();
}

class _HalamanPRJState extends State<HalamanPRJ> {
  final List<String> judulrute = <String>[
    "Purabaya to Rajawali",
    "Rajawali to Purabaya",
  ];
  final List<String> jamdropdown = <String>[
    "06:00 WIB",
    "09:00 WIB",
    "12:00 WIB",
    "15:00 WIB",
    "18:00 WIB",
    "22:00 WIB",
  ];
  final String hari = "Senin, 1 Juni 2023";
  String nilaidropdown = "06:00 WIB";
  final List<Widget> halaman = <Widget>[
    const prjreceipts1(),
    const prjreceipts2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rute Purabaya Rajawali"),
        backgroundColor: const Color.fromRGBO(121, 0, 0, 1.0),
      ),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 25, top: 20),
              child: Text(
                "PRJ",
                style: TextStyle(
                  fontSize: 70,
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28, bottom: 10),
              child: Text(
                "Rute PRJ tersedia 6 jam pemberangkatan",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(20.0),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 120,
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
                            padding: const EdgeInsets.only(left: 15, top: 13),
                            child: Text(
                              judulrute[index],
                              style: const TextStyle(
                                color: Color.fromRGBO(121, 0, 0, 1.0),
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, top: 4),
                            child: Column(
                              children: [
                                Text(
                                  hari,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            children: [
                              const Text(
                                "Pilih Jam Pemberangkatan",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: DropdownButton<String>(
                                    value: nilaidropdown,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        nilaidropdown = newValue!;
                                      });
                                    },
                                    items: jamdropdown
                                        .map<DropdownMenuItem<String>>(
                                      (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                halaman[index]));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(121, 0, 0, 1.0),
                                  ),
                                  child: const Text("PESAN"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 15),
              itemCount: judulrute.length,
            ),
          ),
        ],
      ),
    );
  }
}
