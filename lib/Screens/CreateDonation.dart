// ignore_for_file: file_names

import 'package:flutter/material.dart';

import './DonationCreator/Organization.dart';
import './DonationCreator/Person.dart';

class CreateDonate extends StatefulWidget {
  static const routeName = 'createDonate';
  const CreateDonate({Key? key}) : super(key: key);

  @override
  State<CreateDonate> createState() => _CreateDonateState();
}

class _CreateDonateState extends State<CreateDonate> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text('Create a Donation'),
          bottom: const TabBar(
            tabs: [
              Tab(
                  icon: Icon(
                Icons.group_add_outlined,
                size: 30,
              )),
              Tab(
                  icon: Icon(
                Icons.person_add_alt,
                size: 30,
              )),
            ],
            padding: EdgeInsets.only(top: 20),
          ),
        ),
        body: const TabBarView(
          children: [
            CreateForOrganisation(),
            CreateForPerson(),
          ],
        ),
      ),
    );
  }
}
