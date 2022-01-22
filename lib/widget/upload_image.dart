
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadImage{

   var _storedImage;

  get widget => null;

  get path_provider => null;

  get path => null;

  Future<void> takePictureByCamera() async {
    final picker = ImagePicker();
    final imageFile =
        await picker.getImage(source: ImageSource.camera, maxWidth: 600, imageQuality: 60);

    setState(() {
      _storedImage = File(imageFile!.path);
    });

    final appDir = await path_provider.getApplicationDocumentsDirectory();
    final fileName = path.basename(imageFile!.path);
    final savedImage = File(imageFile.path).copy('${appDir.path}/$fileName');

    widget.onSelectImage(savedImage);
  }

  Future<void> takePictureByGallery() async {
    final picker = ImagePicker();
    final imageFile =
        await picker.getImage(source: ImageSource.gallery, maxWidth: 600);

    if (imageFile == null) {
      return;
    }

    setState(() {
      _storedImage = File(imageFile.path);
    });

    final appDir = await path_provider.getApplicationDocumentsDirectory();
    final fileName = path.basename(imageFile.path);
    final savedImage = File(imageFile.path).copy('${appDir.path}/$fileName');

    widget.onSelectImage(savedImage);
  }
  
}

void setState(Null Function() param0) {
}