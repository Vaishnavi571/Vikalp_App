import 'package:flutter/material.dart';

class MusicianRoadmap extends StatelessWidget {
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
            "Musician Roadmap",
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
                image: AssetImage('assets/images/musicians.png'),
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
                'Formal Music Education',
                [
                  _buildTreeNode(
                    'Start with private lessons on an instrument',
                    [],
                  ),
                  _buildTreeNode(
                    'Take music theory and composition classes',
                    [],
                  ),
                  _buildTreeNode(
                    'Consider a degree in music performance or composition',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Professional Development',
            [
              _buildTreeNode(
                'Join Local Music Scene',
                [
                  _buildTreeNode(
                    'Play gigs at local venues',
                    [],
                  ),
                  _buildTreeNode(
                    'Get experience playing with other musicians',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Online Presence',
                [
                  _buildTreeNode(
                    'Create profiles on social media and music platforms',
                    [],
                  ),
                  _buildTreeNode(
                    'Record and upload original music',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Recording and Performing',
                [
                  _buildTreeNode(
                    'Find a recording studio to record music',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn how to produce and mix music',
                    [],
                  ),
                  _buildTreeNode(
                    'Book shows and tours to perform live',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Career Paths',
            [
              _buildTreeNode(
                'Session Musician',
                [
                  _buildTreeNode(
                    'Record music for other artists',
                    [],
                  ),
                  _buildTreeNode(
                    'Work on movie soundtracks or commercials',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Music Teacher',
                [
                  _buildTreeNode(
                    'Teach private lessons',
                    [],
                  ),
                  _buildTreeNode(
                    'Work at music schools or community centers',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Touring Musician',
                [
                  _buildTreeNode(
                    'Join a band or create your own',
                    [],
                  ),
                  _buildTreeNode(
                    'Travel and perform live shows',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Composer',
                [
                  _buildTreeNode(
                    'Write and arrange music for movies, TV, and commercials',
                    [],
                  ),
                  _buildTreeNode(
                    'Create original music for orchestras and ensembles',
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
