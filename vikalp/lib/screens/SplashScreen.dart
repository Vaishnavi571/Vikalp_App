import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vikalp/screens/walkthrough/walkthrough.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff380955),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.center,
              child: Lottie.asset(
                "assets/images/career.json",
                height: 350,
                width: 350,
                fit: BoxFit.cover,
                repeat: true,
                animate: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 60),
              child: Text(
                "👩‍🎓 ViKALP 👨‍🎓",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'poppins',
                  fontSize: 30,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WalkThrough()),
                  );
                },
                color: Color(0xff000000),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  "NEXT",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                textColor: Color(0xffffffff),
                height: 40,
                // minWidth: MediaQuery.of(context).size.width * 1,
                minWidth: MediaQuery.of(context).size.width),
          ],
        ),
      ),
    );
  }
}
