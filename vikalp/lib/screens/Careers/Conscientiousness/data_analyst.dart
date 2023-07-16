import 'package:flutter/material.dart';

class DataAnalystRoadmap extends StatelessWidget {
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
            "Data Analyst Roadmap",
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
                image: AssetImage('assets/images/data-analyst.png'),
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
                'Earn a Bachelor\'s Degree in a Related Field',
                [
                  _buildTreeNode(
                    'Gain foundational knowledge in statistics, data modeling and analysis',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop programming skills in languages like Python or R',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pursue Additional Training and Certifications',
                [
                  _buildTreeNode(
                    'Obtain a Master\'s Degree in a related field',
                    [],
                  ),
                  _buildTreeNode(
                    'Earn Certifications like Certified Analytics Professional (CAP) or SAS Certified Data Scientist',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Gain Practical Experience through Internships or Entry-Level Roles',
                [
                  _buildTreeNode(
                    'Apply statistical and data analysis principles to real-world projects',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in data visualization and communication',
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
                'Develop Expertise in a Specific Industry or Domain',
                [
                  _buildTreeNode(
                    'Gain knowledge of industry-specific datasets and data analysis techniques',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to apply domain-specific knowledge in data analysis',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Gain Experience with Data Analytics Tools and Technologies',
                [
                  _buildTreeNode(
                    'Develop skills in SQL and database management',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to use data analysis tools like Tableau or Power BI',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in machine learning and artificial intelligence',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Develop Soft Skills',
                [
                  _buildTreeNode(
                    'Improve communication and presentation skills',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to work collaboratively with cross-functional teams',
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
                'Advance to Senior Data Analyst or Data Scientist',
                [
                  _buildTreeNode(
                    'Develop skills in data strategy and management',
                    [],
                  ),
                  _buildTreeNode(
                    'Lead and mentor junior team members',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Transition to a Data Management or Data Engineering Role',
                [
                  _buildTreeNode(
                    'Develop skills in data infrastructure and architecture',
                    [],
                  ),
                  _buildTreeNode(
                    'Apply data management principles to improve data quality and reliability',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Start a Data Analytics Consulting Firm or Business',
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
