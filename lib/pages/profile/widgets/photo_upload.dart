import 'dart:html';

import 'package:agency/constants.dart';
import 'package:mime_type/mime_type.dart';
import 'package:path/path.dart' as Path;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'dart:html' as html;

Rx<File> _cloudFile = File([], "name").obs;
var _fileBytes = [].obs;
Rx<Image> _imageWidget = Image.network(logoImage).obs;

Future<void> getMultipleImageInfos() async {
  var mediaData = await ImagePickerWeb.getImageInfo;
  String? mimeType = mime(Path.basename(mediaData!.fileName!));
  html.File mediaFile =
      new html.File(mediaData!.data!, mediaData!.fileName!, {'type': mimeType});

  if (mediaFile != null) {
    _cloudFile.value = mediaFile;
    _fileBytes.value = mediaData.data!;
    _imageWidget.value = Image.memory(mediaData.data!);
  }
}
