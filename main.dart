import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("boş uygulama çerçevesi"),
      ),
      body: AnaEkran(),
    );
  }
}
class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi="bloga hoş geldiniz";
  int s=0;
  martGoster() {
   setState(()  {
     s=s+1;
     blogYazisi=s.toString();
   });
  }
  nisanGoster() {
    setState(()  {
      s=s-1;
      blogYazisi=s.toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(blogYazisi),
            RaisedButton(onPressed: martGoster,child: Text("mart yazısı ++++"),),
            ElevatedButton(onPressed: nisanGoster, child: Text("nisan yazısı ----"),)
          ],
        ),
      ),
    );
  }
}
