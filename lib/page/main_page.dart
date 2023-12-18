import 'package:belajarsholat/page/bacaan_sholat_page.dart';
import 'package:belajarsholat/page/niat_sholat_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
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
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Niat Sholat",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.all(10),
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
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Bacaan Sholat",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
