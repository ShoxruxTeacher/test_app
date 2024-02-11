import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.conrret, required this.inConrret});
  final int conrret;
  final int inConrret;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle:true,title: Text("Natijangiz"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Tog'ri Javoblar : $conrret"),
            SizedBox(height: 40,),
            Text("Noto'g'ri Javoblar : $inConrret"),
          ],
        ),
      )
    );
  }
}
