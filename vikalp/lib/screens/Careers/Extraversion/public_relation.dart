import 'package:flutter/material.dart';

class PublicRelationsRoadmap extends StatelessWidget {
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
        "Public Relation Specialist Roadmap",
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
        image: AssetImage('assets/images/public-relation.png'),
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
"Earn a Bachelor's Degree in Public Relations, Communications, Journalism or a Related Field",
[
_buildTreeNode(
'Gain foundational knowledge in public relations principles',
[],
),
_buildTreeNode(
'Develop strong writing, research, and critical thinking skills',
[],
),
],
),
_buildTreeNode(
'Pursue an Advanced Degree or Specialization',
[
_buildTreeNode(
"Obtain a Master's Degree in Public Relations, Communications, or a Related Field",
[],
),
_buildTreeNode(
'Specialize in a specific area such as crisis management, social media, or corporate communications',
[],
),
],
),
_buildTreeNode(
'Gain Practical Experience through Internships or Entry-Level Roles',
[
_buildTreeNode(
'Apply principles learned in coursework to real-world situations',
[],
),
_buildTreeNode(
'Develop skills in public relations software and tools',
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
'Build Strong Writing and Editing Skills',
[
_buildTreeNode(
'Develop skills in writing for different mediums such as press releases, speeches, and social media',
[],
),
_buildTreeNode(
'Learn to edit and proofread materials for accuracy and clarity',
[],
),
],
),
_buildTreeNode(
'Develop Strong Relationship-Building Skills',
[
_buildTreeNode(
'Learn to effectively communicate with clients, stakeholders, and the media',
[],
),
_buildTreeNode(
'Develop skills in networking and building long-term relationships',
[],
),
],
),
_buildTreeNode(
'Stay Current with Trends and Technology',
[
_buildTreeNode(
'Keep up-to-date with industry trends and best practices',
[],
),
_buildTreeNode(
'Develop skills in social media and other relevant technologies',
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
'Advance to Senior Public Relations Specialist or Manager',
[
_buildTreeNode(
'Develop skills in managing and mentoring teams',
[],
),
_buildTreeNode(
'Oversee multiple projects or campaigns simultaneously',
[],
),
],
),
_buildTreeNode(
'Transition to a Corporate Communications or Marketing Role',
[
_buildTreeNode(
'Develop skills in brand management and marketing strategy',
[],
),
_buildTreeNode(
'Apply public relations principles to improve brand reputation and performance',
[],
),
],
),
_buildTreeNode(
'Start a Public Relations Firm or Business',
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