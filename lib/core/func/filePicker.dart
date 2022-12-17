// ignore_for_file: file_names, unused_local_variable, no_leading_underscores_for_local_identifiers
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:project1/home_module/presentation/screens/add_occupations_screen.dart';
class Fun {
  String filetext = "";

  void pickFile1() async{

    late File _file;
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
      _file = File(result.files.single.path!);
      //you have set state to change file ;
    } else {
      // remove the picker
      if (kDebugMode) {
        print('users remove picker');
      }
    }
    w=_file;
  }

  void pickFile2() async{

    late File _file;
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
      _file = File(result.files.single.path!);
      //you have set state to change file ;
    } else {
      // remove the picker
      if (kDebugMode) {
        print('users remove picker');
      }
    }
    img=_file;
  }

  void pickFile3() async{

    late File _file;
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
      _file = File(result.files.single.path!);
      //you have set state to change file ;
    } else {
      // remove the picker
      if (kDebugMode) {
        print('users remove picker');
      }
    }
    s=_file;
  }

}
