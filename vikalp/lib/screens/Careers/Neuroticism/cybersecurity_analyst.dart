import 'package:flutter/material.dart';

class CybersecurityAnalystRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Color(0xffece0bc),
  appBar: AppBar(
      elevation: 4,
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xff380955),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      title: Text(
        "Cyber Security Analyst Roadmap",
        style: TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: Color(0xffffffff),
        ),
      ),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_sharp),
            onPressed: () {
              Navigator.pop(context);
            },
          );
        },
      )),
body: Center(
child: _buildTree(),
),
);
}

Widget _buildTree() {
return SingleChildScrollView(
child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
  Stack(
    alignment: Alignment.center,
    children: [
      ///***If you have exported images you must have to copy those images in assets/images directory.
      Image(
        image: AssetImage('assets/images/cyber-security.png'),
        height:400,
        width: 300,
        fit: BoxFit.contain,
      ),

    ],
  ),
_buildTreeNode(
'Education and Training',
[
_buildTreeNode(
"Earn a Bachelor's Degree in Cybersecurity or a Related Field",
[
_buildTreeNode(
'Gain foundational knowledge in computer networking and security principles',
[],
),
_buildTreeNode(
'Develop skills in programming languages and security tools',
[],
),
],
),
_buildTreeNode(
'Pursue a Cybersecurity Certification',
[
_buildTreeNode(
'Become a Certified Information Systems Security Professional (CISSP) by passing the CISSP Exam',
[],
),
_buildTreeNode(
'Become a Certified Ethical Hacker (CEH) by passing the CEH Exam',
[],
),
_buildTreeNode(
'Become a Certified Information Systems Auditor (CISA) by passing the CISA Exam',
[],
),
],
),
_buildTreeNode(
'Gain Practical Experience through Internships or Entry-Level Roles',
[
_buildTreeNode(
'Apply principles learned in coursework to real-world scenarios',
[],
),
_buildTreeNode(
'Develop skills in risk assessment and incident response',
[],
),
],
),
],
),
_buildTreeNode(
'Developing Skills and Expertise',
[
_buildTreeNode(
'Gain Experience in Vulnerability Management',
[
_buildTreeNode(
'Develop skills in vulnerability assessment and penetration testing',
[],
),
_buildTreeNode(
'Learn to identify and mitigate security threats and risks',
[],
),
],
),
_buildTreeNode(
'Specialize in a Specific Area of Cybersecurity',
[
_buildTreeNode(
'Develop expertise in areas such as network security or cloud security',
[],
),
_buildTreeNode(
'Obtain additional training or certification in specialized areas',
[],
),
],
),
_buildTreeNode(
'Become a Security Analyst or Security Consultant',
[
_buildTreeNode(
'Develop skills in analyzing security risks and developing mitigation strategies',
[],
),
_buildTreeNode(
'Provide advice and guidance to organizations on security best practices',
[],
),
],
),
],
),
_buildTreeNode(
'Building a Career',
[
_buildTreeNode(
'Advance to Senior Cybersecurity Analyst or Security Manager',
[
_buildTreeNode(
'Develop skills in strategic planning and security policy development',
[],
),
_buildTreeNode(
'Oversee security teams and manage security operations',
[],
),
],
),
_buildTreeNode(
'Transition to a Risk Management or Compliance Role',
[
_buildTreeNode(
'Develop skills in risk assessment and regulatory compliance',
[],
),
_buildTreeNode(
'Apply cybersecurity principles to improve organizational risk management practices',
[],
),
],
),
_buildTreeNode(
'Start a Cybersecurity Consulting Firm or Business',
[
_buildTreeNode(
'Develop a niche in the market and build a client base',
[],
),
_buildTreeNode(
'Hire additional staff and expand the business',
[],
),
],
),
],
),
],
)
);
}


Widget _buildTreeNode(String title, List<Widget> children) {
    return ExpansionTile(
      title: Text(title),
      children: children,
    );
  }
}