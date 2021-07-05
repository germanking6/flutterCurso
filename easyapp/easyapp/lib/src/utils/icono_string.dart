import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'add_box_rounded': Icons.add_box_rounded,
  'add_to_queue_sharp': Icons.add_to_queue_sharp,
  'slideshow': Icons.slideshow,
  'list': Icons.list
};

Icon getIcon(String nombreIcon) {
  return Icon(
    _icons[nombreIcon],
    color: Colors.blue,
  );
}
