import 'package:flutter/material.dart';

class FilmDirectorRoadmap extends StatelessWidget {
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
            "Film Director Roadmap",
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
                image: AssetImage('assets/images/clapboard.png'),
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
                'Obtain a Bachelor\'s Degree in Film or a related field',
                [
                  _buildTreeNode(
                    'Gain foundational knowledge in filmmaking',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn the technical aspects of film production',
                    [],
                  ),
                  _buildTreeNode(
                    'Study film history, theory, and criticism',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pursue a Master\'s Degree in Film or a related field',
                [
                  _buildTreeNode(
                    'Gain advanced knowledge in film theory and criticism',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop your filmmaking skills through hands-on experience and coursework',
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
                    'Work with directors, producers, and other professionals to learn about film production, storytelling, and cinematography',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Hone Your Creative Skills',
                [
                  _buildTreeNode(
                    'Develop your storytelling skills through writing and directing short films',
                    [],
                  ),
                  _buildTreeNode(
                    'Refine your cinematography skills through practice and experimentation',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Build Your Portfolio',
                [
                  _buildTreeNode(
                    'Create a reel of your work to showcase your skills and vision',
                    [],
                  ),
                  _buildTreeNode(
                    'Submit your work to film festivals to gain exposure and recognition',
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
                    'Meet and collaborate with other filmmakers and professionals in the industry',
                    [],
                  ),
                  _buildTreeNode(
                    'Join film organizations and associations to expand your network and access industry resources',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Direct Your Own Projects',
                [
                  _buildTreeNode(
                    'Develop your own creative projects and pitch them to studios, producers, and investors',
                    [],
                  ),
                  _buildTreeNode(
                    'Secure funding and resources for your projects',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Join a Film Studio or Production Company',
                [
                  _buildTreeNode(
                    'Apply for directing positions at film studios or production companies',
                    [],
                  ),
                  _buildTreeNode(
                    'Gain experience and build your reputation as a director',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Directing for TV and Streaming Platforms',
                [
                  _buildTreeNode(
                    'Explore opportunities to direct television shows and streaming content',
                    [],
                  ),
                  _buildTreeNode(
                      'Develop your skills in episodic storytelling', []),
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
