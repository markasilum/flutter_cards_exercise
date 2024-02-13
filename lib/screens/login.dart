import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth>600){
            return webView(context);
          }else{
            return mobileView(context);

          }
      },),
    );
  }

  Container webView(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.amber,
          child: Center(
            child: Card(
              child: Container(
                height: 500,
                width: 448,
              ),
            ),
          ),
    );
  }

Container mobileView(BuildContext context) {
    return Container(
      color: Colors.blue,
          child: Center(
            child: Card(
              child: Container(
                width: MediaQuery.of(context).size.width*.8,
                 height: MediaQuery.of(context).size.height*.8,
              ),
            ),
          ),
    );
  }
  
}

