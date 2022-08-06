// ignore_for_file: file_names

import 'package:flutter/material.dart';

//import '../Searchbar.dart';

class FundsScreen extends StatefulWidget {
  const FundsScreen({Key? key}) : super(key: key);

  @override
  State<FundsScreen> createState() => _FundsScreenState();
}

class _FundsScreenState extends State<FundsScreen> {
  String filter = "All";
  List<Map<dynamic, dynamic>> myList = [
    {
      "Title": "Support Pamdemic",
      "Description": "Description here",
      "Status": "Accepted",
      "Target": "30000ETH",
      "Scope": "Russia",
    },
    {
      "Title": "Support Pamdemic",
      "Description": "Description here",
      "Status": "Accepted",
      "Target": "30000ETH",
      "Scope": "Russia",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        //const SearchBar(),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'All Funds',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 130,
            height: 45,
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: Colors.grey[200],
            ),
            child: DropdownButton<String>(
              underline: const SizedBox(),
              isExpanded: true,
              focusColor: Colors.grey,
              items: <String>['All', 'Pending', 'Rejected', 'Approved']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  filter = val!;
                });
              },
              value: filter,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Scroll left and right',
            style: TextStyle(fontSize: 13),
          ),
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
              rows: myList.isNotEmpty
                  ? myList
                      .map(
                        (e) => DataRow(
                          cells: [
                            DataCell(Text(e['Title'],
                                overflow: TextOverflow.ellipsis)),
                            DataCell(Text(e['Description'],
                                overflow: TextOverflow.ellipsis)),
                            DataCell(Text(e['Status'],
                                overflow: TextOverflow.ellipsis)),
                            DataCell(Text(e['Target'],
                                overflow: TextOverflow.ellipsis)),
                            DataCell(Text(e['Scope'],
                                overflow: TextOverflow.ellipsis)),
                          ],
                        ),
                      )
                      .toList()
                  : const [],
            )),
      ],
    );
  }
}
