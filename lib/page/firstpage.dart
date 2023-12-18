import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  String foodRadio = "";

  bool foodcheck = false;
  bool gand = true;
  bool arfred = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Arnat"), backgroundColor: const Color.fromARGB(255, 52, 255, 1)),
        body: Column(
          children: [
            createRadioMenu("คั่วแลน", "แกงคั่วแลนเผ็ดมาก", "150 บาท"),
            createRadioMenu("กะเพราไก่ไข่ดาว", "กะเพราไก่ไข่ดาว", "50 บาท"),
            createRadioMenu("กระเจี็ยบหวาน", "กระเจี็ยบหวาน", "20 บาท"),
            createRadioMenu("ข้าวเครื่องแกงไก่แต่เป็นเนื้อวัว", "ข้าวเครื่องแกงไก่แต่เป็นเนื้อวัว", "60 บาท"),
            createRadioMenu("ข้าวผัดไข่ใส่ถั่วฟักยาว", "ข้าวผัดไข่ใส่ถั่วฟักยาว", "50 บาท"),
            const Divider(),

            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("เพิ่มกับ + 5บาท"),
              value: foodcheck, 
              onChanged: (value){
              setState(() {
                foodcheck = value!;
              });
            }),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("เพิ่มอะไรก็ได้ที่อยากใส่ไห้ + 5บาท"),
              value: gand, 
              onChanged: (value){
              setState(() {
                gand = value!;
              });
            }),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("สุ่มตามดวงที่มีจ้า"),
              value: arfred, 
              onChanged: (value){
              setState(() {
                arfred = value!;
              });
            })
            // RadioListTile(
            //   activeColor: Color.fromARGB(150, 0, 255, 45),
            //   value: "กะเพราไก่ไข่ดาว",
            //   title: Text("กะเพราไก่ไข่ดาว"),
            //   subtitle: Text("50 บาท"),
            //   secondary: Icon(Icons.shopping_bag_outlined),
            //   groupValue: foodRadio,
            //   onChanged: (value) {
            //     setState(() {
            //       foodRadio = value!;
            //     });
            //     print(foodRadio);
            //   },
            // ),
            // RadioListTile(
            //   activeColor: Color.fromARGB(100, 40, 25, 0),
            //   value: "กระเจี็ยบหวาน",
            //   title: Text("กระเจี็ยบหวาน"),
            //   subtitle: Text("20 บาท"),
            //   secondary: Icon(Icons.shopping_bag_outlined),
            //   groupValue: foodRadio,
            //   onChanged: (value) {
            //     setState(() {
            //       foodRadio = value!;
            //     });
            //     print(foodRadio);
            //   },
            // ),
            // RadioListTile(
            //   activeColor: Color.fromARGB(99, 0, 255, 238),
            //   value: "ข้าวเครื่องแกงไก่แต่เป็นเนื้อวัว",
            //   title: Text("ข้าวเครื่องแกงไก่แต่เป็นเนื้อวัว"),
            //   subtitle: Text("60 บาท"),
            //   secondary: Icon(Icons.shopping_bag_outlined),
            //   groupValue: foodRadio,
            //   onChanged: (value) {
            //     setState(() {
            //       foodRadio = value!;
            //     });
            //     print(foodRadio);
            //   },
            // ),
            // RadioListTile(
            //   value: "ข้าวผัดไข่ใส่ถั่วฟักยาว",
            //   title: Text("ข้าวผัดไข่ใส่ถั่วฟักยาว"),
            //   subtitle: Text("50 บาท"),
            //   secondary: Icon(Icons.shopping_bag_outlined),
            //   groupValue: foodRadio,
            //   onChanged: (value) {
            //     setState(() {
            //       foodRadio = value!;
            //     });
            //     print(foodRadio);
            //   },
            // ),
          ],
        ));
  }

  RadioListTile<String> createRadioMenu(String val, String title, String price) {
    return RadioListTile(
      activeColor: const Color.fromARGB(255, 204, 100, 20),
      value: val,
      title: Text(title),
      subtitle: Text(price),
      secondary: const Icon(Icons.shopping_bag_outlined),
      groupValue: foodRadio,
      onChanged: (value) {
        setState(() {
          foodRadio = value!;
        });
        print(foodRadio);
      },
    );
  }
}
