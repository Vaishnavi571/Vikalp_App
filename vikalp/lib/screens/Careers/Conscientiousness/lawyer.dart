import 'package:flutter/material.dart';

class LawyerCareerRoadmap extends StatelessWidget {
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
            "Lawyer Roadmap",
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
                image: AssetImage('assets/images/lawbook.png'),
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
                'Earn a Bachelor\'s Degree',
                [
                  _buildTreeNode(
                    'Select a related field such as political science, criminal justice, or pre-law',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop critical thinking, research, and writing skills',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Attend Law School',
                [
                  _buildTreeNode(
                    'Graduate from an accredited law school',
                    [],
                  ),
                  _buildTreeNode(
                    'Study various areas of law such as contracts, torts, and criminal law',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pass the Bar Exam',
                [
                  _buildTreeNode(
                    'Take and pass the bar exam in the state(s) where you want to practice law',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain a license to practice law in each state',
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
                'Gain Practical Experience',
                [
                  _buildTreeNode(
                    'Complete a clerkship or internship with a judge or law firm',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in legal research, writing, and advocacy',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Specific Area of Law',
                [
                  _buildTreeNode(
                    'Develop expertise in areas such as family law, intellectual property, or corporate law',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain additional training or certification in specialized areas',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Join Professional Organizations',
                [
                  _buildTreeNode(
                    'Join state and national bar associations',
                    [],
                  ),
                  _buildTreeNode(
                    'Participate in networking events and continuing education programs',
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
                'Become an Associate at a Law Firm',
                [
                  _buildTreeNode(
                    'Work on cases under the supervision of senior attorneys',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop a reputation for excellent work and attention to detail',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Advance to Partner',
                [
                  _buildTreeNode(
                    'Demonstrate leadership and business development skills',
                    [],
                  ),
                  _buildTreeNode(
                    'Manage teams of attorneys and staff',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Work in Government or Public Interest',
                [
                  _buildTreeNode(
                    'Serve as a prosecutor or public defender',
                    [],
                  ),
                  _buildTreeNode(
                    'Work for a non-profit organization or advocacy group',
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
