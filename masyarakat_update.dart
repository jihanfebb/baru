import 'package:flutter/material.dart';
import 'controller/masyarakat_controller.dart';
import 'package:get/get.dart';

class UpdateMasyarakat extends StatelessWidget {
  const UpdateMasyarakat({super.key});

  get index => null;

  @override
  Widget build(BuildContext context) {
    TextEditingController nama = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController telp = TextEditingController();
    final index = Get.arguments["index"];
    MasyarakatController masyarakatController = Get.put(MasyarakatController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Update Masyarakat'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nama,
              decoration: const InputDecoration(
                labelText: "Nama",
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
            TextField(
              controller: username,
              decoration: const InputDecoration(
                labelText: "Username",
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
            TextField(
              controller: telp,
              decoration: const InputDecoration(
                labelText: "Telepon",
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                masyarakatController.updateData(
                  index,
                  nama.text,
                  username.text,
                  telp.text
                );
                Get.toNamed("/");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                "Update",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );


  }
}
