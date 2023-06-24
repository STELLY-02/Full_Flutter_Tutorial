import 'package:flutter/material.dart';
import 'package:flutter_application/modal/book_list.dart';
import 'package:flutter_application/pages/secondPage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<BookModel> booklist = [];
  void _getBook() {
    booklist = BookModel.getBook();
  }

  @override
  Widget build(BuildContext context) {
    //call first so it is filled first
    _getBook();
    return Scaffold(
      backgroundColor: const Color(0xffEEE2DE),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff2B2A4C),
        title: const Text(
          "LEARNING HUB",
          style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontWeight: FontWeight.w800,
              fontSize: 24.0,
              color: Color(0xffEA906C)),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 35.00,
              ),
              BasicInfo(),
              SearchField(),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2B2A4C)),
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BookDetail()))
                        },
                    child: const Text("Suggest me a book")),
              ),
              const SizedBox(
                height: 15,
              ),
              BookList()
            ],
          ),
        ],
      ),
    );
  }

  ListView BookList() {
    return ListView.separated(
      itemCount: booklist.length,
      shrinkWrap: true,
      padding: const EdgeInsets.only(left: 20, right: 20),
      itemBuilder: (context, index) {
        return Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: booklist[index].boxColor,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 14, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        booklist[index].bookName,
                        style: const TextStyle(
                            fontFamily: 'PlayfairDisplay',
                            fontWeight: FontWeight.w800,
                            fontSize: 23.0,
                            height: 1.2,
                            color: Color(0xff2B2A4C)),
                      ),
                      Text(
                        booklist[index].author,
                        style: const TextStyle(
                            fontFamily: 'PlayfairDisplay',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color(0xffFAFAFA)),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    booklist[index].img,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      //to set the gap
      separatorBuilder: (context, index) => const SizedBox(
        height: 30,
      ),
    );
  }

  Container SearchField() {
    return Container(
      width: 340,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 163, 162, 162),
                blurRadius: 5,
                offset: Offset(0, 5)),
          ],
          color: const Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: const TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: "Search for book",
          hintStyle: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Color(0xffB5B5B5)),
          contentPadding: EdgeInsets.all(10),
          filled: true,
          fillColor: Color(0xffFAFAFA),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Padding BasicInfo() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.00, right: 15.00),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Hello Stelly",
                  style: TextStyle(
                      fontFamily: 'PlayfairDisplay',
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff2B2A4C))),
              Text("Welcome back to learning hub",
                  style: TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ))
            ],
          ),
          Container(
            width: 100.0,
            height: 100.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 10.00,
                  backgroundImage: AssetImage('asset/profile.jpg')),
            ),
          ),
        ],
      ),
    );
  }
}
