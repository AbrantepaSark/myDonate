// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DonateForm extends StatefulWidget {
  final String type;
  const DonateForm({Key? key, required this.type}) : super(key: key);

  @override
  State<DonateForm> createState() => _DonateFormState();
}

class _DonateFormState extends State<DonateForm> {
  final _formKey = GlobalKey<FormState>();

  String? dropdownValue = 'Select Category';
  DateTime today = DateTime.now();
  DateTime? _selectedDate;

  void _pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: today,
            //which date will display when user open the picker
            firstDate: today,
            //what will be the previous supported year in picker
            lastDate: DateTime(today.year +
                1)) //what will be the up to supported date in picker
        .then((pickedDate) {
      //then usually do the future job
      if (pickedDate == null) {
        //if user tap cancel then this function will stop
        return;
      }
      setState(() {
        //for rebuilding the ui
        _selectedDate = pickedDate;
      });
    });
  }

  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget lable(name) {
      return Column(
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 68, 71, 78),
            ),
          ),
          const SizedBox(height: 5),
        ],
      );
    }

    Widget inputCont(Widget child) {
      return Container(
        child: child,
        margin: const EdgeInsets.only(top: 3, bottom: 10),
        decoration: const BoxDecoration(
          color: Color.fromARGB(162, 204, 206, 210),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      );
    }

    InputDecoration formDeco(String hint) {
      return (InputDecoration(
        focusColor: Colors.white,

        border: InputBorder.none,
        hintText: hint,
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
      ));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.type,
                    style: const TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                lable("Full Name"),
                inputCont(
                  TextFormField(
                    controller: _emailController,
                    decoration: formDeco("eg. John Doe"),
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
                SizedBox(
                  height: 90,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              lable("Country"),
                              inputCont(
                                TextFormField(
                                  controller: _emailController,
                                  decoration: formDeco("Eg. Ghana"),
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
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              lable("City"),
                              inputCont(
                                TextFormField(
                                  controller: _emailController,
                                  decoration: formDeco("Eg. Sunyani"),
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
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              lable("Address"),
                              inputCont(
                                TextFormField(
                                  controller: _emailController,
                                  decoration: formDeco("Eg. Town Street, 200"),
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
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              lable("Email"),
                              inputCont(
                                TextFormField(
                                  controller: _emailController,
                                  decoration: formDeco("Eg. doe@gmail.com"),
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
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              lable("Contact"),
                              inputCont(
                                TextFormField(
                                  controller: _emailController,
                                  decoration: formDeco("Eg. +233548974517"),
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
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              lable("Residence"),
                              inputCont(
                                TextFormField(
                                  controller: _emailController,
                                  decoration: formDeco("Eg. WNT 18"),
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
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                widget.type == "Organisation"
                    ? Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: lable("Social Media Handles"),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 90,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        lable("Facebook"),
                                        inputCont(
                                          TextFormField(
                                            controller: _emailController,
                                            decoration: formDeco(
                                                "Eg. WouldSupport Page"),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
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
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        lable("YouTube"),
                                        inputCont(
                                          TextFormField(
                                            controller: _emailController,
                                            decoration: formDeco(
                                                "Eg. WorldSupport Page"),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
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
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 90,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        lable("Twitter"),
                                        inputCont(
                                          TextFormField(
                                            controller: _emailController,
                                            decoration:
                                                formDeco("Eg. WorldPage"),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
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
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        lable("Instagram"),
                                        inputCont(
                                          TextFormField(
                                            controller: _emailController,
                                            decoration:
                                                formDeco("Eg. InstaPage"),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
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
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(),
                lable("Purpose of Fund"),
                inputCont(
                  TextFormField(
                    maxLines: 4,
                    controller: _emailController,
                    decoration: formDeco("Purpose of fund goes here"),
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
                lable("Account for fund(ETH)"),
                inputCont(
                  TextFormField(
                    controller: _emailController,
                    decoration: formDeco("eg. 0x00000000000"),
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
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: lable("Donation Information"),
                ),
                const SizedBox(height: 10),
                lable("Title"),
                inputCont(
                  TextFormField(
                    controller: _emailController,
                    decoration: formDeco("eg. Support Child Education"),
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

                lable("Description"),
                inputCont(
                  TextFormField(
                    maxLines: 4,
                    controller: _emailController,
                    decoration: formDeco("Description"),
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
                ), // ElevatedButton(
                lable("Category"),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(162, 204, 206, 210),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: DropdownButton<String>(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    isExpanded: true,
                    underline: const SizedBox(),
                    value: dropdownValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'Select Category',
                      'Environmental',
                      'Education',
                      'Disaster',
                      'Health',
                      'Famine',
                      'Social',
                      'War',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 10),
                lable("Target"),
                inputCont(
                  TextFormField(
                    controller: _emailController,
                    decoration: formDeco("eg. 2,000USD"),
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
                lable("End Date"),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(162, 204, 206, 210),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _selectedDate ==
                                  null //ternary expression to check if date is null
                              ? 'No date selected'
                              : DateFormat.yMMMd().format(_selectedDate!),
                        ),
                        IconButton(
                          onPressed: _pickDateDialog,
                          icon: const Icon(Icons.calendar_month_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
                //   onPressed: () {
                //     if (_formKey.currentState!.validate()) {
                //       //_formKey.currentState!.save();

                //     }
                //   },
                //   child: const Text('Save'),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
