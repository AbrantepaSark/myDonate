// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 60,
      // decoration: const BoxDecoration(
      //     borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Form(
        key: _formKey,
        child: TextFormField(
          maxLines: 4,
          decoration: InputDecoration(
            focusColor: Colors.white,
            suffixIcon: const Icon(Icons.search_outlined),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            hintText: "Search...",
            filled: true,
            //make hint text
            hintStyle: const TextStyle(
              color: Color.fromARGB(255, 108, 104, 104),
              fontSize: 16,
              fontFamily: "verdana_regular",
              fontWeight: FontWeight.w400,
            ),
            //lable style
            labelStyle: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: "verdana_regular",
              fontWeight: FontWeight.w400,
            ),
          ),
          controller: _searchController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            bool emailValid = RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value);

            if (!emailValid) {
              return 'Please enter a valid email';
            }
            return null;
          },
        ),
      ),
    );
  }
}
