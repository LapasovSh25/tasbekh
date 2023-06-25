import 'package:flutter/material.dart';
import 'package:tasbekh/core/color_consts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  int countText = 0;
  String text = "سبحان الله"; // Subhan Allah
  bool active1 = true;
  bool active2 = false;
  bool active3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_image.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        text,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 35),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      count++;
                      if (active1) {
                        if (count == 33) {
                          if (countText != 2) {
                            countText++;
                          } else {
                            countText = 0;
                          }
                          count = 0;
                        }
                      } else if (active2) {
                        if (count == 99) {
                          if (countText != 2) {
                            countText++;
                          } else {
                            countText = 0;
                          }
                          count = 0;
                        }
                      } else {
                        if (count ~/ 33 == 0) {
                          if (countText != 2) {
                            countText++;
                          } else {
                            countText = 0;
                          }
                        }
                      }
                      changeText();
                      setState(() {});
                    },
                    child: CircleAvatar(
                      backgroundColor: ColorConst.kPrimaryColor,
                      radius: 110,
                      child: Text(
                        count.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      active1 = true;
                      active2 = false;
                      active3 = false;
                      count = 0;
                      setState(() {});
                    },
                    child: customButton("33", active1),
                  ),
                  InkWell(
                    onTap: () {
                      active1 = false;
                      active2 = true;
                      active3 = false;
                      count = 0;
                      setState(() {});
                    },
                    child: customButton("99", active2),
                  ),
                  InkWell(
                    onTap: () {
                      active1 = false;
                      active2 = false;
                      active3 = true;
                      count = 0;
                      setState(() {});
                    },
                    child: customButton("∞", active3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // customButton
  customButton(String text, bool active) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: active ? ColorConst.kPrimaryColor : Colors.greenAccent,
      child:
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 25)),
    );
  }

  // changeText
  changeText() {
    if (count ~/ 33 == 0) {
      text = "Subhanallah";
    } else if (count ~/ 33 == 1) {
      text = "Alhamdulillah";
    } else {
      text = "Allahu akbar";
    }
  }
}
