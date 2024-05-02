import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prayas_dev_portfolio/pages/contact_page.dart';
import 'package:prayas_dev_portfolio/pages/project_page.dart';
import 'package:prayas_dev_portfolio/pages/resume_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation boxAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = Tween(begin: 50.0, end: 400.0).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.red.shade200,
        title: const Text(
          'P R A Y A S',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/passport_size.png'),
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
                    'assets/images/passport_size.png',
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
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          child: ListView(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'A Bit About Me',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 300,
                    child: Center(
                      child: Text(
                          'I have a lot of expertise developing android apps and am a creative that is flexible and passionate. Thrilled to use technology to improve people\'s lives. Competent in both frontend and backend programming and well-versed in Flutter, Firebase, REST APIs, Dart, Java, and AWS Cloud.'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 130,
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ResumePage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade400,
                        ),
                        child: const Text(
                          'Resume',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(
                      height: 130,
                      width: 120,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProjectPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow.shade400),
                          child: const Text('Projects',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)))),
                  SizedBox(
                      height: 130,
                      width: 120,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ContactPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlueAccent.shade400),
                          child: const Text('Contact',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)))),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: animation.value,
                width: animation.value,
                child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/IMG_0694.jpeg'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        child: Divider(
                          height: 15,
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        'Phone',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      const Text(
                        '7505645990',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      const Text(
                        'prayashthakur6@gmail.com',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Follow',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () async {
                                const url =
                                    'https://www.linkedin.com/in/prayas-jadaun-2328301ba/'; // URL to open
                                if (await canLaunch(url)) {
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
      ),
    );
  }
}
