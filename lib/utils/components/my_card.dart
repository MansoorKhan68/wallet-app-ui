import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color color;
  const MyCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 300,
        padding:const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          // main column of card
          crossAxisAlignment: CrossAxisAlignment.start,
      
          children: [
            Text(
              "Balance",
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                    fontSize: 16, letterSpacing: .8, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\$$balance",
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              )),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card info
                Text(
                  cardNumber.toString(),
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(letterSpacing: .8, color: Colors.white),
                  ),
                ),
                // card expiry
                Text(
                  "$expiryMonth/$expiryYear",
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(letterSpacing: .8, color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
