import 'package:flutter/material.dart';
import 'package:myapp/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 5),
      color: Colors.grey[800],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("${quote.text}",
                style: TextStyle(color: Colors.white, fontSize: 18.0)),
            SizedBox(
              height: 6.0,
            ),
            Text("${quote.author}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 8.0,
            ),
            Center(
              child: ElevatedButton.icon(
                style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.grey[900])),
                onPressed: ()=>delete(),
                icon: Icon(Icons.delete),
                label: Text(
                  "Delete Quote",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
