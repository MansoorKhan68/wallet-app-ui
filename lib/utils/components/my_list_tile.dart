import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListTile extends StatelessWidget {
  final iconImagePath;
  final String tileTitle;
  final String tileSubtitle;

  const MyListTile(
      {super.key,
      required this.iconImagePath,
      required this.tileSubtitle,
      required this.tileTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // icon
        Container(
          padding: EdgeInsets.all(10),
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(iconImagePath),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tileTitle,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              tileSubtitle,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(fontSize: 14, color: Colors.grey[700])),
            ),
          ],
        ),
        const Spacer(),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
