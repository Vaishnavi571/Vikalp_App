import 'package:flutter/material.dart';

class NurseCareerRoadmap extends StatelessWidget {
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
            "Nurse Roadmap",
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
                image: AssetImage('assets/images/nurse.png'),
                height: 400,
                width: 300,
                fit: BoxFit.contain,
              ),
            ],
          ),
          _buildTreeNode(
            'Earn a Nursing Degree',
            [
              _buildTreeNode(
                'Complete a Nursing Program',
                [
                  _buildTreeNode(
                    'Select an accredited nursing program',
                    [],
                  ),
                  _buildTreeNode(
                    'Choose an area of specialization, such as pediatrics or geriatrics',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pass the NCLEX Exam',
                [
                  _buildTreeNode(
                    'Obtain a license to practice nursing',
                    [],
                  ),
                  _buildTreeNode(
                    'Fulfill continuing education requirements to maintain license',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Gain Practical Experience',
            [
              _buildTreeNode(
                'Work in a Clinical Setting',
                [
                  _buildTreeNode(
                    'Learn to administer medication and provide patient care',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop critical thinking and decision-making skills',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Volunteer or Work in a Non-Clinical Setting',
                [
                  _buildTreeNode(
                    'Provide education and health promotion in community settings',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop leadership and organizational skills',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Specialize and Advance Your Career',
            [
              _buildTreeNode(
                "Pursue a Master's Degree in Nursing",
                [
                  _buildTreeNode(
                    'Develop advanced nursing skills and knowledge',
                    [],
                  ),
                  _buildTreeNode(
                    'Qualify for specialized nursing positions and leadership roles',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Obtain Certification in a Nursing Specialty',
                [
                  _buildTreeNode(
                    'Demonstrate expertise in a specific area of nursing',
                    [],
                  ),
                  _buildTreeNode(
                    'Qualify for higher-paying and more specialized nursing positions',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Transition to a Non-Clinical Role',
                [
                  _buildTreeNode(
                    'Develop skills in healthcare administration or education',
                    [],
                  ),
                  _buildTreeNode(
                    'Apply nursing knowledge to non-clinical settings, such as research or policy development',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Become a Nurse Practitioner or Nurse Anesthetist',
            [
              _buildTreeNode(
                'Complete Advanced Education and Training',
                [
                  _buildTreeNode(
                    "Earn a Master's Degree in Nursing",
                    [],
                  ),
                  _buildTreeNode(
                    'Complete additional clinical training and coursework',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Obtain Certification as a Nurse Practitioner or Nurse Anesthetist',
                [
                  _buildTreeNode(
                    'Demonstrate advanced nursing knowledge and skills',
                    [],
                  ),
                  _buildTreeNode(
                    'Qualify for high-paying and specialized nursing positions',
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
