import 'package:flutter/material.dart';

class MarketingManagerRoadmap extends StatelessWidget {
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
            "Marketing Manager Roadmap",
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
                image: AssetImage('assets/images/marketing1.png'),
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
                "Earn a Bachelor's Degree in Marketing or a Related Field",
                [
                  _buildTreeNode(
                    'Develop an understanding of marketing principles and consumer behavior',
                    [],
                  ),
                  _buildTreeNode(
                    'Gain skills in data analysis, market research, and branding',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pursue an MBA or Other Advanced Degree',
                [
                  _buildTreeNode(
                    'Deepen knowledge of business strategy and leadership',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop specialized expertise in areas such as digital marketing or international marketing',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Gain Practical Experience through Internships or Entry-Level Roles',
                [
                  _buildTreeNode(
                    'Apply marketing principles to real-world business challenges',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in marketing tools and technologies such as CRM software and email marketing platforms',
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
                'Gain Experience in Specific Areas of Marketing',
                [
                  _buildTreeNode(
                    'Develop skills in areas such as social media marketing or content marketing',
                    [],
                  ),
                  _buildTreeNode(
                    'Stay up-to-date with the latest marketing trends and technologies',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Lead Marketing Campaigns and Teams',
                [
                  _buildTreeNode(
                    'Develop skills in project management and cross-functional collaboration',
                    [],
                  ),
                  _buildTreeNode(
                    'Create and implement marketing strategies that achieve business goals',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Obtain Professional Certifications',
                [
                  _buildTreeNode(
                    'Become a certified Digital Marketer or Content Marketing Strategist',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop specialized expertise in areas such as Google Analytics or SEO',
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
                'Advance to Director of Marketing or VP of Marketing',
                [
                  _buildTreeNode(
                    'Develop skills in budgeting, forecasting, and ROI analysis',
                    [],
                  ),
                  _buildTreeNode(
                    'Oversee marketing strategies for multiple products or business units',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Transition to a General Manager or Business Development Role',
                [
                  _buildTreeNode(
                    'Develop skills in business strategy and P&L management',
                    [],
                  ),
                  _buildTreeNode(
                    'Apply marketing expertise to identify new business opportunities and drive growth',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Become a Marketing Consultant or Start a Marketing Agency',
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
