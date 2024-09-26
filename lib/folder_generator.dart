import 'package:flutter_riverpod/flutter_riverpod.dart';

class FolderGenerator extends Notifier<String> {
  @override
  String build() {
    // TODO: implement build
    return '';
  }

  void addString(String folder_name) {
    state = [folder_name] as String;
  }
}

var strNotifyProvider =
    NotifierProvider<FolderGenerator, String>(FolderGenerator.new);
