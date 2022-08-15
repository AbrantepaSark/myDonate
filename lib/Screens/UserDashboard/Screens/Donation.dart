// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Searchbar.dart';

class DonationScreen extends StatelessWidget {
  const DonationScreen({Key? key}) : super(key: key);

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
                  'Amount Donated',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(Text('Support HIV')),
                  DataCell(Text('Description here')),
                  DataCell(Text('USD-10,000(23ETH)')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Support For COVID')),
                  DataCell(Text('Description here')),
                  DataCell(Text('USD-10,000(23ETH)')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Sudan Famine')),
                  DataCell(Text('Description here')),
                  DataCell(Text('USD-10,000(23ETH)')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Child Education')),
                  DataCell(Text('Description here')),
                  DataCell(Text('Rejected')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
