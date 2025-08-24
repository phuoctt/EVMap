// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:rabbitevc/share/extensions/date_time.dart';

extension StringExtension on String? {
  bool get emailValid {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this ?? '');
  }

  DateTime? toDate() {
    if (this == null) {
      return null;
    }
    return DateTime.parse(this!);
  }

  String getFileExtension() {
    try {
      return '.' + (this ?? '').split('.').last;
    } catch (e) {
      return '';
    }
  }

  bool isVideo() {
    // List<String> values = ['.mp4', '.MOV','.avi','.mkv','.flv','.wmv'];
    List<String> values = ['.mp4', '.mov'];
    if (values.contains((this ?? '').getFileExtension().toLowerCase())) {
      return true;
    } else {
      return false;
    }
  }

  bool isImage() {
    List<String> values = ['.png', '.jpg'];
    if (values.contains((this ?? '').getFileExtension().toLowerCase())) {
      return true;
    } else {
      return false;
    }
  }
}
