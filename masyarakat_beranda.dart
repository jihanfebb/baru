import 'package:flutter/material.dart';
import 'package:flutter_pengaduan/controller/masyarakat_controller.dart';
import 'package:flutter_pengaduan/masyarakat_buat.dart';
import 'package:flutter_pengaduan/masyarakat_detail.dart';
import 'package:flutter_pengaduan/petugas_beranda.dart';
import 'package:get/get.dart';

import 'masyarakat_update.dart';

class BerandaMasyarakat extends StatelessWidget {
  const BerandaMasyarakat({super.key});

  @override
  Widget build(BuildContext context) {
    MasyarakatController masyarakatController = Get.put(MasyarakatController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Beranda Masyarakat'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 90,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () {
                              Get.to(() => const BuatMasyarakat());
                            },
                            child: const Text('Buat Masyarakat')
                        ),
                        TextButton(
                            onPressed: () {
                              Get.to(() => const PetugasBeranda());
                            },
                            child: const Text('Petugas')),
                      ],
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.menu),
            ),
          )
        ],
      ),
      body: Center(
        child: _buildMasyarakatList(masyarakatController),
      ),
    );
  }

  Widget _buildMasyarakatList(MasyarakatController controller) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Obx(
        () => controller.isLoading.value
            ? _buildLoadingWidget()
            : ListView.builder(
                itemCount: controller.listmasyarakat.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(const DetailMasyarakat(),
                          arguments: {"index": index});
                    },
                    child: ListTile(
                      title: Text('${controller.listmasyarakat[index].nama}'),
                      subtitle:
                          Text('${controller.listmasyarakat[index].createdAt}'),
                    ),
                  );
                },
              ),
      ),
    );
  }

  Widget _buildLoadingWidget() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
