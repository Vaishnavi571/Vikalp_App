import 'package:flutter/material.dart';

class TvRadioHostRoadmap extends StatelessWidget {
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
        "TV/Radio Host Roadmap",
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
        image: AssetImage('assets/images/host.png'),
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
"Earn a Bachelor's Degree in Communications or Journalism",
[
_buildTreeNode(
'Develop strong communication skills',
[],
),
_buildTreeNode(
'Learn journalistic principles and ethics',
[],
),
_buildTreeNode(
'Gain experience in reporting and broadcasting',
[],
),
],
),
_buildTreeNode(
"Pursue a Master's Degree in Journalism or Mass Communications",
[
_buildTreeNode(
"Gain advanced knowledge of journalism principles and practices",
[],
),
_buildTreeNode(
'Develop specialized knowledge in a particular area, such as business or politics',
[],
),
],
),
_buildTreeNode(
'Participate in Broadcasting Workshops and Training Programs',
[
_buildTreeNode(
'Learn from experienced broadcasters and media professionals',
[],
),
_buildTreeNode(
'Develop skills in writing, editing, and producing for radio and TV',
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
'Gain Experience in Broadcasting and Journalism',
[
_buildTreeNode(
'Develop skills in interviewing and reporting',
[],
),
_buildTreeNode(
'Learn to write and edit scripts for radio and TV',
[],
),
_buildTreeNode(
'Gain experience in presenting news and other content on air',
[],
),
],
),
_buildTreeNode(
'Develop a Specialized Area of Expertise',
[
_buildTreeNode(
'Become an expert in a particular field, such as politics or sports',
[],
),
_buildTreeNode(
'Develop specialized knowledge of the issues and topics in your area of expertise',
[],
),
],
),
_buildTreeNode(
'Build a Strong Online Presence',
[
_buildTreeNode(
'Develop a following on social media',
[],
),
_buildTreeNode(
'Create and maintain a personal website or blog',
[],
),
_buildTreeNode(
'Use online platforms to engage with your audience and build your brand',
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
'Start in a Small Market or Local Radio/TV Station',
[
_buildTreeNode(
'Develop your skills and gain experience in a smaller market',
[],
),
_buildTreeNode(
'Build relationships with colleagues and industry professionals',
[],
),
],
),
_buildTreeNode(
'Transition to a Larger Market or National Network',
[
_buildTreeNode(
'Use your experience and connections to advance your career',
[],
),
_buildTreeNode(
'Develop your on-air persona and brand',
[],
),
],
),
_buildTreeNode(
'Branch Out into Other Forms of Media',
[
_buildTreeNode(
'Develop skills in podcasting and other audio formats',
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