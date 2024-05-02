import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prayas_dev_portfolio/pages/project_page.dart';
import 'package:prayas_dev_portfolio/pages/resume_page.dart';
import 'package:prayas_dev_portfolio/pages/success_page.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _nameController = TextEditingController();
  // Controllers for the text fields
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  void dispose() {
    // Dispose of the controllers when the screen is disposed to avoid memory leaks
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  Future submit() async {
    // Extract text from controllers and trim any leading/trailing whitespace
    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final phone = _phoneController.text.trim();
    final address = _addressController.text.trim();
    // Check if any of the fields are empty

    if (name.isEmpty || email.isEmpty || phone.isEmpty || address.isEmpty) {
      // Display a SnackBar if any field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Fill all fields'),
          duration: Duration(
              seconds: 3), //Duration for how long the SnackBar is displayed
        ),
      );
    } else {
      // All fields are filled, call the function to add user details
      addUserDetails(
        _nameController.text.trim(),
        _emailController.text.trim(),
        int.parse(_phoneController.text.trim()),
        _addressController.text.trim(),
      );
    }
  }

  void addUserDetails(String name, String email, int phone, String address) {
    try {
      print('Name: $name');
      print('Email: $email');
      print('Phone Number: $phone');
      print('Address: $address');
    } catch (e) {
      // Handle any errors that may occur
      print('Error adding user details: $e');
    }

    // Show an alert dialog with the error message.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: const Text('An error occurred while saving data'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red.shade200,
        title: const Text(
          'P R A Y A S',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/IMG_0694.jpeg'),
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.red.shade50,
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Center(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(
                        'assets/images/IMG_0694.jpeg',
                      ),
                    ),
                  )),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text('Resume',
                    style:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResumePage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.assignment_outlined),
                title: const Text('Projects',
                    style:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProjectPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.contacts),
                title: const Text('Contact',
                    style:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ContactPage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            const SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Contact',
                    style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const Text('Looking forward to hearing from you'),
                const SizedBox(height: 10),
                const Text('Phone',
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                const Text('7505645990'),
                const SizedBox(height: 10),
                const Text('Email',
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                const Text('prayashthakur6@gmail.com'),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 1),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.5),
                        child: Container(
                          color: Colors.white,
                          child: Card(
                            child: TextField(
                              controller: _nameController,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                hintText: 'Enter your Name',
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.5),
                        child: Container(
                          color: Colors.white,
                          child: Card(
                            child: TextField(
                              controller: _emailController,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                hintText: 'Enter your Email',
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Phone number',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.5),
                        child: Container(
                          color: Colors.white,
                          child: Card(
                            child: TextField(
                              controller: _phoneController,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                hintText: 'Enter your Phone number',
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Address',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.5),
                        child: Container(
                          color: Colors.white,
                          child: Card(
                            child: TextField(
                              controller: _addressController,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                hintText: 'Enter your Address',
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SuccessPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: const Text('Submit',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold))),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 400,
                      child: Divider(
                        height: 15,
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'Phone',
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    const Text(
                      '7505645990',
                      style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Email',
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    const Text(
                      'prayashthakur6@gmail.com',
                      style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Follow',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () async {
                              const url =
                                  'https://www.linkedin.com/in/prayas-jadaun-2328301ba/'; // URL to open
                              if (await canLaunchUrl(url as Uri)) {
                                await launchUrl(url as Uri); // Open the URL
                              } else {
                                throw 'Could not launch $url'; // Handle error
                              }
                            },
                            icon: const Icon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              const url =
                                  'https://github.com/prayasjadaun'; // URL to open
                              if (await canLaunch(url)) {
                                await launch(url); // Open the URL
                              } else {
                                throw 'Could not launch $url'; // Handle error
                              }
                            },
                            icon: const Icon(
                              FontAwesomeIcons.github,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}