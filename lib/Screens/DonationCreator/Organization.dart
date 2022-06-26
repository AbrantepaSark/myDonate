// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CreateForOrganisation extends StatefulWidget {
  const CreateForOrganisation({Key? key}) : super(key: key);

  @override
  State<CreateForOrganisation> createState() => _CreateForOrganisationState();
}

class _CreateForOrganisationState extends State<CreateForOrganisation> {
  final _formKey = GlobalKey<FormState>();

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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Organisation",
                    style: TextStyle(
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
                lable("Other supporting Documents"),
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
                // ElevatedButton(
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
