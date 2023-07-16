import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vikalp/screens/university.dart';

class College extends StatefulWidget {
  const College({Key? key}) : super(key: key);

  @override
  State<College> createState() => _CollegeState();
}

class _CollegeState extends State<College> {
  List<University>? universities;
  bool boarding = true;

  updateData({String name = "", String country = ""}) {
    setState(() {
      universities = null;
      boarding = false;
    });

    University.getData(name: name, country: country).then((value) {
      setState(() {
        universities = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: TextField(
                      onChanged: (String value) {
                        if (value.length >= 3) {
                          updateData(name: value);
                        }
                      },
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        hintText: "Name",
                        hintStyle: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff939393),
                        ),
                        filled: true,
                        fillColor: Color(0xff000000),
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        prefixIcon: Icon(Icons.search,
                            color: Color(0xff939393), size: 24),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: TextField(
                      onChanged: (String value) {
                        if (value.length >= 3) {
                          updateData(country: value);
                        }
                      },
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        hintText: "Country",
                        hintStyle: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff939393),
                        ),
                        filled: true,
                        fillColor: Color(0xff000000),
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        prefixIcon: Icon(Icons.search,
                            color: Color(0xff939393), size: 24),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: boarding
                  ? const Center(
                      child: Text("To get started, search by name or country."))
                  : universities == null
                      ? const Center(child: CircularProgressIndicator())
                      : ListView(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          children: universities!.map((University university) {
                            return Card(
                              child: Column(
                                children: [
                                  Text(
                                    university.name,
                                    style: textTheme.headline6,
                                  ),
                                  Text(university.country),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff380955),
                                    ),
                                    onPressed: () {
                                      launch(university.webPage);
                                    },
                                    child: const Text("Go To Website"),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
