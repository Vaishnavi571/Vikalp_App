import 'package:flutter/material.dart';

class VeterinarianRoadmap extends StatelessWidget {
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
            "Veterinarian Roadmap",
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
                image: AssetImage('assets/images/veterinarian.png'),
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
                "Earn a Bachelor's Degree",
                [
                  _buildTreeNode(
                    'Major in a field related to animal sciences such as Biology, Zoology or Animal Science',
                    [],
                  ),
                  _buildTreeNode(
                    'Gain experience with animals through volunteering or internships',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Complete a Doctor of Veterinary Medicine (DVM) Degree',
                [
                  _buildTreeNode(
                    'Attend an accredited veterinary school',
                    [],
                  ),
                  _buildTreeNode(
                    'Take courses in anatomy, physiology, pharmacology, and microbiology',
                    [],
                  ),
                  _buildTreeNode(
                    'Gain experience in clinical settings through internships and externships',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Obtain Licensure',
                [
                  _buildTreeNode(
                    'Pass the North American Veterinary Licensing Exam (NAVLE)',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain state licensure by passing the state veterinary board exam',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Experience and Specialization',
            [
              _buildTreeNode(
                'Gain Experience as a General Practice Veterinarian',
                [
                  _buildTreeNode(
                    'Work in a private practice, animal hospital or clinic',
                    [],
                  ),
                  _buildTreeNode(
                    'Treat and diagnose a variety of animal health problems',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Specific Area of Veterinary Medicine',
                [
                  _buildTreeNode(
                    'Choose from fields such as surgery, emergency medicine, dermatology, or oncology',
                    [],
                  ),
                  _buildTreeNode(
                    'Complete additional training and certification in chosen field',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Work in Research or Public Health',
                [
                  _buildTreeNode(
                    'Conduct research on animal health and diseases',
                    [],
                  ),
                  _buildTreeNode(
                    'Work with government agencies to protect public health by monitoring animal diseases and outbreaks',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Career Advancement',
            [
              _buildTreeNode(
                'Become a Board-Certified Specialist',
                [
                  _buildTreeNode(
                    'Complete a residency program in a specialized area of veterinary medicine',
                    [],
                  ),
                  _buildTreeNode(
                    'Pass a specialty board exam',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Become a Practice Owner or Manager',
                [
                  _buildTreeNode(
                    'Develop business skills and knowledge',
                    [],
                  ),
                  _buildTreeNode(
                    'Hire and manage staff, market the practice, and manage finances',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Teach Veterinary Medicine',
                [
                  _buildTreeNode(
                    'Earn a graduate degree in education or veterinary medicine',
                    [],
                  ),
                  _buildTreeNode(
                    'Teach at a veterinary school or college',
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
