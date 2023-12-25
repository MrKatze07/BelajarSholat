import 'package:belajarsholat/page/bacaan_sholat.dart';
import 'package:belajarsholat/page/niat_sholat.dart';
import 'package:belajarsholat/page/dzikir_doa.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        title: const Text(
          'Belajar Sholat',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Card(
                elevation: 20,
                shadowColor: Colors.green,
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NiatSholat()));
                  },
                  child: const Column(
                    children: [
                      Image(
                          image: AssetImage("assets/images/ic_doa.jpg"),
                          height: 300,
                          width: 300),
                      SizedBox(height: 20),
                      Text(
                        "Niat Sholat",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Card(
                elevation: 20,
                shadowColor: Colors.green,
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BacaanSholat()));
                  },
                  child: const Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/ic_niat.jpg"),
                        height: 300,
                        width: 300,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Bacaan Sholat",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Card(
                elevation: 20,
                shadowColor: Colors.green,
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DzikirDoa()));
                  },
                  child: const Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/ic_dzikir.jpg"),
                        height: 300,
                        width: 300,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Dzikir Sholat",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
