import 'package:flutter/material.dart';

class AccountantRoadmap extends StatelessWidget {
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
            "Accountant Roadmap",
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
                image: AssetImage('assets/images/accountant.png'),
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
                'Earn a Bachelor\'s Degree in Accounting or Related Field',
                [
                  _buildTreeNode(
                    'Gain foundational knowledge in accounting principles',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop critical thinking and analytical skills',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pursue a Master\'s Degree in Accounting or Business Administration',
                [
                  _buildTreeNode(
                    'Gain advanced knowledge in accounting principles and financial analysis',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop leadership and management skills',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Obtain Professional Certification',
                [
                  _buildTreeNode(
                    'Become a Certified Public Accountant (CPA) by passing the Uniform CPA Exam',
                    [],
                  ),
                  _buildTreeNode(
                    'Become a Certified Management Accountant (CMA) by passing the CMA Exam',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Gaining Experience',
            [
              _buildTreeNode(
                'Work as an Accounting Intern or Junior Accountant',
                [
                  _buildTreeNode(
                    'Gain experience in financial accounting and reporting',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in bookkeeping and accounting software',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Work as a Senior Accountant or Accounting Manager',
                [
                  _buildTreeNode(
                    'Develop skills in budgeting and forecasting',
                    [],
                  ),
                  _buildTreeNode(
                    'Oversee accounting staff and financial reporting',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Become a Controller or Chief Financial Officer (CFO)',
                [
                  _buildTreeNode(
                    'Develop expertise in financial management and analysis',
                    [],
                  ),
                  _buildTreeNode(
                    'Oversee all financial operations of an organization',
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
                'Specialize in a Specific Area of Accounting',
                [
                  _buildTreeNode(
                    'Develop expertise in areas such as tax accounting or auditing',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain additional certification in specialized areas',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Become a Partner at an Accounting Firm',
                [
                  _buildTreeNode(
                    'Build a strong track record of client service and business development',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop a deep understanding of the industry and market trends',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Start a Consulting Firm or Business',
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
