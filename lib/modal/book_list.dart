import 'package:flutter/material.dart';

class BookModel {
  String bookName;
  String author;
  String img;
  Color boxColor;

//Constructor
  BookModel({
    required this.bookName,
    required this.author,
    required this.img,
    required this.boxColor,
  });

  //
  static List<BookModel> getBook() {
    List<BookModel> bookList = [];

    bookList.add(BookModel(
        bookName: 'Harry Potter and the Deadly Hallows',
        author: 'J.K. Rowling',
        img: 'asset/book1.jpg',
        boxColor: const Color(0xffEA906C)));

    bookList.add(BookModel(
        bookName: 'The Imperfections of Memory',
        author: 'Angelina Aludo',
        img: 'asset/book2.jpg',
        boxColor: const Color(0xffC65958)));

    bookList.add(BookModel(
        bookName: 'Surrounded by Idiots',
        author: 'Thomas Erikson',
        img: 'asset/book3.jpg',
        boxColor: const Color(0xffF5B298)));

    return bookList;
  }
}
