import 'package:flutter/material.dart';

class MediatorCareerRoadmap extends StatelessWidget {
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
            "Madiator Roadmap",
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
                image: AssetImage('assets/images/mediator.png'),
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
                "Earn a Bachelor's Degree in a Relevant Field",
                [
                  _buildTreeNode(
                    'Study psychology, sociology, or related field',
                    [],
                  ),
                  _buildTreeNode(
                    'Gain an understanding of conflict resolution theories and techniques',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pursue a Graduate Degree in Conflict Resolution or Related Field',
                [
                  _buildTreeNode(
                    'Gain advanced knowledge of mediation techniques and strategies',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop research and analytical skills',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Complete Mediator Training and Certification',
                [
                  _buildTreeNode(
                    'Complete a formal mediator training program',
                    [],
                  ),
                  _buildTreeNode(
                    'Gain experience by volunteering or interning with a mediation organization',
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
                'Gain Experience as a Mediator',
                [
                  _buildTreeNode(
                    'Develop skills in active listening and effective communication',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to manage conflicts and negotiate solutions',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Specific Area of Mediation',
                [
                  _buildTreeNode(
                    'Develop expertise in areas such as workplace disputes, family law, or environmental mediation',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain additional training or certification in specialized areas',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Develop Business and Marketing Skills',
                [
                  _buildTreeNode(
                    'Develop skills in networking and relationship building',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to manage finances and budget effectively',
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
                'Gain Employment as a Mediator',
                [
                  _buildTreeNode(
                    'Seek employment with a mediation organization, law firm, or government agency',
                    [],
                  ),
                  _buildTreeNode(
                    'Build a portfolio of successful mediations to showcase experience and expertise',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Start a Private Mediation Practice',
                [
                  _buildTreeNode(
                    'Develop a business plan and marketing strategy',
                    [],
                  ),
                  _buildTreeNode(
                    'Build a client base through networking and referrals',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Advance to Leadership Roles in Mediation Organizations',
                [
                  _buildTreeNode(
                    'Develop skills in team management and organizational leadership',
                    [],
                  ),
                  _buildTreeNode(
                    'Contribute to the development of mediation policies and practices',
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
