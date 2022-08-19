import 'package:flutter/material.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}

class MyItem {
  bool isExpanded;
  final String header;
  final String body;
  final int key;
  MyItem({
    this.isExpanded = false,
    required this.header,
    required this.body,
    required this.key,
  });
}

class _FAQsState extends State<FAQs> {
  final List<MyItem> _items = [
    MyItem(
      key: 1,
      header: 'How Does MyDonate Work?',
      body:
          'You can start your fundraising by providing the necessary details with regards to your fundraising and provide target funds. You will have access to a user dashboard to track your fundraising. You can also pin donations by specifying the pin donation duration to reach out to a wider audience of the community. MyDonate makes it incredibly easy to raise funds to support causes of societal concern.',
    ),
    MyItem(
      key: 2,
      header: 'What Can I Raise Funds For?',
      body:
          'People raise funds for almost everything, including Environment, Education, Famine, Health, Community, War, Disaster and Others. We’re always amazed at the ways people use MyDonate to raise funds to support causes of societal concern.',
    ),
    MyItem(
      key: 3,
      header: 'How are Fundraisers Safe?',
      body:
          'Fundraisers connect to the platform with their preferred wallet and as such, we advise them not to expose their private keys on the platform.',
    ),
    MyItem(
      key: 4,
      header: 'How Can I Withdraw Funds?',
      body:
          'With your wallet provided in uploading your fundraising, donations made to your fundraising goes straight to the available wallet provided and can be used when needed even-though target funds have not been reached.',
    ),
    MyItem(
      key: 5,
      header: 'Are There Any Deadlines or Time Limits?',
      body:
          'Once your fundraising has been approved, you can receive donations and make withdrawals as and when the funds are needed.',
    ),
    MyItem(
      key: 6,
      header: 'What If I Do Not Reach My Target Funds?',
      body:
          'No problem. With MyDonate, your fundraising will still be available to the community to receive funds to support the cause you are championing if you have not reached target funds and fundraising date is due. Once you reach your target funds, the progress meter on your fundraising will show that you have received more than your target funds.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: _items
            .map((MyItem item) => Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ExpansionTile(
                    key: Key(item.key.toString()),
                    tilePadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 15,
                    ),
                    title: Text(item.header),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          bottom: 20,
                        ),
                        child: Text(
                          item.body,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
