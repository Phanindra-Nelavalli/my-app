import 'package:flutter/material.dart';
import "package:myapp/quote.dart";
import 'package:myapp/quotecard.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Quote> quotes = [
    Quote(
        text:
            "Failure is simply the opportunity to begin again, this time more intelligently.",
        author: "Vikram"),
    Quote(
        text:
            "If you change the way you look at things, the things you look at change.",
        author: "Arjun"),
    Quote(
        text:
            "Our greatest glory is not in never falling, but in rising  time we fall.",
        author: "RadhaKrishna"),
  ];
  
  void deleteQuote(Quote quote) {
    setState(() {
      quotes.remove(quote);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "Ninja ID",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(quote: quote,
          delete: ()=> deleteQuote(quote));
        }).toList(),
      ),
    );
  }
}


