import 'package:flutter/material.dart';

//import '../Widgets/badge.dart';

class SingleDonateScreen extends StatefulWidget {
  static const routeName = 'single_donate_screen';

  const SingleDonateScreen({Key? key}) : super(key: key);

  @override
  State<SingleDonateScreen> createState() => _SingleDonateScreenState();
}

class _SingleDonateScreenState extends State<SingleDonateScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var dataTable = DataTable(
      columns: const [
        DataColumn(
          label: Text(
            'Address',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn(
          label: Text(
            'Amount',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn(
          label: Text(
            'Date',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
      rows: const [
        DataRow(
          cells: [
            DataCell(Text('0x000000')),
            DataCell(Text('4ETH')),
            DataCell(Text('26th June, 2022')),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('0x000000')),
            DataCell(Text('4ETH')),
            DataCell(Text('26th June, 2022')),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('0x000000')),
            DataCell(Text('30ETH')),
            DataCell(Text('26th June, 2022)')),
          ],
        ),
      ],
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: height * .4,
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage("assets/images/health.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 10,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                children: [
                  const Text(
                    'Support For Sudan Famine',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 1,
                        child: labels(Icons.category_outlined, "Famine"),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: labels(Icons.account_balance_wallet_outlined,
                            "\$11,000/\$20,000"),
                      ),
                    ],
                  ),
                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Donations",
                        style:
                            TextStyle(color: Color.fromARGB(255, 11, 7, 249)),
                      ),
                      Text(
                        "40%",
                        style:
                            TextStyle(color: Color.fromARGB(255, 11, 7, 249)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Stack(
                    children: [
                      Container(
                        width: width,
                        height: 15,
                        color: const Color.fromARGB(255, 227, 215, 215),
                      ),
                      Container(
                        width: width * .4,
                        height: 15,
                        color: const Color.fromARGB(173, 54, 51, 227),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('30+ Donated'),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(173, 54, 51, 227),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Text(
                          "20 Days Left",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: dataTable,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container labels(IconData icon, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(129, 222, 213, 213),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
