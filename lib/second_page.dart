import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton( color: Colors.black, icon:Icon(Icons.search), onPressed: () { },),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.shopping_basket,color: Colors.black,),
          )
        ],
      ),
      body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text("Food Delivery", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, ),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(isActive : true,title: "Desert"),
                        makeItem(isActive : false,title: "Burgers"),
                        makeItem(isActive : false,title: "Pizza"),
                        makeItem(isActive : false,title: "Kebab"),
                        makeItem(isActive : false,title: "Chicken"),
                        makeItem(isActive : false,title: "salad"),
                        makeItem(isActive : false,title: "Coffee"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text("Free Delivery", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.black45),),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 490,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makecategory(image: "assets/images/one.jpg" , price: "\$ 15.00" , name: "Chocolate"),
                        makecategory(image: "assets/images/two.jpg",  price: "\$ 20.00" , name: "Cupcake"),
                        makecategory(image: "assets/images/three.jpg" , price: "\$ 65.00" , name: "Cake"),
                        makecategory(image: "assets/images/four.jpg" , price: "\$ 40.00" , name: "Nutella"),
                        makecategory(image: "assets/images/five.jpg", price: "\$ 60.00" , name: "Dark Chocolate"),
                        makecategory(image: "assets/images/six.jpg", price: "\$ 95.00" , name: "Vanille Cake"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }

  Widget makeItem({isActive,title}) {
    return(
    AspectRatio(aspectRatio: isActive ? 3  : 3 / 1 ,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: isActive ?
              LinearGradient(colors: [
                Colors.orange,
                Colors.yellow,
                Colors.orange
              ]) : LinearGradient(
                  colors:[
                    Colors.grey,
                    Colors.grey.shade300,
                    Colors.grey,
                  ] )

          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: TextStyle(color: isActive ? Colors.white : Colors.black54, fontSize: isActive ? 22 : 15, fontWeight: FontWeight.bold),)
          ],
        ),
        ),
    )

    );
  }

 Widget makecategory({image, price , name}) {
    return(
        AspectRatio(
            aspectRatio: 4.5 / 6.2,
            child: GestureDetector(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orange,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Align(
                          alignment : Alignment.topRight,
                        child: Icon(Icons.favorite, color: Colors.white, size: 30,),
                        ) ),
                      Text(price, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                      SizedBox(height: 10,),
                      Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ),
        )
    );
 }
}
