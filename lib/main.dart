import 'package:flutter/material.dart';
import 'package:scanner/generate_qr.dart';
import 'package:scanner/scan_qr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR Code Scanner and Generator"),backgroundColor: Colors.blue,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQRCode()));
              });
            }, child: Text("Scan QR Code")),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenerateQRCode()));
              });
            }, child: Text("Generate QR Code")),
          ],
        ),
      )
    );
  }
}

