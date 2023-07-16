import 'package:flutter/material.dart';

class ArchivistRoadmap extends StatelessWidget {
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
        "Archivist Roadmap",
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
        image: AssetImage('assets/images/archivist.png'),
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
"Earn a Bachelor's Degree in Library Science or a Related Field",
[
_buildTreeNode(
"Gain foundational knowledge in library and archival sciences",
[],
),
_buildTreeNode(
'Develop research and analytical skills',
[],
),
],
),
_buildTreeNode(
"Pursue a Master's Degree in Library Science or Archival Studies",
[
_buildTreeNode(
"Develop specialized knowledge in preservation and conservation techniques",
[],
),
_buildTreeNode(
'Gain hands-on experience through internships or practicums',
[],
),
],
),
_buildTreeNode(
'Obtain Certification from the Academy of Certified Archivists (ACA)',
[
_buildTreeNode(
'Demonstrate expertise in archival practices and ethics',
[],
),
_buildTreeNode(
'Stay up-to-date with developments in the field through continuing education',
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
'Gain Experience in Archival Work',
[
_buildTreeNode(
'Learn to catalog and preserve historical documents and artifacts',
[],
),
_buildTreeNode(
'Develop skills in digitization and electronic records management',
[],
),
],
),
_buildTreeNode(
'Specialize in a Particular Type of Archive or Collection',
[
_buildTreeNode(
'Develop expertise in areas such as government records or photographic collections',
[],
),
_buildTreeNode(
'Build knowledge of the unique challenges associated with different types of materials',
[],
),
],
),
_buildTreeNode(
'Develop Communication and Outreach Skills',
[
_buildTreeNode(
'Learn to effectively communicate with diverse audiences',
[],
),
_buildTreeNode(
'Develop skills in public programming and community engagement',
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
'Advance to Senior Archivist or Collection Manager',
[
_buildTreeNode(
'Develop skills in budgeting and personnel management',
[],
),
_buildTreeNode(
'Oversee the management and growth of an archive or collection',
[],
),
],
),
_buildTreeNode(
'Transition to a Consulting or Research Role',
[
_buildTreeNode(
'Develop expertise in a particular area of archival work',
[],
),
_buildTreeNode(
'Apply archival principles to inform policy and decision-making',
[],
),
],
),
_buildTreeNode(
'Become a Department Head or Director of an Archive or Collection',
[
_buildTreeNode(
'Develop leadership and strategic planning skills',
[],
),
_buildTreeNode(
'Shape the direction and priorities of an archive or collection',
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