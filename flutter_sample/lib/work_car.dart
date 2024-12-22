import 'package:flutter/material.dart';

class WorkCar extends StatelessWidget {
  const WorkCar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 172, 246, 248),
        appBar: AppBar(
          //นายชยากร ตะเคียนเกลี้ยง 3651051541144
          backgroundColor: const Color.fromARGB(255, 43, 255, 255),
          title: const Text('รถ SUPPER CAR',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 24)),
          ),
          body: Container(
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            child: Column(
              children: [
                const Text(
                  'Lamborghini Aventador',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 24),
                ),
                Image.network('https://autoartmodels.de/wp-content/uploads/2020/04/79108a-1-scaled.jpg'),
                const Text(
                  'Lamborghini Aventador LP750-4 SV (Superveloce) ทรงพลังเพิ่มมากขึ้นด้วยเครื่องยนต์ V12 6.5 ลิตร ให้กำลังแรงสุดถึง 750 แรงม้า ที่ 8,400 รอบ/นาที น้ำหนักลดลงถึง 50 กิโลกรัม ',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 24, ),
                ),
                const Row(
                  children: [
                  Padding(padding: EdgeInsets.all(20)),
                  SizedBox(height: 50),
                  Icon(Icons.star_rate_rounded, color: Colors.black),
                  Icon(Icons.star_rate_rounded, color: Colors.black),
                  Icon(Icons.star_rate_rounded, color: Colors.black),
                  Icon(Icons.star_rate_rounded, color: Colors.black),
                  Icon(Icons.star_rate_rounded, color: Colors.black),
                  Padding(padding: EdgeInsets.all(20)),
                  Text("170 Reviews", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20, ),)
                  
                  ],
                ),
                Row(children: [
                  Padding(padding: EdgeInsets.all(25)),
                  SizedBox(height: 100),
                  Column(
                  children: [
                  Icon(Icons.kitchen, color: Colors.green[500]),
                  const Text('PREP'),
                  const Text('25 min'),
                  ],
                  
                ),
                Padding(padding: EdgeInsets.all(30)),
                Column(
                  children: [
                  Icon(Icons.timer, color: Colors.green[500]),
                  const Text('COOK'),
                  const Text('1 hr'),
                  ],
                ),
                Padding(padding: EdgeInsets.all(30)),
                Column(
                  children: [
                  Icon(Icons.restaurant, color: Colors.green[500]),
                  const Text('FEEDS'),
                  const Text('4-6'),
                  ],
                )],),
                
              ],
              
            )
          
          
          ),
          
        )
      );
  }
}