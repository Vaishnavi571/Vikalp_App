import 'package:flutter/material.dart';

class EngineerCareerRoadmap extends StatelessWidget {
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
              "Engineer Roadmap",
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ///***If you have exported images you must have to copy those images in assets/images directory.
                    Image(
                      image: AssetImage('assets/images/engineer.png'),
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
                      'Earn a Bachelor\'s Degree in Engineering',
                      [
                        _buildTreeNode(
                          'Choose a specialization, such as electrical or mechanical engineering',
                          [],
                        ),
                        _buildTreeNode(
                          'Learn fundamental concepts and skills',
                          [],
                        ),
                      ],
                    ),
                    _buildTreeNode(
                      'Pursue a Master\'s Degree in Engineering',
                      [
                        _buildTreeNode(
                          'Develop advanced technical knowledge and skills',
                          [],
                        ),
                        _buildTreeNode(
                          'Specialize in an area of interest, such as robotics or renewable energy',
                          [],
                        ),
                      ],
                    ),
                    _buildTreeNode(
                      'Complete Internships or Co-op Programs',
                      [
                        _buildTreeNode(
                          'Gain hands-on experience working on engineering projects',
                          [],
                        ),
                        _buildTreeNode(
                          'Develop problem-solving and communication skills',
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
                      'Gain Professional Engineering Licensure',
                      [
                        _buildTreeNode(
                          'Meet education and experience requirements',
                          [],
                        ),
                        _buildTreeNode(
                          'Pass the Fundamentals of Engineering (FE) exam and the Professional Engineering (PE) exam',
                          [],
                        ),
                      ],
                    ),
                    _buildTreeNode(
                      'Attend Engineering Conferences and Workshops',
                      [
                        _buildTreeNode(
                          'Stay up-to-date on the latest developments in the field',
                          [],
                        ),
                        _buildTreeNode(
                          'Network with other professionals and experts',
                          [],
                        ),
                      ],
                    ),
                    _buildTreeNode(
                      'Specialize in a Specific Area of Engineering',
                      [
                        _buildTreeNode(
                          'Gain expertise in fields such as aerospace, civil, or environmental engineering',
                          [],
                        ),
                        _buildTreeNode(
                          'Obtain additional training or certification in specialized areas',
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
                      'Advance to a Senior Engineering Position',
                      [
                        _buildTreeNode(
                          'Develop skills in leadership and project management',
                          [],
                        ),
                        _buildTreeNode(
                          'Oversee teams and projects',
                          [],
                        ),
                      ],
                    ),
                    _buildTreeNode(
                      'Transition to a Consulting or Business Development Role',
                      [
                        _buildTreeNode(
                          'Develop skills in client management and business development',
                          [],
                        ),
                        _buildTreeNode(
                          'Apply engineering principles to improve organizational performance',
                          [],
                        ),
                      ],
                    ),
                    _buildTreeNode(
                      'Start an Engineering Consulting Firm or Business',
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
          ),
        ));
  }

  Widget _buildTreeNode(String title, List<Widget> children) {
    return ExpansionTile(
      title: Text(title),
      children: children,
    );
  }
}
