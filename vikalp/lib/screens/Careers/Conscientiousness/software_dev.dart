import 'package:flutter/material.dart';

class SoftwareDeveloperRoadmap extends StatelessWidget {
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
            "Software Developer Roadmap",
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
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Stack(
        alignment: Alignment.center,
        children: [
          ///***If you have exported images you must have to copy those images in assets/images directory.
          Image(
            image: AssetImage('assets/images/developer.png'),
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
            'Earn a Bachelor\'s Degree in Computer Science or a Related Field',
            [
              _buildTreeNode(
                'Gain foundational knowledge in programming languages, data structures, algorithms, and software development principles',
                [],
              ),
              _buildTreeNode(
                'Develop communication and teamwork skills through group projects and internships',
                [],
              ),
            ],
          ),
          _buildTreeNode(
            'Pursue Additional Certifications or Training',
            [
              _buildTreeNode(
                'Become a Certified Developer in a Specific Language or Platform',
                [],
              ),
              _buildTreeNode(
                'Obtain Additional Training in Software Design Patterns, Agile Development, or DevOps',
                [],
              ),
            ],
          ),
          _buildTreeNode(
            'Participate in Hackathons and Coding Competitions',
            [
              _buildTreeNode(
                'Develop skills in rapid prototyping and problem-solving',
                [],
              ),
              _buildTreeNode(
                'Network with other developers and potential employers',
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
            'Gain Experience Developing Software',
            [
              _buildTreeNode(
                'Learn to develop and maintain code using industry-standard tools and practices',
                [],
              ),
              _buildTreeNode(
                'Develop skills in debugging, testing, and troubleshooting',
                [],
              ),
            ],
          ),
          _buildTreeNode(
            'Specialize in a Specific Area of Software Development',
            [
              _buildTreeNode(
                'Develop Expertise in Front-end, Back-end, Mobile, or Full-stack Development',
                [],
              ),
              _buildTreeNode(
                'Obtain Additional Training or Certifications in Specialized Areas',
                [],
              ),
            ],
          ),
          _buildTreeNode(
            'Become a Technical Lead or Architect',
            [
              _buildTreeNode(
                'Develop skills in software design, architecture, and project management',
                [],
              ),
              _buildTreeNode(
                'Provide technical guidance and mentorship to other developers',
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
            'Advance to Senior Developer or Engineering Manager',
            [
              _buildTreeNode(
                'Develop skills in strategic planning, budgeting, and resource management',
                [],
              ),
              _buildTreeNode(
                'Oversee multiple development teams or projects simultaneously',
                [],
              ),
            ],
          ),
          _buildTreeNode(
            'Transition to a Technical Sales or Pre-sales Role',
            [
              _buildTreeNode(
                'Develop skills in client management and business development',
                [],
              ),
              _buildTreeNode(
                'Apply technical expertise to help customers solve their business challenges',
                [],
              ),
            ],
          ),
          _buildTreeNode(
              'Start a Software Development Company or Consultancy', []),
        ],
      ),
    ]));
  }

  Widget _buildTreeNode(String title, List<Widget> children) {
    return ExpansionTile(
      title: Text(title),
      children: children,
    );
  }
}
