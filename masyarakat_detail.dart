import 'package:flutter/material.dart';
import 'package:flutter_pengaduan/controller/masyarakat_controller.dart';
import 'package:flutter_pengaduan/masyarakat_update.dart';
import 'package:get/get.dart';

class DetailMasyarakat extends StatelessWidget {
  const DetailMasyarakat({super.key});

  @override
  Widget build(BuildContext context) {
    int index = Get.arguments["index"];
    MasyarakatController masyarakatController = Get.put(MasyarakatController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('keterangan'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Nama :", style: TextStyle(fontSize: 12)),
                      Text('${masyarakatController.listmasyarakat[index].nama}')
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Uesername :",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                          '${masyarakatController.listmasyarakat[index].username}')
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "NIK :",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text('${masyarakatController.listmasyarakat[index].nik}')
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "No telpon : ",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text('${masyarakatController.listmasyarakat[index].telp}')
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "di buat pada :",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                          '${masyarakatController.listmasyarakat[index].createdAt}')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(const UpdateMasyarakat(), arguments: {"index": masyarakatController.listmasyarakat[index].nik});
                            },
                          child: const Text("Update")),
                      SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            masyarakatController.destroyData(
                                masyarakatController.listmasyarakat[index].nik);
                          },
                          child: const Text("Delete")),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
