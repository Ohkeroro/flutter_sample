import 'dart:math';

import 'package:flutter/material.dart';

class Worklist extends StatefulWidget {
  const Worklist({super.key});

  @override
  State<Worklist> createState() => _MyListviewPageState();
}

class _MyListviewPageState extends State<Worklist> {
  var rnd = Random();
  var titleText = ['Star','Heart', 'Wi-Fi', 'Bluetooth', 'Gear'];
  var leadingIcon = [Icons.star, Icons.favorite, Icons.wifi, Icons.bluetooth, Icons.settings];

  var switchWifi = true;
  var switchBluetooth = false;
  
  @override
  Widget build(BuildContext context) => Scaffold( 
    appBar: AppBar(title: const Text('Listview'), centerTitle: true,),
    body: ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: titleText.length,
      itemBuilder: (context,index)=>buildlistItem(context, index), 
      separatorBuilder: (contex, index) => const Divider(
        thickness: 1,
        color: Colors.blueGrey,
        indent: 10,
        endIndent: 10,
      ), 
      )
  );
  Widget buildlistItem(BuildContext ctx, int index) {
    return ListTile(
      leading: Icon(leadingIcon[index], size: 36,),
      title: Text(titleText[index]),
      subtitle: Text('\$${rnd.nextInt(50)+10}'),
      trailing: trailingWidget(ctx, index),
      iconColor: Colors.deepPurple,
      onTap: ()=>myAlert(ctx, 'เปิดดูรายการ ${titleText[index]}'),
    );
  }
  Widget trailingWidget(BuildContext ctx, int index){
    var widget = <Widget>[
      const Icon(Icons.arrow_forward_ios),
      InkWell(
        child: const Icon(Icons.shopping_cart),
        onTap: ()=>myAlert(ctx, 'ได้หยิบ ${titleText[index]} ใส่รถเข็นแล้ว'),
      ),
      Switch(
        value: switchWifi,
        onChanged: (isOn) => setState(() {
          switchWifi = isOn;
          var msg = (isOn)?'เปิด':'ปิด';
          myAlert(ctx, '${titleText[index]}: $msg');
        }),
      ),
      Switch(
        value: switchBluetooth,
        onChanged: (isOn) => setState(() {
          switchBluetooth = isOn;
          var msg = (isOn)?'เปิด':'ปิด';
          myAlert(ctx, '${titleText[index]}: $msg');
        }),
      ),
      InkWell(
        child: const Icon(Icons.shopping_cart),
        onTap: (){},
      ),
    ];
    return widget[index];
  }
    void myAlert(BuildContext ctx, String txt){
      showDialog(
        context: ctx,
        builder: (ctx) => AlertDialog(
          content: Text(txt),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(), 
              child: const Text('OK'))
          ],
        )
      );
      
  }
}