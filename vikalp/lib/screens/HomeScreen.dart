import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Stack(children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/homebg.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
            padding: EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 16),
              Text(
                "Motivation on your Way...",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCareerCard(
                      "",
                      "assets/images/quote1.png",
                    ),
                    _buildCareerCard(
                      "",
                      "assets/images/quote2.png",
                    ),
                    _buildCareerCard(
                      "",
                      "assets/images/quote3.png",
                    ),
                    _buildCareerCard(
                      "",
                      "assets/images/quote4.png",
                    ),
                    _buildCareerCard(
                      "",
                      "assets/images/quote5.png",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "What ViKALP Offers...",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                    height: 200,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      _buildCareerCard(
                        "",
                        "assets/images/uni.png",
                      ),
                      _buildCareerCard(
                        "",
                        "assets/images/career.png",
                      ),
                      _buildCareerCard(
                        "",
                        "assets/images/PTest.png",
                      ),
                      _buildCareerCard(
                        "",
                        "assets/images/chat.png",
                      )
                    ]))
              ]),
              SizedBox(height: 16),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Connect to us easily through LinkedIn... ",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                    height: 200,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      GestureDetector(
                        onTap: () {
                          _launchUrl(
                              "https://www.linkedin.com/in/pranalidarekar/");
                        },
                        child: _buildCareerCard(
                          "",
                          "assets/images/pranali.jpg",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchUrl(
                              "https://www.linkedin.com/in/vaishnavilalage/");
                        },
                        child: _buildCareerCard(
                          "",
                          "assets/images/vaish.jpg",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchUrl(
                              "https://www.linkedin.com/in/manali-surve-7805a4228/");
                        },
                        child: _buildCareerCard(
                          "",
                          "assets/images/manali.jpg",
                        ),
                      )
                    ]))
              ])
            ]))
      ])
    ])));
  }
}

Widget _buildCareerCard(String title, String image) {
  return Container(
      margin: EdgeInsets.only(right: 16),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          )
        ],
      ));
}

void _launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
