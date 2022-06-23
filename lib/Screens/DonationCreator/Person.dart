// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CreateForPerson extends StatefulWidget {
  const CreateForPerson({Key? key}) : super(key: key);

  @override
  State<CreateForPerson> createState() => _CreateForPersonState();
}

class _CreateForPersonState extends State<CreateForPerson> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('create by person'),
    );
  }
}
