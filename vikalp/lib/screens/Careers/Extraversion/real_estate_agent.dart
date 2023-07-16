import 'package:flutter/material.dart';

class RealEstateAgentRoadmap extends StatelessWidget {
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
        "Real Estate Agent Roadmap",
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
        image: AssetImage('assets/images/real-estate.png'),
        height:400,
        width: 300,
        fit: BoxFit.contain,
      ),

    ],
  ),
_buildTreeNode(
'Education and Licensing',
[
_buildTreeNode(
'Earn a High School Diploma or Equivalent',
[
_buildTreeNode(
'Focus on courses in math, finance, and business',
[],
),
],
),
_buildTreeNode(
'Complete Real Estate Education Requirements',
[
_buildTreeNode(
'Take pre-licensing courses as required by state regulations',
[],
),
_buildTreeNode(
'Complete continuing education courses to maintain license',
[],
),
],
),
_buildTreeNode(
'Obtain Real Estate License',
[
_buildTreeNode(
'Pass the state licensing exam',
[],
),
_buildTreeNode(
'Complete additional licensing requirements as needed',
[],
),
],
),
],
),
_buildTreeNode(
'Building Experience and Skills',
[
_buildTreeNode(
'Work with a Brokerage Firm',
[
_buildTreeNode(
'Gain experience working with clients and closing deals',
[],
),
_buildTreeNode(
'Develop skills in property valuation and market analysis',
[],
),
],
),
_buildTreeNode(
'Specialize in a Niche Market or Property Type',
[
_buildTreeNode(
'Develop expertise in areas such as luxury homes or commercial real estate',
[],
),
_buildTreeNode(
'Obtain additional training or certification in specialized areas',
[],
),
],
),
_buildTreeNode(
'Develop Marketing and Networking Skills',
[
_buildTreeNode(
'Build a network of contacts through community involvement and social media',
[],
),
_buildTreeNode(
'Create effective marketing materials to showcase properties',
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
'Become a Broker or Open Your Own Firm',
[
_buildTreeNode(
'Develop leadership and management skills',
[],
),
_buildTreeNode(
'Hire and train agents to grow the business',
[],
),
],
),
_buildTreeNode(
'Join Professional Organizations and Associations',
[
_buildTreeNode(
'Network with other real estate professionals and stay up-to-date on industry trends',
[],
),
_buildTreeNode(
'Participate in continuing education and training opportunities',
[],
),
],
),
_buildTreeNode(
'Become a Real Estate Investor',
[
_buildTreeNode(
'Use knowledge and experience to invest in properties',
[],
),
_buildTreeNode(
'Develop skills in property management and financing',
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

Widget _buildTreeNode(String label, List<Widget> children) {
return ExpansionTile(
title: Text(label),
children: children,
);
}
}