import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Using container'),
        backgroundColor: Colors.purple.shade200,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            container1(),
            container2(),
            container3(),
          ],
        ),  
      )  
    );
    
  }//build
  Widget container1() => Container(
     color: Colors.purple.shade100,
        height: 200,
        width: 300,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(left: 80, top: 100),
        child: const Text("I'M R I C H",
                style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold)),
  );

  Widget container2() => Container(
    height: 200,width: 300,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.only(top:50, left: 80),
    //color: Colors.purple.shade100,
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
        color: Colors.yellow,
        style: BorderStyle.solid,
        width: 10,
      ),
      shape: BoxShape.rectangle,
      borderRadius: const BorderRadius.all(Radius.elliptical(50, 50))
    ),
    child: const Text('L O V E', 
            style: TextStyle(color: Colors.white70,fontSize: 35, fontWeight: FontWeight.bold,),),    
    
  );

  Widget container3() => Container(
    height: 200,width: 150,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.only(top:20, left: 20),
    alignment: Alignment.center,
    decoration: const BoxDecoration(
      color: Colors.green,
    shape: BoxShape.circle,
    ),
    child: const Text('MONEY' ,style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold)),
  );


}
