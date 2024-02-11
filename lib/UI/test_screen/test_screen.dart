import 'package:flutter/material.dart';
import 'package:test_mobile/TESTS/tests.dart';
import 'package:test_mobile/UI/result/result_sceen.dart';

class TestScreen extends StatefulWidget {
  final Test test;
  const TestScreen({super.key, required this.test});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int testIndex=0;
  int correctAnswers=0;
  int unCorrectAnswer=0;
  String? selectedAnswer;
  void snackBarAnswer(bool check){
    if(check){
      correctAnswers++;
    }
    else{
      unCorrectAnswer++;
    }
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            backgroundColor:check? Colors.green:Colors.red,
            content:check?  Text("To'gri javob"): Text("Notog'ri javob"))
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: Text(widget.test.name),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Text("Hello user , you have a greatful journey"),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, right: 10, left: 10),
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                child: Text(
                 "Savol: "+ widget.test.variants[testIndex].question,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              // A variant
              if(widget.test.variants[testIndex].A!=null)InkWell(
                onTap: (){
                  selectedAnswer='A';
                  setState(() {

                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: selectedAnswer=="A"?Colors.green:Colors.white,
                  ),
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 10, left: 10),
                  margin:
                  EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                  child: Text(
                    "A) "+widget.test.variants[testIndex].A!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ),

              // B variant
              if(widget.test.variants[testIndex].B !=null)InkWell(
                onTap: (){
                  selectedAnswer='B';
                  setState(() {

                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: selectedAnswer=='B'?Colors.green:Colors.white,
                  ),
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 10, left: 10),
                  margin:
                  EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                  child: Text(
                    "B) ${widget.test.variants[testIndex].B}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ),

              // C variant
              if(widget.test.variants[testIndex].C !=null)InkWell(
                onTap: (){
                  selectedAnswer='C';
                  setState(() {

                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: selectedAnswer=='C'?Colors.green:Colors.white,
                  ),
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 10, left: 10),
                  margin:
                  EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                  child: Text(
                    "C) ${widget.test.variants[testIndex].C}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              // D variant
              if(widget.test.variants[testIndex].D !=null)InkWell(
                onTap: (){
                  selectedAnswer='D';
                  setState(() {

                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: selectedAnswer=='D'?Colors.green:Colors.white,
                  ),
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 10, left: 10),
                  margin:
                  EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                  child: Text(
                    "D) ${widget.test.variants[testIndex].D}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              // E variant
              if(widget.test.variants[testIndex].E !=null)InkWell(
                onTap: (){
                  selectedAnswer='E';
                  setState(() {

                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: selectedAnswer=='E'?Colors.green:Colors.white,
                  ),
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 10, left: 10),
                  margin:
                  EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                  child: Text(
                    "E) ${widget.test.variants[testIndex].E}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Answer")),
                  ElevatedButton(onPressed: () {
                    if(selectedAnswer!=null){
                      if(widget.test.check(testIndex, selectedAnswer!)){
                        snackBarAnswer(true);
                      }else{
                        snackBarAnswer(false);
                      }
                    }
                    if(widget.test.variants.length-1>testIndex)
                    {
                          testIndex++;
                          selectedAnswer=null;
                    }
                    else{
                     Navigator.of(context).pop();
                     Navigator.push(context, MaterialPageRoute(builder: (c)=>ResultScreen(conrret: correctAnswers, inConrret: unCorrectAnswer)));
                    }
                        setState(() {});
                  }, child: Text("Next",style: TextStyle(color: Colors.white),),

                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
