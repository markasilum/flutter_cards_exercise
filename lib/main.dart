import 'package:flutter/material.dart';
import 'package:flutter_cards_exercise/screens/index.dart';
import 'package:flutter_cards_exercise/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const LoginScreen(),
    );
  }
}

//Mark Emmanuel Asilum
class CardSample extends StatelessWidget {
  const CardSample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        width: 680,
        height: 300,
        decoration: BoxDecoration(color: Colors.grey[100], ),
        child: Row(
         
          children: [
            Stack(
              children: [
                
                Container(
                height: 280,
                width: 330,
                decoration: BoxDecoration(color: Colors.blue[100], borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
              ),
              Positioned(
                top: 10,
                left: 260,
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.green[100], borderRadius: BorderRadius.all(Radius.circular(7))),
                  child: Text("FOOD",style: TextStyle(fontWeight: FontWeight.w500, color: Colors.green),),
                ),
              ),
              
              ]
            ),
             Container(
              height: 280,
              width: 330,
              decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 225,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(10))),
                    child: Column(children: [
      
                      Text(
                    "Agriculture is good for both human and animals",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15) ,
                    ),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
      
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscicing elit. Incidunt, illum reprehenderit? Presentium doloribus soluta quia.",
                    style: TextStyle(fontWeight: FontWeight.w300), 
                  ),
                    ]),
                  ),
      
                  
                  // Padding(padding: EdgeInsets.only(bottom: 5)),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 165,
                        height: 50,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(20,10,10,10),
                        child: Row(
                          children: [
                          Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
                          ),
                          Text("Kian Acharya")
                        ]),
                      ),
                      Container(
                        width: 165,
                        height: 50,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))),
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 10),
                        child: Text("Jan 12, 2019", style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey[500]),),
                      )
                    ],
                  )
                ]),
            )
          ]),
      ),

    );
  }
}