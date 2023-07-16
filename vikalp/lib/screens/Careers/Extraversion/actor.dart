import 'package:flutter/material.dart';

class ActorCareerRoadmap extends StatelessWidget {
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
            "Actor Roadmap",
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
              image: AssetImage('assets/images/actor.png'),
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
              "Earn a Bachelor's Degree in Theater or a Related Field",
              [
                _buildTreeNode(
                  'Develop foundational knowledge in acting techniques',
                  [],
                ),
                _buildTreeNode(
                  'Gain experience in theater productions and on-camera work',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Pursue Advanced Training',
              [
                _buildTreeNode(
                  'Earn a Master of Fine Arts (MFA) in Acting',
                  [],
                ),
                _buildTreeNode(
                  'Take classes and workshops in various acting techniques',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Develop Skills in Other Areas of the Entertainment Industry',
              [
                _buildTreeNode(
                  'Take classes in singing and dancing',
                  [],
                ),
                _buildTreeNode(
                  'Learn about film and television production',
                  [],
                ),
              ],
            ),
          ],
        ),
        _buildTreeNode(
          'Building Experience',
          [
            _buildTreeNode(
              'Gain Experience in Local Theater and Independent Film',
              [
                _buildTreeNode(
                  'Audition for local productions and independent films',
                  [],
                ),
                _buildTreeNode(
                  'Develop a network of contacts in the industry',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Join a Theater Company or Acting Group',
              [
                _buildTreeNode(
                  'Perform in regular productions and gain exposure',
                  [],
                ),
                _buildTreeNode(
                  'Collaborate with other actors and industry professionals',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Participate in Student Films and Low-Budget Productions',
              [
                _buildTreeNode(
                  'Build a portfolio of work and gain experience on camera',
                  [],
                ),
                _buildTreeNode(
                  'Learn to work with limited resources and tight schedules',
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
              'Find an Agent or Manager',
              [
                _buildTreeNode(
                  'Develop a strong resume and headshot',
                  [],
                ),
                _buildTreeNode(
                  'Seek representation from reputable agents and managers',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Audition for Roles in TV and Film',
              [
                _buildTreeNode(
                  'Seek out auditions through agents and casting directors',
                  [],
                ),
                _buildTreeNode(
                  'Prepare for auditions and callbacks with dedicated practice',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Perform in Live Theater Productions',
              [
                _buildTreeNode(
                  'Audition for regional and national productions',
                  [],
                ),
                _buildTreeNode(
                  'Develop a reputation as a strong and reliable performer',
                  [],
                ),
              ],
            ),
            _buildTreeNode(
              'Develop a Personal Brand and Social Media Presence',
              [
                _buildTreeNode(
                  'Create a personal website and social media profiles',
                  [],
                ),
                _buildTreeNode(
                  'Share updates on projects and engage with fans',
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
