import 'package:butter_fly/view_models/auth_view_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'dart:io';

import 'package:get/get_core/src/get_main.dart';

class FilePickerService {
  final authViewModel = Get.put(AuthViewModel());
  Future<File?> pickPdfFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom, // Specify the file type
      allowedExtensions: ['pdf'], // Only allow PDF files
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      authViewModel.uploadResumeFile.value = file;
      return file;
    } else {
      return null;
    }
  }
}
