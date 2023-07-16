import 'package:flutter/material.dart';

class AdvertisingExecutiveRoadmap extends StatelessWidget {
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
        "Advertising Executive Roadmap",
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
        image: AssetImage('assets/images/advertising.png'),
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
"Earn a Bachelor's Degree in Marketing or Advertising",
[
_buildTreeNode(
'Gain a foundation in marketing principles and consumer behavior',
[],
),
_buildTreeNode(
'Learn about advertising strategies and tactics',
[],
),
],
),
_buildTreeNode(
"Pursue an Advertising Master's Degree or MBA",
[
_buildTreeNode(
'Develop advanced skills in advertising and marketing',
[],
),
_buildTreeNode(
'Learn about business management and leadership',
[],
),
],
),
_buildTreeNode(
'Gain Practical Experience through Internships or Entry-Level Roles',
[
_buildTreeNode(
'Apply principles learned in coursework to real-world projects',
[],
),
_buildTreeNode(
'Develop skills in marketing research and data analysis',
[],
),
_buildTreeNode(
'Work on creative campaigns and develop copywriting skills',
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
'Specialize in a Specific Industry or Type of Advertising',
[
_buildTreeNode(
'Develop expertise in areas such as digital advertising or brand strategy',
[],
),
_buildTreeNode(
'Stay up to date with emerging advertising trends and technologies',
[],
),
],
),
_buildTreeNode(
'Develop Strong Communication and Negotiation Skills',
[
_buildTreeNode(
'Communicate effectively with clients and team members',
[],
),
_buildTreeNode(
'Negotiate contracts and manage budgets effectively',
[],
),
],
),
_buildTreeNode(
'Become a Thought Leader in the Advertising Industry',
[
_buildTreeNode(
'Write articles or speak at industry conferences on advertising topics',
[],
),
_buildTreeNode(
'Share insights and expertise with colleagues and clients',
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
'Advance to Senior Advertising Executive or Marketing Director',
[
_buildTreeNode(
'Lead teams and oversee multiple advertising campaigns',
[],
),
_buildTreeNode(
'Develop and implement long-term advertising strategies',
[],
),
],
),
_buildTreeNode(
'Transition to a Consulting or Executive Coaching Role',
[
_buildTreeNode(
'Apply advertising principles to improve organizational performance',
[],
),
_buildTreeNode(
'Develop leadership and management skills',
[],
),
],
),
_buildTreeNode(
'Start an Advertising Agency or Consulting Firm',
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