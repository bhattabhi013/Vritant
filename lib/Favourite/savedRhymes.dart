import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SavedRhymes extends StatefulWidget {
  const SavedRhymes({super.key});

  @override
  State<SavedRhymes> createState() => _SavedRhymesState();
}

class _SavedRhymesState extends State<SavedRhymes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hi'),
      ),
    );
  }
}
