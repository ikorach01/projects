import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 917,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.20, -0.98),
            end: Alignment(0.2, 0.98),
            colors: [Color(0xFF9CB3F9), Color(0xFF2A52C9), Color(0xFF14202E)],
          ),
        ),
        child: Stack(
          children: [
            // Logo Image
            const Positioned(
              left: 73,
              top: 155,
              child: SizedBox(
                width: 265,
                height: 265,
                child: Image(
                  image: AssetImage('images/transport_13636924.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            // Skip Button
            Positioned(
              left: 110,
              top: 612,
              child: Container(
                width: 193,
                height: 64,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Add navigation logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEFF0FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'skip..',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF002BAA),
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            // Welcome Text
            const Positioned(
              left: 40,
              top: 433,
              child: SizedBox(
                width: 333,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome! Start your journey now with ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Instrument Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'Busway',
                        style: TextStyle(
                          color: Color(0xFFBDDDF6),
                          fontSize: 25,
                          fontFamily: 'Instrument Sans',
                          fontWeight: FontWeight.w700,
                          height: 1.22,
                        ),
                      ),
                      TextSpan(
                        text: ', the smart solution for bus transportation.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Instrument Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            // Status Bar (Simulated)
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 412,
                height: 47,
                padding: const EdgeInsets.only(top: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        '9:41',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                          height: 1.29,
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 13,
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.30),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.35),
                          width: 1,
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(2.50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}