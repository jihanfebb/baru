import 'package:flutter/material.dart';
import 'package:flutter_pengaduan/masyarakat_beranda.dart';
import 'package:flutter_pengaduan/masyarakat_buat.dart';
import 'package:get/get.dart';

class BerandaUtama extends StatefulWidget {
  const BerandaUtama({super.key});

  @override
  State<BerandaUtama> createState() => _BerandaUtamaState();
}

class _BerandaUtamaState extends State<BerandaUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const BerandaMasyarakat());
                  },
                  child: Container(
                    height: 132,
                    width: 132,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: const Text('Kumpulan masyarakat'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const BuatMasyarakat());
                  },
                  child: Container(
                    height: 132,
                    width: 132,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: const Text('Buat masyarakat'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
