import 'package:exam_provider/provider.dart';
import 'package:exam_provider/screen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  @override
  Widget build(BuildContext context) {
    final cprovider=Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Screen 1"),centerTitle: true,actions: [GestureDetector(
        onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen())
          );
        },
        child: Icon(Icons.arrow_circle_right,size: 50,),
       
      )],),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(child: Text("total count is:${cprovider.num.length}",style: TextStyle(fontSize: 25),)),
          SizedBox(height: 5,),
          Expanded(child: ListView.builder(
            itemCount: cprovider.num.length,
          
            itemBuilder: (Context, index){
              return ListTile(
                title: Text("${cprovider.num[index]}"),
              );

            }))
          
        ],
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: (){
        cprovider.addNumber();
      },child: Icon(Icons.add),),
    );
    
  }
}