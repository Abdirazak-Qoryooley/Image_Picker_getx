import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickercontroller extends GetxController {
  RxString imagePath = ''.obs;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();

    final Image = await _picker.pickImage(source: ImageSource.camera);

    if (Image != null) {
      imagePath.value = Image.path.toString();
    }
  }
}
