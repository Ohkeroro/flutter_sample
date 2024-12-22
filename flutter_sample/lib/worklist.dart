import 'package:flutter/material.dart';

class Worklist extends StatefulWidget {
  const Worklist({super.key});

  @override
  State<Worklist> createState() => _MyListviewPageState();
}

class _MyListviewPageState extends State<Worklist> {
  var subtitle = ['อู๋', 'ตั้น', 'เปา', 'น้ำ', 'นม'];
  var titleText = ['นายพัทธวี พงหนองพอก','เอกรัฐ ทะยะ','นายกิตติศักดิ์ แสงลือ','นายสิงห์ ลีโอ','นายชาย ชาตรี'];
  var heights = ['165 cm', '175 cm', '175 cm', '175 cm', '168 cm'];
  var weights = ['65 kg', '50 kg', '70 kg', '70 kg', '62 kg'];
  var favorites = ['ฟุตบอล','อ่านหนังสือ','เกม','เดินป่า','ถ่ายรูป'];
  var leadingIcon = [Icons.person,Icons.person,Icons.person,Icons.person,Icons.person];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('รายชื่อเพื่อนที่สนิท'),
          centerTitle: true,
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: titleText.length,
          itemBuilder: (context, index) => buildListItem(context, index),
          separatorBuilder: (context, index) => const Divider(
            thickness: 1,
            color: Colors.blueGrey,
            indent: 10,
            endIndent: 10,
          ),
        ),
      );

  Widget buildListItem(BuildContext ctx, int index) {
    return ListTile(
      leading: Icon(
        leadingIcon[index],
        size: 36,
      ),
      title: Text(titleText[index]),
      subtitle: Text(subtitle[index]),
      trailing: const Icon(Icons.arrow_forward_ios),
      iconColor: Colors.deepPurple,
      onTap: () => showDetailsDialog(ctx, index),
    );
  }

  void showDetailsDialog(BuildContext ctx, int index) {
    showDialog(
      context: ctx,
      builder: (ctx) => AlertDialog(
        title: Text(titleText[index]),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ส่วนสูง: ${heights[index]}'),
            Text('น้ำหนัก: ${weights[index]}'),
            Text('สิ่งที่ชอบ: ${favorites[index]}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
