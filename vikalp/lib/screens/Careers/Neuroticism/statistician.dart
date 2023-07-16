import 'package:flutter/material.dart';

class StatisticianRoadmap extends StatelessWidget {
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
        "Statistician Roadmap",
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
        image: AssetImage('assets/images/statistics.png'),
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
"Earn a Bachelor's Degree in Statistics or a Related Field",
[
_buildTreeNode(
'Gain a strong foundation in statistical theory and methods',
[],
),
_buildTreeNode(
'Learn to use statistical software such as R or SAS',
[],
),
],
),
_buildTreeNode(
"Pursue a Master's Degree in Statistics or a Related Field",
[
_buildTreeNode(
'Develop expertise in a specialized area such as biostatistics or data science',
[],
),
_buildTreeNode(
'Participate in research projects to gain hands-on experience',
[],
),
],
),
_buildTreeNode(
'Obtain Certification as a Professional Statistician',
[
_buildTreeNode(
'Become an Accredited Professional Statistician (PStat®) through the American Statistical Association',
[],
),
_buildTreeNode(
'Obtain certification in a specialized area such as Six Sigma or Lean Six Sigma',
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
'Gain Experience through Internships or Entry-Level Roles',
[
_buildTreeNode(
'Apply statistical methods and software to real-world problems',
[],
),
_buildTreeNode(
'Develop skills in data management and analysis',
[],
),
],
),
_buildTreeNode(
'Specialize in a Specific Area of Statistics',
[
_buildTreeNode(
'Develop expertise in areas such as biostatistics, environmental statistics, or financial statistics',
[],
),
_buildTreeNode(
'Stay current with developments in the field through continuing education and participation in professional organizations',
[],
),
],
),
_buildTreeNode(
'Develop Communication and Interpersonal Skills',
[
_buildTreeNode(
'Learn to effectively communicate statistical concepts to non-experts',
[],
),
_buildTreeNode(
'Develop skills in collaboration and teamwork',
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
'Advance to Senior or Lead Statistician',
[
_buildTreeNode(
'Develop skills in project management and leadership',
[],
),
_buildTreeNode(
'Manage teams of statisticians and oversee multiple projects',
[],
),
],
),
_buildTreeNode(
'Transition to a Consulting or Management Role',
[
_buildTreeNode(
'Develop skills in client management and business development',
[],
),
_buildTreeNode(
'Apply statistical methods to improve organizational performance and decision-making',
[],
),
],
),
_buildTreeNode(
'Pursue a Career in Academia or Research',
[
_buildTreeNode(
'Obtain a Ph.D. in Statistics or a Related Field',
[],
),
_buildTreeNode(
'Conduct original research and publish findings in academic journals',
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