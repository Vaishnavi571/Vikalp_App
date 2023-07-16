import 'package:flutter/material.dart';

class CommunityOrganizerRoadmap extends StatelessWidget {
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
            "Community Organizer Roadmap",
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
                image: AssetImage('assets/images/community.png'),
                height: 400,
                width: 300,
                fit: BoxFit.contain,
              ),
            ],
          ),
          _buildTreeNode(
            'Education and Training',
            [
              _buildTreeNode(
                "Earn a Bachelor's Degree in a Related Field",
                [
                  _buildTreeNode(
                    'Gain foundational knowledge in community organizing principles and practices',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in public speaking, writing, and communication',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                "Pursue a Master's Degree in Community Organizing, Public Administration, or a Related Field",
                [
                  _buildTreeNode(
                    'Gain advanced knowledge and skills in community organizing and advocacy',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop expertise in specific areas of interest, such as social justice or environmental advocacy',
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
                    'Develop skills in grassroots organizing, coalition building, and advocacy',
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
                'Gain Experience Working with Diverse Communities',
                [
                  _buildTreeNode(
                    'Develop skills in building relationships and working collaboratively with community members',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to navigate complex political and social environments',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Specific Area of Community Organizing',
                [
                  _buildTreeNode(
                    'Develop expertise in areas such as housing advocacy or youth organizing',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain additional training or certification in specialized areas',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Become a Certified Community Organizer (CCO)',
                [
                  _buildTreeNode(
                    'Gain recognition as a professional community organizer',
                    [],
                  ),
                  _buildTreeNode(
                    'Demonstrate advanced skills in organizing, leadership, and advocacy',
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
                'Advance to Leadership Roles within Nonprofit Organizations or Government Agencies',
                [
                  _buildTreeNode(
                    'Develop skills in managing staff and budgets',
                    [],
                  ),
                  _buildTreeNode(
                    'Oversee multiple programs or initiatives',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Start a Community Organizing Consulting Firm or Business',
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
