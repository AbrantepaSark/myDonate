// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Searchbar.dart';

class FundsScreen extends StatefulWidget {
  const FundsScreen({Key? key}) : super(key: key);

  @override
  State<FundsScreen> createState() => _FundsScreenState();
}

class _FundsScreenState extends State<FundsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        const SearchBar(),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text('Scroll left and right'),
        ),
        SingleChildScrollView(
          //physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(top: 20),
          child: DataTable(
            columns: const [
              DataColumn(
                label: Text(
                  'Title',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Description',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Status',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Target',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Scope',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(Text('Support HIV')),
                  DataCell(Text('Description here')),
                  DataCell(Text('Accepted')),
                  DataCell(Text('3000ETH')),
                  DataCell(Text('Russia')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Support For COVID')),
                  DataCell(Text('Description here')),
                  DataCell(Text('Rejected')),
                  DataCell(Text('5000ETH')),
                  DataCell(Text('Ghana')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Sudan Famine')),
                  DataCell(Text('Description here')),
                  DataCell(Text('Pending')),
                  DataCell(Text('20,000ETH')),
                  DataCell(Text('Sudan')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Child Education')),
                  DataCell(Text('Description here')),
                  DataCell(Text('Rejected')),
                  DataCell(Text('12,000ETH')),
                  DataCell(Text('Global')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
