import 'dart:io';

import 'package:status_saver/common.dart';
import 'package:status_saver/constants.dart';

Future<List<String>> getStatuses({required List<String> directoryPaths}) async {

  List<String> statuses = [];
  try {
    for(String directoryPath in directoryPaths) { 
      Directory directory = Directory(directoryPath);
      statuses.addAll(directory.listSync().map((file) => file.path)); 
      // TODO: handle stream of list using directory.list()
    }
  log(statuses.toString());
  } catch (e) {
    log(e.toString());
  }
  return filter(statuses);
}

/// remove unnecessary files which are not statuses
List<String> filter(List<String> statuses) {
  return statuses.where((status) {
    // TODO: datewise sorting
    return status.endsWith(mp4) || status.endsWith(jpg);
  })
  .toList();
}