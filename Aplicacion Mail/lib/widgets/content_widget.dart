import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/mail.dart';

class ContentWidget extends StatelessWidget {
  final Mail mail;

  ContentWidget(this.mail);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(mail.subject),
      ),
body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:  [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'From',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 17.0,fontStyle:  FontStyle.italic)
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                mail.from,
                textAlign:  TextAlign.left,
                style: TextStyle(fontSize: 17.0,fontStyle:  FontStyle.italic, color: Colors.black38)
              ),
            ),
             SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                mail.subject,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 17.0,fontStyle:  FontStyle.italic)
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                mail.dateTime,
                textAlign:  TextAlign.left,
                style: TextStyle(fontSize: 17.0,fontStyle:  FontStyle.italic, color: Colors.black38)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                mail.body,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18.0),
              ),
            ), 
          ],
        ),
      ),
    );
  }
}
