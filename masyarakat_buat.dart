import 'package:flutter/material.dart';
import 'package:flutter_pengaduan/masyarakat_beranda.dart';
import 'package:get/get.dart';
import 'package:flutter_pengaduan/controller/masyarakat_controller.dart';

class BuatMasyarakat extends StatelessWidget {
  const BuatMasyarakat({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nik = TextEditingController();
    TextEditingController nama = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController telp = TextEditingController();
    MasyarakatController masyarakatController = Get.put(MasyarakatController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Buat Masyarakat'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nik,
              decoration: const InputDecoration(
                labelText: "NIK",
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
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
              controller: password,
              decoration: const InputDecoration(
                labelText: "Password",
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
                masyarakatController.createData(
                  nik.text,
                  nama.text,
                  username.text,
                  password.text,
                  telp.text,
                );
                Get.to(const BerandaMasyarakat());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                "Create",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
