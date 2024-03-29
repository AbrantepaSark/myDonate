import 'package:flutter/material.dart';

//import '../Widgets/donateButton.dart';

class SingleDonateScreen extends StatefulWidget {
  static const routeName = 'single_donate_screen';

  const SingleDonateScreen({Key? key}) : super(key: key);

  @override
  State<SingleDonateScreen> createState() => _SingleDonateScreenState();
}

class _SingleDonateScreenState extends State<SingleDonateScreen> {
  bool viewDoner = false;

  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    void dialogsHandler() {
      showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          contentPadding: const EdgeInsets.all(20),
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text("How much you wanna donate?"),
            ),
            amountToDonate(Colors.yellow[200], "5ETH"),
            amountToDonate(Colors.blue[100], "10ETH"),
            amountToDonate(Colors.blue[300], "15ETH"),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter amount",
                  focusColor: Colors.white,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  filled: true,
                  //make hint text
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 86, 81, 81),
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                  //lable style
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                controller: _emailController,
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
            const SizedBox(height: 10),
            ElevatedButton(
              style: ButtonStyle(
                  alignment: Alignment.center,
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ))),
              onPressed: () {},
              child: const SizedBox(
                  height: 45,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Submit',
                    ),
                  )),
            )
          ],
        ),
      );
    }

    void viewDonerToggler() {
      setState(() {
        viewDoner = !viewDoner;
      });
    }

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
      body: Stack(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * .4,
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage("assets/images/health.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      const Text(
                        'Support For Sudan Famine',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
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
                            style: TextStyle(
                                color: Color.fromARGB(255, 11, 7, 249)),
                          ),
                          Text(
                            "40%",
                            style: TextStyle(
                                color: Color.fromARGB(255, 11, 7, 249)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Stack(
                        children: [
                          Container(
                            width: width,
                            height: 12,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 227, 215, 215),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          Container(
                            width: width * .4,
                            height: 12,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(173, 54, 51, 227),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                            ),
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
                                horizontal: 15, vertical: 7),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(185, 54, 51, 227),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: const Text(
                              "20 Days Left",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: dialogsHandler,
                        child: Container(
                          width: width,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 3, 58, 240),
                                Color.fromARGB(197, 101, 25, 50),
                                // Color.fromARGB(183, 75, 123, 76),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                          child: const Text(
                            'Donate',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      // const CustomedButton(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                            onPressed: viewDonerToggler,
                            child: Text(
                              'View Doners',
                              style: TextStyle(
                                color: Colors.blue[900]!,
                                decoration: TextDecoration.underline,
                              ),
                            )),
                      ),
                      const SizedBox(height: 10),
                      viewDoner
                          ? SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: dataTable,
                            )
                          : const SizedBox(),
                    ],
                  ),
                )
              ],
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
    );
  }

  Container amountToDonate(Color? color, String amount) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Text(amount),
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
          Icon(icon, size: 20),
          const SizedBox(width: 5),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
