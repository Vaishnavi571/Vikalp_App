import 'package:flutter/material.dart';

class SpeechTherapistRoadmap extends StatelessWidget {
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
            "Speech Therapist Roadmap",
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
                image: AssetImage('assets/images/speech-therapist..png'),
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
                "Earn a Bachelor's Degree in Speech-Language Pathology or Communication Sciences and Disorders",
                [
                  _buildTreeNode(
                    'Complete coursework in speech and language development',
                    [],
                  ),
                  _buildTreeNode(
                    'Gain practical experience in supervised clinical settings',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                "Earn a Master's Degree in Speech-Language Pathology",
                [
                  _buildTreeNode(
                    "Complete coursework in anatomy and physiology of speech and language",
                    [],
                  ),
                  _buildTreeNode(
                    'Gain clinical experience through internships or externships',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Obtain State Licensure or Certification',
                [
                  _buildTreeNode(
                    'Pass the Praxis exam in speech-language pathology',
                    [],
                  ),
                  _buildTreeNode(
                    'Complete supervised clinical fellowship',
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
                'Gain Clinical Experience in a Variety of Settings',
                [
                  _buildTreeNode(
                    'Develop skills in assessment and treatment planning',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to work with clients of all ages and backgrounds',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Specific Area of Speech-Language Pathology',
                [
                  _buildTreeNode(
                    'Develop expertise in areas such as stuttering or voice disorders',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain additional training or certification in specialized areas',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Develop Interpersonal and Communication Skills',
                [
                  _buildTreeNode(
                    'Learn to effectively communicate with clients, families, and other healthcare professionals',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in counseling and patient education',
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
                'Advance to a Supervisory or Managerial Role',
                [
                  _buildTreeNode(
                    'Develop skills in program management and administration',
                    [],
                  ),
                  _buildTreeNode(
                    'Oversee the work of other speech-language pathologists',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Transition to a Teaching or Research Role',
                [
                  _buildTreeNode(
                    'Develop skills in curriculum development and instructional design',
                    [],
                  ),
                  _buildTreeNode(
                    'Conduct research in the field of speech-language pathology',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Start a Private Practice',
                [
                  _buildTreeNode(
                    'Develop a client base and establish a reputation in the community',
                    [],
                  ),
                  _buildTreeNode(
                    'Hire additional staff and expand the practice',
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
