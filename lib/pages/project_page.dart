import 'package:flutter/material.dart';
import 'package:prayas_dev_portfolio/pages/contact_page.dart';
import 'package:prayas_dev_portfolio/pages/resume_page.dart';

class ProjectPage extends StatelessWidget {
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactPage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                const Center(
                    child: Text(
                  'Projects',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1),
                )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        'Project 1',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const Text(
                      'Job Portal Website with Carrier Counselling Chat Bot:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                        ' The goal of Jobmaze, a complete employment portal website, is to give companies and job searchers an easy-to-use and seamless experience. Modern features are included into the platform to improve user interaction and expedite the job search process. Carrier Counselling Chat bot,Feed Section, User Profile, User Authentication, and Message Section are some of the important sections.'),
                    Image.asset('assets/projectsImage/neural.jpg'),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        'Project 2',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const Text(
                      'SoleSeeker:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text('In this app, we provide stylish shoes for men'),
                    Image.asset('assets/projectsImage/Soleseeker.png'),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        'Project 3',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const Text(
                      'CodeLoom:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                        'CodeLoom, your comprehensive Flutter app hub, offers a treasure trove of handwritten notes covering a myriad of programming languages including C, C++, Java, Python, HTML, CSS, JavaScript, Android Studio, and Data Structures & Algorithms (DSA). Dive into a vast library of PDF books encompassing Java, C#, Python programming, algorithms, Android programming, DSA, coding interviews, and Grokking algorithms. Elevate your skills with expert-led courses spanning Cybersecurity, Java development, Python development, AR/VR, and more. Whether you\'re a beginner or a seasoned developer, CodeLoom equips you with the tools and resources to excel in the dynamic world of software development.'),
                    Image.asset('assets/projectsImage/Codeloom.png'),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
