import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: AccountTypeSelectionScreen(),
    ),
  ));
}

class AccountTypeSelectionScreen extends StatelessWidget {
  const AccountTypeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Positioned(
            left: 22,
            top: 105,
            child: Container(
              width: 368,
              height: 320,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/368x320"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 113,
            top: 613,
            child: AccountButton(
              text: 'Passenger',
              backgroundColor: Color(0xFFEFF0FB),
              textColor: Color(0xFF002BAA),
            ),
          ),
          Positioned(
            left: 113,
            top: 709,
            child: AccountButton(
              text: 'Driver',
              backgroundColor: Color(0xFF547CF5),
              textColor: Color(0xFFE9EBF8),
            ),
          ),
          Positioned(
            left: 20,
            top: 429,
            child: SizedBox(
              width: 372,
              child: Text(
                'To get started, choose your account type: Are you a passenger or a driver?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Instrument Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      '9:41',
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
                    width: 27.33,
                    height: 13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.30),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.35)),
                    ),
                    child: Center(
                      child: Container(
                        width: 21,
                        height: 9,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(2.50),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AccountButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const AccountButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(vertical: 6),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 52,
            decoration: ShapeDecoration(
              color: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                  fontSize: 24,
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
