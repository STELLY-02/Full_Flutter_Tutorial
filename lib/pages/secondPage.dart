import 'package:flutter/material.dart';
import 'package:flutter_application/pages/home.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEE2DE),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()))
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Color(0xff2B2A4C),
                            size: 35,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Surrounded by Idiots",
                          style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontWeight: FontWeight.w800,
                              fontSize: 28.0,
                              height: 1.2,
                              color: Color(0xff2B2A4C)),
                        ),
                        const Text(
                          "Thomas Erikson",
                          style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 97, 94, 94)),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      "asset/book3.jpg",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      "Synopsis",
                      style: TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Color(0xff2B2A4C),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Ever rolled your eyes at someone and thought to yourself “What an idiot”? Well, you are certainly not alone! When someone cannot understand you or behave in totally unexpected ways, you may assume there’s something wrong with them. The truth is, they may simply be different from you. In Surrounded by Idiots, Thomas Erikson explains how to recognize and communicate with 4 key behavioral profiles. In this Surrounded by Idiots summary, you’ll uncover the key traits, differences, strengths and weaknesses of the 4 types of behaviors, and how to effectively interact with each type.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Color(0xff2B2A4C),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ElevatedButton.icon(
                          onPressed: () => {},
                          icon: const Icon(Icons.add),
                          label: const Text("Add to Wishlist"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffB31312))),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
