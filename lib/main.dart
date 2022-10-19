import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("自己紹介",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
                child: ClipOval(
                  child: Image.asset('image/profile.jpeg',height:150,width:150),
                ),
            ),
            const SizedBox(height: 20),
            const Text("村上まこと (19)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 20,),
            const Divider(color: Colors.black54),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
              child: Column(
                children: <Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Text("ニックネーム",style: fontStyle),
                      Text("神童",style: fontStyle),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Text("すきなこと",style: fontStyle),
                      Text("おんなのひと",style: fontStyle),
                    ],
                  ),
                  const SizedBox(height:15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Text("ハマっていること",style: fontStyle),
                      Text("マリオカート",style: fontStyle),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  TextStyle fontStyle = const TextStyle(
    fontSize: 15,fontWeight: FontWeight.bold
  );
}
