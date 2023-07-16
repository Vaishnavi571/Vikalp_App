import 'package:flutter/material.dart';

class CounselorRoadmap extends StatelessWidget {
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
            "Counsellor Roadmap",
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
                image: AssetImage('assets/images/consulting.png'),
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
                "Earn a Bachelor's Degree in Psychology or a Related Field",
                [
                  _buildTreeNode(
                    'Gain foundational knowledge of human behavior and mental processes',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop communication and interpersonal skills',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                "Pursue a Master's Degree in Counseling or a Related Field",
                [
                  _buildTreeNode(
                    'Gain specialized knowledge of counseling theories and techniques',
                    [],
                  ),
                  _buildTreeNode(
                    'Complete supervised clinical experience',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Become Licensed as a Counselor',
                [
                  _buildTreeNode(
                    'Meet education and experience requirements for state licensure',
                    [],
                  ),
                  _buildTreeNode(
                    'Pass the National Counselor Examination (NCE) or another state-approved exam',
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
                'Gain Experience in a Counseling Setting',
                [
                  _buildTreeNode(
                    'Learn to assess and diagnose mental health disorders',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in counseling individuals and groups',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Specific Area of Counseling',
                [
                  _buildTreeNode(
                    'Obtain additional training or certification in areas such as substance abuse or marriage and family therapy',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop knowledge and expertise in a specific population, such as children or veterans',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Stay Current with Continuing Education',
                [
                  _buildTreeNode(
                    'Participate in professional development activities',
                    [],
                  ),
                  _buildTreeNode(
                    'Attend conferences and workshops to stay up-to-date on research and best practices',
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
                'Advance to a Leadership or Management Role',
                [
                  _buildTreeNode(
                    'Develop skills in program development and management',
                    [],
                  ),
                  _buildTreeNode(
                    'Oversee the work of other counselors or mental health professionals',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Start a Private Counseling Practice',
                [
                  _buildTreeNode(
                    'Obtain necessary licenses and permits',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop a business plan and marketing strategy',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Transition to Teaching or Research',
                [
                  _buildTreeNode(
                    'Obtain a Ph.D. in Counseling or a Related Field',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in teaching, research, and grant writing',
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
