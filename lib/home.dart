import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker_getx/controller/picker.dart';

class home extends StatelessWidget {
  home({super.key});

  final ImagePickercontroller controller = Get.put(ImagePickercontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Image Picker'),
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: controller.imagePath.isEmpty
                    ? null
                    : FileImage(File(controller.imagePath.toString())),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                controller.getImage();
              },
              child: Text(
                'Picker Image',
                style: TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
