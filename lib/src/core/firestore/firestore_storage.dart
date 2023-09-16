import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FileStorageUploadUtils {
  static Future<String?> uploadImageToStorage({
    required XFile pickedFile,
    required String storeId,
  }) async {
    try {
      var img = await pickedFile.readAsBytes();

      var metaData = SettableMetadata(
        contentType: 'image/png',
      );

      TaskSnapshot task = await FirebaseStorage.instance
          .ref('store/$storeId/product_images/${DateTime.now().millisecondsSinceEpoch}')
          .putData(img, metaData);

      String imgUrl = await task.ref.getDownloadURL();
      debugPrint('IMAGE UPLOADED : $imgUrl');

      return imgUrl;
    } catch (e) {
      debugPrint('File Upload Error: $e');
      return null;
    }
  }
}
