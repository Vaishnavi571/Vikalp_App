import 'package:flutter/material.dart';

class WriterRoadmap extends StatelessWidget {
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
            "Writer Roadmap",
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
                image: AssetImage('assets/images/pen.png'),
                height:400,
                width: 300,
                fit: BoxFit.contain,
              ),

            ],
          ),
          _buildTreeNode(
            'Education',
            [
              _buildTreeNode(
                'Bachelor\'s Degree in English or Creative Writing',
                [
                  _buildTreeNode(
                    'Take courses in writing, literature, and publishing',
                    [],
                  ),
                  _buildTreeNode(
                    'Join writing clubs and workshops',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Master\'s Degree in Writing or Journalism (Optional)',
                [
                  _buildTreeNode(
                    'Develop advanced writing skills',
                    [],
                  ),
                  _buildTreeNode(
                    'Explore different writing genres',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Professional Development',
            [
              _buildTreeNode(
                'Internships or Entry-Level Jobs',
                [
                  _buildTreeNode(
                    'Build a portfolio of writing samples',
                    [],
                  ),
                  _buildTreeNode(
                    'Get experience in different writing styles and genres',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Freelance Writing',
                [
                  _buildTreeNode(
                    'Build a network of clients',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to market and sell your writing',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Publishing a Book',
                [
                  _buildTreeNode(
                    'Write a manuscript and get feedback from beta readers',
                    [],
                  ),
                  _buildTreeNode(
                    'Edit and revise the manuscript',
                    [],
                  ),
                  _buildTreeNode(
                    'Find a literary agent and submit the manuscript',
                    [],
                  ),
                  _buildTreeNode(
                    'Negotiate a book deal and work with an editor and publisher',
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
                'Fiction Writing',
                [
                  _buildTreeNode(
                    'Write novels or short stories in various genres',
                    [],
                  ),
                  _buildTreeNode(
                    'Self-publish or work with a traditional publisher',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Non-Fiction Writing',
                [
                  _buildTreeNode(
                    'Write articles, essays, and memoirs',
                    [],
                  ),
                  _buildTreeNode(
                    'Pitch ideas to magazines, newspapers, and websites',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Technical Writing',
                [
                  _buildTreeNode(
                    'Write user manuals, instruction guides, and reports',
                    [],
                  ),
                  _buildTreeNode(
                    'Work in industries such as technology, healthcare, or finance',
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
