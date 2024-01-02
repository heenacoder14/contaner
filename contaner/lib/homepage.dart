import 'package:flutter/material.dart';

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
        title: Center(child: Text("FOME",style: TextStyle(fontSize: 30,color: Colors.black))),
      ),

      body:Column(
        children: [
          SizedBox(
            height:50 ,
          ),
          Container(

            child: Padding(
              padding: const EdgeInsets.only(right: 30,left: 30),
              child: TextField(
                decoration: InputDecoration(hintText: "enter name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(

            child: Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextField(
                decoration: InputDecoration(hintText: "enter email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(

            child: Padding(
              padding: const EdgeInsets.only(right: 30,left: 30),
              child: TextField(
                decoration: InputDecoration(hintText: "enter email pasword",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ),
          Container(
            child: FloatingActionButton(onPressed: (){
              showModalBottomSheet(context: context, builder:(context) {
                return Container(
                  height: 200,
                  width: 90,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
                        child: TextField(
                          decoration: InputDecoration(hintText: "enter email pasword",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                          ),

                        ),

                      ),
                      FloatingActionButton(onPressed: (){
                        Navigator.pop(context);
                      },child: Text("sumite"),),
                    ],
                  ),
                );

              },);
            },
              child: Text("loging"),
            )

            ,)
        ],
      ),
    );
  }
}
