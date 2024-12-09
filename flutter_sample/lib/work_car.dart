import 'package:flutter/material.dart';
import 'package:flutter_sample/Rows_Columns.dart';

class WorkCar extends StatelessWidget {
  const WorkCar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 172, 246, 248),
        appBar: AppBar(
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
                Column(
                  children: [
                  Icon(Icons.star_border, color: Colors.black),
                  const Text('PREP'),
                  const Text('25 min'),
                  ],
                ),
                Column(
                  children: [
                  Icon(Icons.kitchen, color: Colors.green[500]),
                  const Text('PREP'),
                  const Text('25 min'),
                  ],
                ),
                Column(
                  children: [
                  Icon(Icons.timer, color: Colors.green[500]),
                  const Text('COOK'),
                  const Text('1 hr'),
                  ],
                ),
                Column(
                  children: [
                  Icon(Icons.restaurant, color: Colors.green[500]),
                  const Text('FEEDS'),
                  const Text('4-6'),
                  ],
                )
              ],
              
            )
          
          ),
          
        )
      );
  }
}