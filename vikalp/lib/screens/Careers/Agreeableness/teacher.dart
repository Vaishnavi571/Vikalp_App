import 'package:flutter/material.dart';

class TeacherRoadmap extends StatelessWidget {
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
            "Teacher Roadmap",
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
                image: AssetImage('assets/images/teacher.png'),
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
                "Earn a Bachelor's Degree in Education",
                [
                  _buildTreeNode(
                    'Choose a concentration area such as elementary or secondary education',
                    [],
                  ),
                  _buildTreeNode(
                    'Complete coursework in teaching methods, child development, and classroom management',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Complete a Teacher Preparation Program',
                [
                  _buildTreeNode(
                    'Complete a student teaching or internship program',
                    [],
                  ),
                  _buildTreeNode(
                    'Pass state certification exams',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Gain Teaching Experience',
                [
                  _buildTreeNode(
                    "Work as a substitute teacher or teacher's aide",
                    [],
                  ),
                  _buildTreeNode(
                    'Volunteer to tutor or mentor students',
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
                'Continuing Education and Professional Development',
                [
                  _buildTreeNode(
                    'Attend workshops or conferences to learn about new teaching methods and technologies',
                    [],
                  ),
                  _buildTreeNode(
                    "Complete a Master's Degree in Education to specialize in an area such as literacy or special education",
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Subject Area or Student Population',
                [
                  _buildTreeNode(
                    'Earn a content area endorsement such as math or science',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain certification in teaching English as a second language (ESL)',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Develop Classroom Management and Communication Skills',
                [
                  _buildTreeNode(
                    'Learn to manage student behavior effectively',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop effective communication and collaboration skills with parents and colleagues',
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
                'Advance to Administrative Roles',
                [
                  _buildTreeNode(
                    'Become a department chair or curriculum coordinator',
                    [],
                  ),
                  _buildTreeNode(
                    'Advance to an administrative position such as principal or superintendent',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Transition to Higher Education',
                [
                  _buildTreeNode(
                    'Earn a Ph.D. in Education or a related field',
                    [],
                  ),
                  _buildTreeNode(
                    'Teach at the college or university level',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Become an Education Consultant or Writer',
                [
                  _buildTreeNode(
                    'Develop expertise in an area such as curriculum design or education policy',
                    [],
                  ),
                  _buildTreeNode(
                    'Write books or develop training programs for educators',
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
