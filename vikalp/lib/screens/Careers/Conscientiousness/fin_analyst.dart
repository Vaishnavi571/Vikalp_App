import 'package:flutter/material.dart';

class FinancialAnalystRoadmap extends StatelessWidget {
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
            "Financial Analyst Roadmap",
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
                image: AssetImage('assets/images/financial-advisor.png'),
                height: 400,
                width: 300,
                fit: BoxFit.contain,
              ),
            ],
          ),
          _buildTreeNode(
            'Education and Certification',
            [
              _buildTreeNode(
                'Earn a Bachelor\'s Degree in Finance or a Related Field',
                [
                  _buildTreeNode(
                    'Gain foundational knowledge in financial analysis and accounting principles',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop analytical and problem-solving skills',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Obtain a Professional Certification',
                [
                  _buildTreeNode(
                    'Become a Chartered Financial Analyst (CFA) by passing the CFA Exam',
                    [],
                  ),
                  _buildTreeNode(
                    'Become a Certified Financial Planner (CFP) by passing the CFP Exam',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Gain Practical Experience through Internships or Entry-Level Roles',
                [
                  _buildTreeNode(
                    'Apply principles learned in coursework to real-world financial analysis',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in financial modeling and forecasting',
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
                'Gain Experience in Investment Analysis and Portfolio Management',
                [
                  _buildTreeNode(
                    'Develop skills in evaluating investment opportunities',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to manage investment portfolios and optimize returns',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Specific Industry or Financial Product',
                [
                  _buildTreeNode(
                    'Develop expertise in areas such as corporate finance or derivatives trading',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain additional training or certification in specialized areas',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Become a Data Analysis Expert',
                [
                  _buildTreeNode(
                    'Learn to use data analytics tools to analyze financial data',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in data visualization and reporting',
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
                'Advance to Senior Financial Analyst or Investment Manager',
                [
                  _buildTreeNode(
                    'Develop skills in financial strategy and risk management',
                    [],
                  ),
                  _buildTreeNode(
                    'Oversee multiple investment portfolios or financial products',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Transition to a Consulting or Business Development Role',
                [
                  _buildTreeNode(
                    'Develop skills in client management and business development',
                    [],
                  ),
                  _buildTreeNode(
                    'Apply financial analysis principles to improve organizational performance',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Start a Financial Analysis Consulting Firm or Business',
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
