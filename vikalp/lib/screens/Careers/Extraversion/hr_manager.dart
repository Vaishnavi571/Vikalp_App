import 'package:flutter/material.dart';

class HRManagerRoadmap extends StatelessWidget {
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
        "HR Manager Roadmap",
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
        image: AssetImage('assets/images/human-resources.png'),
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
"Earn a Bachelor's Degree in Human Resources Management or a Related Field",
[
_buildTreeNode(
'Gain foundational knowledge in human resources management principles',
[],
),
_buildTreeNode(
'Develop communication and interpersonal skills',
[],
),
],
),
_buildTreeNode(
'Obtain Professional Certifications',
[
_buildTreeNode(
'Become a certified Professional in Human Resources (PHR)',
[],
),
_buildTreeNode(
'Become a Senior Professional in Human Resources (SPHR)',
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
'Develop skills in human resources software and systems',
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
'Gain Experience in All Areas of Human Resources Management',
[
_buildTreeNode(
'Develop skills in recruitment and staffing',
[],
),
_buildTreeNode(
'Learn to manage employee relations and labor relations',
[],
),
_buildTreeNode(
'Become knowledgeable in compensation and benefits',
[],
),
_buildTreeNode(
'Learn to manage performance, training and development',
[],
),
],
),
_buildTreeNode(
'Specialize in a Specific Area of Human Resources',
[
_buildTreeNode(
'Develop expertise in areas such as employee benefits or compensation',
[],
),
_buildTreeNode(
'Obtain additional training or certification in specialized areas',
[],
),
],
),
_buildTreeNode(
'Become Knowledgeable in Employment Law and Regulations',
[
_buildTreeNode(
'Learn to navigate employment laws and regulations',
[],
),
_buildTreeNode(
'Stay current on new legislation and regulations',
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
'Advance to a Senior Human Resources Manager or Director Position',
[
_buildTreeNode(
'Develop skills in strategic planning and organizational development',
[],
),
_buildTreeNode(
'Oversee human resources for multiple departments or locations',
[],
),
],
),
_buildTreeNode(
'Transition to an HR Consulting or Business Development Role',
[
_buildTreeNode(
'Develop skills in client management and business development',
[],
),
_buildTreeNode(
'Apply human resources principles to improve organizational performance',
[],
),
],
),
_buildTreeNode(
'Start an HR Consulting Firm or Business',
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
),
);
}
Widget _buildTreeNode(String title, List<Widget> children) {
    return ExpansionTile(
      title: Text(title),
      children: children,
    );
  }
}