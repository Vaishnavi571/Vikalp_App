import 'package:flutter/material.dart';

class ArtistRoadmap extends StatelessWidget {
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
            "Artist Roadmap",
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
                image: AssetImage('assets/images/paint.png'),
                height: 400,
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
                    'Study the fundamentals of drawing, painting, and color theory',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to use different materials and tools effectively',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Medium',
                [
                  _buildTreeNode(
                    'Explore different mediums and techniques',
                    [],
                  ),
                  _buildTreeNode(
                    'Choose one or more mediums to specialize in, such as oil painting, watercolor, or sculpture',
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
                    'Take classes or workshops to learn new skills',
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
                    'Showcase your work on social media and artist websites',
                    [],
                  ),
                  _buildTreeNode(
                    'Enter art contests and exhibitions to gain exposure',
                    [],
                  ),
                  _buildTreeNode(
                    'Reach out to galleries or agents who can help promote your work',
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
                'Studio Artist',
                [
                  _buildTreeNode(
                    'Create and sell original artwork in your own studio',
                    [],
                  ),
                  _buildTreeNode(
                    'Participate in art fairs or gallery exhibitions to gain exposure',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Art Teacher',
                [
                  _buildTreeNode(
                    'Teach classes or workshops to students of all ages',
                    [],
                  ),
                  _buildTreeNode(
                    'Work in schools or community centers',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Illustrator',
                [
                  _buildTreeNode(
                    'Create illustrations for books, magazines, and other publications',
                    [],
                  ),
                  _buildTreeNode(
                    'Work for advertising agencies or design firms',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Museum Curator',
                [
                  _buildTreeNode(
                    'Organize and curate exhibitions for museums and galleries',
                    [],
                  ),
                  _buildTreeNode(
                    'Research and acquire artwork for collections',
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
