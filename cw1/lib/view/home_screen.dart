import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cw1/view/new_screen.dart';

class HomePsage extends StatefulWidget {
  const HomePsage({Key? key}) : super(key: key);

  @override
  State<HomePsage> createState() => _HomePsageState();
}

class _HomePsageState extends State<HomePsage> {
  var nameController = TextEditingController();
  var myColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Text(
              'أختر اللون المفضل لديك',
              style:
                  GoogleFonts.mada(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    myColor = Colors.red;
                  });
                },
                child: const Icon(
                  Icons.circle,
                  color: Colors.red,
                  size: 60,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    myColor = Colors.blue;
                  });
                },
                child: const Icon(
                  Icons.circle,
                  color: Colors.blue,
                  size: 60,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    myColor = Colors.green;
                  });
                },
                child: const Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 60,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    myColor = Colors.orange;
                  });
                },
                child: const Icon(
                  Icons.circle,
                  color: Colors.orange,
                  size: 60,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    myColor = Colors.yellow;
                  });
                },
                child: const Icon(
                  Icons.circle,
                  color: Colors.yellow,
                  size: 60,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Enter a Text',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyWidget(
                  name: nameController.text,
                  myColor2: myColor,
                );
              }));
            },
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.only(
                        left: 70, right: 70, top: 10, bottom: 10)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.green)))),
            child: Text(
              'حفظ',
              style: GoogleFonts.mada(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
