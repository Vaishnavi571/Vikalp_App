import 'package:flutter/material.dart';

class ExecutiveAssistantRoadmap extends StatelessWidget {
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
            "Executive Assistant Roadmap",
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
                image: AssetImage('assets/images/assistant.png'),
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
                'Earn a High School Diploma or Equivalent',
                [
                  _buildTreeNode(
                    'Develop strong communication and organizational skills',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain proficiency in computer and office software',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pursue Postsecondary Education',
                [
                  _buildTreeNode(
                    "Earn an Associate's or Bachelor's Degree in a Related Field",
                    [],
                  ),
                  _buildTreeNode(
                    'Gain foundational knowledge in business and management principles',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Take Courses or Obtain Certifications in Specific Skills',
                [
                  _buildTreeNode(
                    'Develop expertise in areas such as event planning or project management',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain certification in software applications such as Microsoft Office or Adobe Creative Suite',
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
                'Gain Experience as an Administrative Assistant or Secretary',
                [
                  _buildTreeNode(
                    'Develop strong organizational and time management skills',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to manage calendars, appointments, and travel arrangements',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Learn to Manage Projects or Events',
                [
                  _buildTreeNode(
                    'Develop skills in planning and coordinating projects or events',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to manage budgets and timelines',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Obtain Experience in a Specific Industry or Type of Organization',
                [
                  _buildTreeNode(
                    'Develop industry-specific knowledge and terminology',
                    [],
                  ),
                  _buildTreeNode(
                    'Gain experience working in a particular type of organization, such as non-profit or government',
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
                'Advance to Executive Assistant or Office Manager',
                [
                  _buildTreeNode(
                    'Develop skills in managing teams and budgets',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to create and implement organizational policies and procedures',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Transition to a Specialized Role, such as Event Planner or Project Manager',
                [
                  _buildTreeNode(
                    'Develop expertise in a specific area and become a subject matter expert',
                    [],
                  ),
                  _buildTreeNode(
                    'Apply general administrative skills to a specialized role',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Start an Administrative Consulting Firm or Business',
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
