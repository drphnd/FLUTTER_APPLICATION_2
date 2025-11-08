
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isPressed = false;

  // Funtion harus diletakkan di sini, function harus di luarnya Widget build

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text(
          "Home Page",
        ),
        centerTitle: true,
        leading: Icon(
          Icons.home_filled
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.search
            )
          ),
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.accessible_forward
            )
          ),
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.add_location
            )
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.red.shade200,
                  Colors.purple.shade200
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
            ),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children:[ 
                Flexible(
                  flex: 2,
                  child: Container(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/images/banner.jpg",
                        fit: BoxFit.fill,
                      )
                    ),
                ),
                Positioned(
                  right: 16,
                  top: 16,
                  child: 
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          isPressed = !isPressed;
                        });
                      },
                      backgroundColor: isPressed ? Colors.green[100] : Colors.blue[100],
                      child: Icon(isPressed ? Icons.favorite : Icons.favorite_border_outlined),
                    ),
                )
              ]
            ),
            Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/pfp1.png",
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/pfp2.png",
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/pfp3.png",
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/pfp4.jpg",
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                  ]
                )
              ),
            ),
            Flexible(
            flex: 3,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                        "A Black Cat",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: Text(
                                "A cat is a small, carnivorous mammal with a graceful body, soft fur, retractable claws, acute senses, and a long tail. They are known for being playful, curious, independent, and skilled hunters with excellent night vision and hearing. Their physical characteristics include sensitive whiskers, a flexible spine, and rough tongues for grooming. "
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: Text(
                              "A cat is a small, carnivorous mammal with a graceful body, soft fur, retractable claws, acute senses, and a long tail. They are known for being playful, curious, independent, and skilled hunters with excellent night vision and hearing. Their physical characteristics include sensitive whiskers, a flexible spine, and rough tongues for grooming. "
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: Text(
                              "A cat is a small, carnivorous mammal with a graceful body, soft fur, retractable claws, acute senses, and a long tail. They are known for being playful, curious, independent, and skilled hunters with excellent night vision and hearing. Their physical characteristics include sensitive whiskers, a flexible spine, and rough tongues for grooming. "
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            )
            ),
          ],
        ),
      ),
    );
  }
}