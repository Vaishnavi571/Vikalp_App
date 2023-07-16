import 'package:flutter/material.dart';

class EntrepreneurRoadmap extends StatelessWidget {
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
            "Entrepreneur Roadmap",
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
                image: AssetImage('assets/images/entrepreneurship.png'),
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
                'Develop Business Skills',
                [
                  _buildTreeNode(
                    'Take courses in accounting, marketing, finance, and management',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn how to analyze market trends and consumer behavior',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Gain Experience',
                [
                  _buildTreeNode(
                    'Work for a startup or small business to learn about the challenges and opportunities of entrepreneurship',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop leadership and communication skills by working with diverse teams',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Stay Up-to-Date',
                [
                  _buildTreeNode(
                    'Read industry news and follow successful entrepreneurs on social media',
                    [],
                  ),
                  _buildTreeNode(
                    'Attend conferences and workshops to learn about emerging trends and technologies',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Developing a Business Idea',
            [
              _buildTreeNode(
                'Identify a Problem or Need',
                [
                  _buildTreeNode(
                    'Conduct market research to understand customer pain points',
                    [],
                  ),
                  _buildTreeNode(
                    'Look for gaps in the market that your business idea could fill',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Brainstorm Solutions',
                [
                  _buildTreeNode(
                    'Generate a range of ideas for how to solve the problem or meet the need',
                    [],
                  ),
                  _buildTreeNode(
                    'Evaluate each idea based on feasibility, potential impact, and your own skills and resources',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Develop a Business Plan',
                [
                  _buildTreeNode(
                    'Create a detailed plan for how you will launch and grow your business',
                    [],
                  ),
                  _buildTreeNode(
                    'Include market analysis, financial projections, and a marketing strategy',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Launching Your Business',
            [
              _buildTreeNode(
                'Secure Funding',
                [
                  _buildTreeNode(
                    'Explore funding options such as loans, grants, and angel investors',
                    [],
                  ),
                  _buildTreeNode(
                    'Prepare a pitch deck or business plan to present to potential investors',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Establish a Legal Entity',
                [
                  _buildTreeNode(
                    'Choose a business structure such as a sole proprietorship, partnership, LLC, or corporation',
                    [],
                  ),
                  _buildTreeNode(
                    'Register your business and obtain any necessary licenses and permits',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Launch Your Product or Service',
                [
                  _buildTreeNode(
                    'Create a marketing campaign to generate buzz and attract customers',
                    [],
                  ),
                  _buildTreeNode(
                    'Launch your product or service and gather feedback from customers',
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