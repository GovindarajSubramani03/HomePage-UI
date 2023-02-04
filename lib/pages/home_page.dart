import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SvgPicture.asset('assets/undraw_traveling_cx6s.svg'),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text("Find Your Travel Buddy",
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 52),
              child: Text(
                "Just Go ! Go see all the beauty in the world ",
                style: GoogleFonts.poppins(fontSize: 27, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ?",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          textStyle: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                      onPressed: () {},
                      child: const Text("Log in"))
                ],
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(12),
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 33, 191, 243),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Sign up with email",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(12),
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: SvgPicture.asset(
                        'assets/icons8-google.svg',
                        height: 25,
                      ),
                    ),
                    Text(
                      "Sign up with Google",
                      style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 33, 191, 243),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
