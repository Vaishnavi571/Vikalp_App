import 'package:flutter/material.dart';

class OperationsManagerRoadmap extends StatelessWidget {
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
            "Operations Manager Roadmap",
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
            image: AssetImage('assets/images/operation.png'),
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
            'Earn a Bachelor\'s Degree in Operations Management or a Related Field',
            [
              _buildTreeNode(
                'Gain foundational knowledge in operations management principles',
                [],
              ),
              _buildTreeNode(
                'Develop analytical and problem-solving skills',
                [],
              ),
            ],
          ),
          _buildTreeNode(
            'Pursue a Professional Certification',
            [
              _buildTreeNode(
                'Become a Certified Supply Chain Professional (CSCP) by passing the CSCP Exam',
                [],
              ),
              _buildTreeNode(
                'Become a Certified in Production and Inventory Management (CPIM) by passing the CPIM Exam',
                [],
              ),
            ],
          ),
          _buildTreeNode(
            'Gain Practical Experience through Internships or Entry-Level Roles',
            [
              _buildTreeNode(
                'Apply principles learned in coursework to real-world operations',
                [],
              ),
              _buildTreeNode(
                'Develop skills in operations management software',
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
            'Gain Experience Managing Operations',
            [
              _buildTreeNode(
                'Develop skills in planning and scheduling operations',
                [],
              ),
              _buildTreeNode(
                'Learn to manage budgets and resources',
                [],
              ),
            ],
          ),
          _buildTreeNode(
            'Specialize in a Specific Industry or Type of Operation',
            [
              _buildTreeNode(
                'Develop expertise in areas such as manufacturing or logistics',
                [],
              ),
              _buildTreeNode(
                'Obtain additional training or certification in specialized areas',
                [],
              ),
            ],
          ),
          _buildTreeNode(
            'Become a Lean Six Sigma Black Belt',
            [
              _buildTreeNode(
                'Learn to apply Lean Six Sigma principles to operations management',
                [],
              ),
              _buildTreeNode(
                'Develop skills in process improvement and waste reduction',
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
            'Advance to Senior Operations Manager or Director of Operations',
            [
              _buildTreeNode(
                'Develop skills in strategic planning and risk management',
                [],
              ),
              _buildTreeNode(
                'Oversee multiple operations or sites simultaneously',
                [],
              ),
            ],
          ),
          _buildTreeNode(
            'Transition to a General Manager or Chief Operating Officer Role',
            [
              _buildTreeNode(
                'Develop skills in leadership and business strategy',
                [],
              ),
              _buildTreeNode(
                'Apply operations management principles to improve organizational performance',
                [],
              ),
            ],
          ),
          _buildTreeNode(
            'Start an Operations Management Consulting Firm or Business',
            [
              _buildTreeNode('Develop a niche in the market ', []),
            ],
          ),
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
