import 'package:flutter/material.dart';
// لـ SemanticsAction و SemanticsFlag
// لـ Offset و TextDirection

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 917,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.20, -0.98),
            end: Alignment(0.2, 0.98),
            colors: [Color(0xFF9CB3F9), Color(0xFF2A52C9), Color(0xFF14202E)],
          ),
        ),
        child: Stack(
          children: [
            // صورة الترحيب
            Positioned(
              left: 73,
              top: 155,
              child: WelcomeImage(),
            ),

            // زر التخطي
            Positioned(
              left: 107,
              top: 689,
              child: SkipButton(),
            ),

            // نص الترحيب
            Positioned(
              left: 40,
              top: 433,
              child: WelcomeText(),
            ),

            // شريط الحالة (Status Bar)
            Positioned(
              left: 0,
              top: 0,
              child: StatusBar(),
            ),
          ],
        ),
      ),
    );
  }
}

// صورة الترحيب
class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265,
      height: 265,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "images/transport_13636924.png"), // مسار الصورة من مجلد images
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

// زر التخطي
class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 193,
      height: 64,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 2.04,
            top: 0,
            child: Container(
              width: 190.96,
              height: 54.74,
              decoration: ShapeDecoration(
                color: Color(0xFFEFF0FB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: SizedBox(
              width: 141,
              height: 50,
              child: Text(
                'Skip',
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
        ],
      ),
    );
  }
}

// نص الترحيب
class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

// شريط الحالة (Status Bar)
class StatusBar extends StatelessWidget {
  const StatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 412,
      height: 47,
      padding: const EdgeInsets.only(top: 21),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 22,
                    padding: const EdgeInsets.only(left: 16, right: 6),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
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
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 134),
                SizedBox(width: 124, height: 10),
                const SizedBox(width: 134),
                Expanded(
                  child: Container(
                    height: 13,
                    padding: const EdgeInsets.only(left: 6, right: 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 7),
                        const SizedBox(width: 7),
                        SizedBox(
                          width: 27.33,
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Opacity(
                                  opacity: 0.35,
                                  child: Container(
                                    width: 25,
                                    height: 13,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1),
                                        borderRadius:
                                            BorderRadius.circular(4.30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 2,
                                top: 2,
                                child: Container(
                                  width: 21,
                                  height: 9,
                                  decoration: ShapeDecoration(
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2.50),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
