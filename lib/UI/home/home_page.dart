import 'package:flutter/material.dart';
import 'package:test_mobile/TESTS/tests_list.dart';
import 'package:test_mobile/UI/test_screen/test_screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Saturn Test"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: TestList.tests.length,
          itemBuilder: (context,index)=>Card(
          child: ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (c)=> TestScreen(test: TestList.tests[index],)));
            },
            leading: const CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.science_outlined)),
            title:  Text(TestList.tests[index].name),
            // subtitle: const Text("bu test elementar daraja uchun"),
            trailing: Icon(Icons.arrow_forward_ios),

          ),
        ),),
      ),
    );
  }
}
