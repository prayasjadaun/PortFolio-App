
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:prayas_dev_portfolio/pages/contact_page.dart';
import 'package:prayas_dev_portfolio/pages/project_page.dart';
import 'package:prayas_dev_portfolio/pages/resume_pdf.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResumePage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.assignment_outlined),
                  title: const Text('Projects',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProjectPage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.contacts),
                  title: const Text('Contact',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactPage()));
                  },
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Container(
              color: Colors.grey.shade100,
              child: ListView(
                children: [
                  Center(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       const Text(
                          'Resume',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                              onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ResumePdf()));
                          }, child:const Text('Resume', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),)),
                        )
                      ],
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Internship',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'April 23 - July 23',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'LinuxWorld PVT. LTD',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        const Text(
                            '• In this internship I learned lots of technology like AWS Cloud, Docker, Linux, Networking, and many more'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'August 21 - Feb 22',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Saransh Info Tech',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                            '• In this internship I learned about HTML, CSS and its applications in the real world and build WordPress Projects'),
                        const SizedBox(
                          height: 25,
                          width: double.infinity,
                          child: Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                        const Text(
                          'Education',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'August 23 - June 25',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Master of Computer Application |',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        const Text('KR Mangalam University Gurugram, Haryana'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'August 18 - June 21',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Bachelor of Computer Science | ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                            'Dr. Bhimrao Ambedkar University, Khandari, Agra'),
                        const SizedBox(
                          height: 25,
                          width: double.infinity,
                          child: Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                        const Text(
                          'Skills',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          ' • Flutter',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        const Text(
                          ' • Dart',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        const Text(
                          ' • Firebase',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        const Text(
                          ' • Fast APIs',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        const Text(
                          ' • AWS Cloud',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        const Text(
                          ' • Java',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        const Text(
                          ' • Linux',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        const Text(
                          ' • Figma',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        const Text(
                          ' • Git',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        const Text(
                          ' • HTML',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        const Text(
                          ' • CSS',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 25,
                          width: double.infinity,
                          child: Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                        const Text(
                          'Projects',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            const url =
                                'https://github.com/prayasjadaun/jobmage'; // URL to open
                            if (await canLaunch(url)) {
                              await launch(url); // Open the URL
                            } else {
                              throw 'Could not launch $url'; // Handle error
                            }
                          },
                          icon: const Text(
                            'JOBMAZE',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                        const Text(
                            'A platform for all-in-one solution for job search, resources, and self-assessment.'),
                        const Text(
                            'Technologies used: React.Js, Node.Js, MongoDb, Axios,Bycrpt and JWT'),
                        const Text('Duration: Feb-2024 – Present'),
                        const Text('Team Size: 4'),
                        IconButton(
                          onPressed: () async {
                            const url =
                                'https://github.com/prayasjadaun/Prayas_PortFolio'; // URL to open
                            if (await canLaunch(url)) {
                              await launch(url); // Open the URL
                            } else {
                              throw 'Could not launch $url'; // Handle error
                            }
                          },
                          icon: const Text(
                            'PORTFOLIO',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                        const Text(' Technologies used: Flutter, Dart'),
                        IconButton(
                          onPressed: () async {
                            const url =
                                'https://github.com/prayasjadaun/SoleSeeker'; // URL to open
                            if (await canLaunch(url)) {
                              await launch(url); // Open the URL
                            } else {
                              throw 'Could not launch $url'; // Handle error
                            }
                          },
                          icon: const Text(
                            'SOLESEEKER',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                        const Text(' Technologies used: Flutter, Dart'),
                        IconButton(
                          onPressed: () async {
                            const url =
                                'https://github.com/prayasjadaun/CodeLoom'; // URL to open
                            if (await canLaunch(url)) {
                              await launch(url); // Open the URL
                            } else {
                              throw 'Could not launch $url'; // Handle error
                            }
                          },
                          icon: const Text(
                            'CODELOOM',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                        const Text(
                            ' Technologies used: Flutter, Dart, Firebase'),
                        const SizedBox(
                          height: 25,
                          width: double.infinity,
                          child: Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                        const Text(
                          'Certifications',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          ' • Certificate of Cloud Computing by LinuxWorld Pvt. Ltd',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          ' • Flutter & Dart The Complete Guide, Udemy ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          ' • Java Training Crash Course, Udemy  ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: double.infinity,
                                  child: Divider(
                                    height: 15,
                                    thickness: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                const Text(
                                  'Phone',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                const Text(
                                  '7505645990',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Email',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                const Text(
                                  'prayashthakur6@gmail.com',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () async {
                                          const url =
                                              'https://www.linkedin.com/in/prayas-jadaun-2328301ba/'; // URL to open
                                          // ignore: deprecated_member_use
                                          if (await canLaunch(url)) {
                                            // ignore: deprecated_member_use
                                            await launch(url); // Open the URL
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
                ],
              ),
            ),
          ),
        ));
  }
}
