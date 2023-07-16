import 'package:flutter/material.dart';

class DesignerRoadmap extends StatelessWidget {
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
            "Designer Roadmap",
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
                image: AssetImage('assets/images/graphic-designer.png'),
                height:400,
                width: 300,
                fit: BoxFit.contain,
              ),

            ],
          ),
          _buildTreeNode(
            'Education and Skills',
            [
              _buildTreeNode(
                'Develop a Strong Foundation',
                [
                  _buildTreeNode(
                    'Study the fundamentals of design, including color theory, typography, and layout',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to use design software such as Adobe Creative Suite',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Discipline',
                [
                  _buildTreeNode(
                    'Explore different design disciplines such as graphic design, web design, or product design',
                    [],
                  ),
                  _buildTreeNode(
                    'Choose one or more disciplines to specialize in',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Continuously Develop Your Skills',
                [
                  _buildTreeNode(
                    'Practice regularly to improve your technique',
                    [],
                  ),
                  _buildTreeNode(
                    'Take classes or workshops to learn new skills and stay up to date with the latest trends and technologies',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Building a Portfolio',
            [
              _buildTreeNode(
                'Create a Consistent Body of Work',
                [
                  _buildTreeNode(
                    'Develop a style that reflects your unique perspective and vision',
                    [],
                  ),
                  _buildTreeNode(
                    'Create a portfolio of your best work that demonstrates your skills and aesthetic',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Promote Your Work',
                [
                  _buildTreeNode(
                    'Showcase your work on social media and design websites',
                    [],
                  ),
                  _buildTreeNode(
                    'Enter design contests and exhibitions to gain exposure',
                    [],
                  ),
                  _buildTreeNode(
                    'Reach out to design agencies or studios who can help promote your work',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Career Paths',
            [
              _buildTreeNode(
                'Graphic Designer',
                [
                  _buildTreeNode(
                    'Design visual elements for print and digital media',
                    [],
                  ),
                  _buildTreeNode(
                    'Work for advertising agencies, design firms, or in-house design teams',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Web Designer',
                [
                  _buildTreeNode(
                    'Design and develop websites and user interfaces',
                    [],
                  ),
                  _buildTreeNode(
                    'Work for web design agencies, tech companies, or as a freelancer',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Product Designer',
                [
                  _buildTreeNode(
                    'Design physical products such as furniture, appliances, or consumer electronics',
                    [],
                  ),
                  _buildTreeNode(
                    'Work for product design firms or in-house design teams for companies',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'UX/UI Designer',
                [
                  _buildTreeNode(
                    'Design user experiences and interfaces for digital products such as apps and websites',
                    [],
                  ),
                  _buildTreeNode(
                    'Work for tech companies, startups, or design agencies',
                    [],
                  ),
                ],
              ),
            ],
          )
        ]
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