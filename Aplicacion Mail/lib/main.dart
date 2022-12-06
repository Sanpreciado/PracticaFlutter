import 'package:cartoons_flutter/model/mail.dart';
import 'package:cartoons_flutter/widgets/content_widget.dart';
import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/Back.dart';
import 'package:flutter/services.dart';

//import 'package:cartoons_flutter/model';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sanler Preciado',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

/*CODIGO AÑADIDO */
/*final mails = [
  Mail(
    title: 'Michael@gmail.practice',
    subttitle: "practica",
    date: "10-01-2022",
    body: 'practica de cualquier dato a adjuntar',
  ),
  Mail(
    title: 'pepe@gmail.practice',
    subttitle: "practica",
    date: "10-01-2022",
    body: 'practica de cualquier dato a adjuntar',
  ),
  Mail(
    title: 'papu@gmail.practice',
    subttitle: "practica",
    date: "10-01-2022",
    body: 'practica de cualquier dato a adjuntar',
  ),
  Mail(
    title: 'sockas@gmail.practice',
    subttitle: "practica",
    date: "10-01-2022",
    body: 'practica de cualquier dato a adjuntar',
  ),
  Mail(
    title: 'babo@gmail.practice',
    subttitle: "practica",
    date: "10-01-2022",
    body: 'practica de cualquier dato a adjuntar',
  ),
  Mail(
    title: 'Afedo@gmail.practice',
    subttitle: "practica",
    date: "10-01-2022",
    body: 'practica de cualquier dato a adjuntar',
  )

];

void doSomething(Mail mail) {
    // ignore: avoid_print
    print(mail.title);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Practica Mail'),
        ),
        body: ListView.builder(
            itemCount: Backend().getMails().length,
            itemBuilder: (context, index) {
              Mail mail = Backend().getMails()[index];
              return Dismissible(
                key: ObjectKey(mail),
                child: ListTile(
                  subtitle: Text(mail.subject),
                  title: Text(mail.from),
                  leading: Icon(Icons.brightness_1, color: Colors.blue),
                  trailing: Text(mail.dateTime),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContentWidget(mail)));
                  },
                ),
                onDismissed: (direction) {
                  Backend().getMails().remove(index);
                },
              );
            }));
  }
}
