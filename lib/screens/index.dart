import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              ItemCard("Pancakes", "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ItemCard("Pasta", "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")

          ],
        ),
      ),
    );
  }

  Card ItemCard(String title, String imageURL) {
    return Card(
        child: Container(
          width: 550,
          height: 250,
          child: Row(
            children: [
              Expanded(
                child: Container(
                decoration: BoxDecoration( 
                  image: DecorationImage(
                    image: NetworkImage(imageURL),
                    fit: BoxFit.cover
                     ),
                  color: Colors.red,borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))),
               )),
              Expanded(
                child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                      width: 60,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.green[100], borderRadius: BorderRadius.all(Radius.circular(7))),
                      child: Text("FOOD",style: TextStyle(fontWeight: FontWeight.w500, color: Colors.green),),
                    ),
                     Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15) ,
                    ),
                    Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscicing elit. Incidunt, illum reprehenderit? Presentium doloribus soluta quia.",
                    style: TextStyle(fontWeight: FontWeight.w300), 
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        
                        color: Colors.white,
                        child: Row(
                          children: [
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage('https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                fit: BoxFit.cover
                                
                                ),
                                shape: BoxShape.circle,
                              color: Colors.green,),
                              
                          ),
                          Text("Dodong"),
                        ]),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))),
                        alignment: Alignment.centerRight,
                        child: Text("Jan 12, 2019", style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey[500]),),
                      )
                    ],
                  )
                  ],
                ),
              ))
            ],
          ),
        ),
      );
  }
}