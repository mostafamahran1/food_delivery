



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivery/second_page.dart';

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage("assets/images/one.jpg")
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Taking Order For Faster Delivery",
                    style: TextStyle(color: Colors.white,fontSize: 40, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text("see resturants nearby by \nadding location", style: TextStyle(color: Colors.white70, fontSize: 15, fontWeight: FontWeight.bold),),
                  SizedBox(height: 180),
                  Container(
                    decoration:
                    BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          colors: [
                            Colors.orange,
                            Colors.yellow
                          ]
                      )
                    ),
                    child: MaterialButton(
                      minWidth:double.infinity,
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage() )),
                      child: Column(
                        children: [
                          Text('start', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    child: Column(
                      children: [
                        Text("Now Deliver To Your Door 24/7", style: TextStyle(color: Colors.white38,fontSize: 15, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
