import 'package:flutter/material.dart';

class MarketingRoadmap extends StatelessWidget {
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
            "Marketing Roadmap",
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
                image: AssetImage('assets/images/marketing.png'),
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
                'Obtain a Bachelor\'s Degree in Marketing or a related field',
                [
                  _buildTreeNode(
                    'Gain foundational knowledge in marketing principles and practices',
                    [],
                  ),
                  _buildTreeNode(
                    'Study consumer behavior and market research techniques',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn about advertising, public relations, and other marketing tactics',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pursue a Master\'s Degree in Marketing or a related field',
                [
                  _buildTreeNode(
                    'Gain advanced knowledge in marketing strategy and management',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop your research and analytical skills to make data-driven decisions',
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
                'Gain Practical Experience',
                [
                  _buildTreeNode(
                    'Find internship or entry-level job opportunities to gain hands-on experience in the field',
                    [],
                  ),
                  _buildTreeNode(
                    'Work with marketing professionals to learn about marketing campaigns, strategies, and tactics',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Hone Your Creative Skills',
                [
                  _buildTreeNode(
                    'Develop your copywriting skills to create compelling marketing messages',
                    [],
                  ),
                  _buildTreeNode(
                    'Improve your design skills to create visually appealing marketing materials',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Build Your Portfolio',
                [
                  _buildTreeNode(
                    'Create a portfolio of your work to showcase your skills and experience',
                    [],
                  ),
                  _buildTreeNode(
                    'Participate in marketing competitions and challenges to gain recognition and exposure',
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
                'Network and Collaborate',
                [
                  _buildTreeNode(
                    'Meet and collaborate with other marketing professionals and industry leaders',
                    [],
                  ),
                  _buildTreeNode(
                    'Join marketing associations and organizations to expand your network and access industry resources',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Niche',
                [
                  _buildTreeNode(
                    'Identify a specific area of marketing that interests you, such as social media, email marketing, or search engine optimization',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop your skills and knowledge in that area to become an expert',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Advance to a Leadership Role',
                [
                  _buildTreeNode(
                    'Gain experience and demonstrate your leadership skills',
                    [],
                  ),
                  _buildTreeNode(
                    'Earn professional certifications or pursue additional education to enhance your credentials',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Become a Marketing Consultant or Freelancer',
                [
                  _buildTreeNode(
                    'Build your reputation and client base by delivering successful marketing projects',
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





