import 'package:flutter/material.dart';

class ProfessorRoadmap extends StatelessWidget {
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
            "Professor Roadmap",
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
            'Education',
            [
              _buildTreeNode(
                'Obtain a Bachelor\'s Degree in a field related to the area of expertise',
                [
                  _buildTreeNode(
                    'Gain foundational knowledge in the field of study',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop research skills and critical thinking abilities',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pursue a Master\'s Degree in the field of study',
                [
                  _buildTreeNode(
                    'Gain advanced knowledge in the field and specialized expertise',
                    [],
                  ),
                  _buildTreeNode(
                    'Participate in research projects and gain experience working in a lab or field setting',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Earn a Doctorate Degree in the field of study',
                [
                  _buildTreeNode(
                    'Conduct independent research and contribute to the field of study',
                    [],
                  ),
                  _buildTreeNode(
                    'Become an expert in a specific area of the field',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Developing Skills',
            [
              _buildTreeNode(
                'Gain Teaching Experience',
                [
                  _buildTreeNode(
                    'Teach as a teaching assistant while pursuing a graduate degree',
                    [],
                  ),
                  _buildTreeNode(
                    'Apply for postdoctoral positions to gain additional teaching experience',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Publish Research Papers',
                [
                  _buildTreeNode(
                    'Conduct research in the field and publish research papers',
                    [],
                  ),
                  _buildTreeNode(
                    'Collaborate with other researchers in the field',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Attend Conferences and Workshops',
                [
                  _buildTreeNode(
                    'Attend conferences and workshops to stay up to date with the latest research and developments in the field',
                    [],
                  ),
                  _buildTreeNode(
                    'Present research papers and network with other academics',
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
                'Apply for Assistant Professor Positions',
                [
                  _buildTreeNode(
                    'Develop a strong teaching philosophy and research agenda',
                    [],
                  ),
                  _buildTreeNode(
                    'Apply for tenure-track positions at colleges and universities',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Publish Research Papers and Gain Recognition',
                [
                  _buildTreeNode(
                    'Continue conducting research and publishing research papers',
                    [],
                  ),
                  _buildTreeNode(
                    'Attend and present research at conferences and workshops',
                    [],
                  ),
                  _buildTreeNode(
                    'Serve on editorial boards of academic journals and review papers',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Advance to Associate Professor and Full Professor Positions',
                [
                  _buildTreeNode(
                    'Develop a strong track record of teaching and research accomplishments',
                    [],
                  ),
                  _buildTreeNode(
                      'Apply for promotion to higher faculty ranks', []),
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
