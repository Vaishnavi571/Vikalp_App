import 'package:flutter/material.dart';

class MedicalResearcherRoadmap extends StatelessWidget {
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
            "Medical Researcher Roadmap",
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
              image: AssetImage('assets/images/research.png'),
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
              "Earn a Bachelor's Degree in a Scientific Field",
              [
                _buildTreeNode(
                  'Gain a foundational knowledge in biology, chemistry and other relevant fields',
                  [],
                ),
                _buildTreeNode(
                  'Develop critical thinking and research skills',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Pursue a Graduate Degree in Medical Research',
              [
                _buildTreeNode(
                  "Earn a Master's degree in medical research",
                  [],
                ),
                _buildTreeNode(
                  'Earn a Ph.D. in medical research',
                  [],
                ),
                _buildTreeNode(
                  'Develop skills in designing, conducting and interpreting research studies',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Gain Practical Experience through Internships or Entry-Level Roles',
              [
                _buildTreeNode(
                  'Apply research principles learned in coursework to real-world research projects',
                  [],
                ),
                _buildTreeNode(
                  'Develop skills in scientific writing and data analysis',
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
              'Gain Experience Conducting Research Studies',
              [
                _buildTreeNode(
                  'Develop skills in designing and conducting experiments',
                  [],
                ),
                _buildTreeNode(
                  'Learn to analyze and interpret data',
                  [],
                ),
                _buildTreeNode(
                  'Develop skills in scientific writing and publishing',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Specialize in a Specific Area of Medical Research',
              [
                _buildTreeNode(
                  'Develop expertise in areas such as neuroscience or immunology',
                  [],
                ),
                _buildTreeNode(
                  'Obtain additional training or certification in specialized areas',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Stay Up-to-Date with Advancements in Medical Research',
              [
                _buildTreeNode(
                  'Attend scientific conferences and symposiums',
                  [],
                ),
                _buildTreeNode(
                  'Read scientific literature and stay informed about advancements in the field',
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
              'Advance to Senior Medical Researcher or Research Manager',
              [
                _buildTreeNode(
                  'Develop skills in managing and leading a team of researchers',
                  [],
                ),
                _buildTreeNode(
                  'Oversee multiple research projects simultaneously',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Transition to a Teaching or Academic Research Role',
              [
                _buildTreeNode(
                  'Develop skills in teaching and mentoring students',
                  [],
                ),
                _buildTreeNode(
                  'Conduct research and publish papers in academic journals',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Start a Medical Research Consulting Firm or Business',
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
    ));
  }

  Widget _buildTreeNode(String title, List<Widget> children) {
    return ExpansionTile(
      title: Text(title),
      children: children,
    );
  }
}
