// ignore_for_file: file_names, unused_local_variable, no_leading_underscores_for_local_identifiers
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

class Fun {
  String filetext = "";

  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['jpg', 'png', 'docx', 'pdf'],
    );
    if (result != null && result.files.single.path != null) {
      // load result and files details
      PlatformFile file = result.files.first;
      if (kDebugMode) {
        print(file.name);
      }
      // normal file
      File _file = File(result.files.single.path!);
      //you have set state to change file ;
    } else {
      // remove the picker
      if (kDebugMode) {
        print('users remove picker');
      }
    }
  }

  void pickMultipleFiles() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      List<File> files = result.paths.map((path) => File(path!)).toList();
      if (kDebugMode) {
        print(files.length);
      }
      // filetext = files.toString();
      //set states
    } else {
      if (kDebugMode) {
        print("users canceled pick");
      }
    }
  }

  void pickDirectory() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();
    if (selectedDirectory != null) {
      // set state
      //filetext  = selectedDirectory
    } else {
      if (kDebugMode) {
        print("users canceled the picker");
      }
    }
  }
}
