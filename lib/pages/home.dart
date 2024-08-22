import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/utils/components/my_buton.dart';
import 'package:wallet_app_ui/utils/components/my_card.dart';
import 'package:wallet_app_ui/utils/components/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        shape:const CircleBorder(),
        child:const Icon(Icons.monetization_on,color: Colors.white,size: 32,),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[300],
        child: Padding(
          padding:  EdgeInsets.only(top: 10,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home_filled,size: 32,color: Colors.pink[300],),
              Icon(Icons.settings,size: 32,color: Colors.pink[300],),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        // mY text
                        'My ',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              letterSpacing: .8),
                        ),
                      ),
                      Text(
                        // Card text
                      
                        'Card',
                        style: GoogleFonts.roboto(
                          textStyle:
                              const TextStyle(fontSize: 24, letterSpacing: .8),
                        ),
                      ),
                    ],
                  ),
                  // plus button
                  Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
        
            const SizedBox(
              height: 30,
            ),
            // cards
            SizedBox(
              height: 200,
              child: PageView(
                // controller
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: const [
                  MyCard(
                    balance: 23234.23,
                    cardNumber: 23423494949,
                    expiryMonth: 10,
                    expiryYear: 2025,
                    color: Colors.deepPurpleAccent,
                  ),
                  MyCard(
                    balance: 234.23,
                    cardNumber: 2342423423,
                    expiryMonth: 09,
                    expiryYear: 2030,
                    color: Colors.pinkAccent,
                  ),
                  MyCard(
                    balance: 343.23,
                    cardNumber: 2424243444,
                    expiryMonth: 05,
                    expiryYear: 2026,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
        
            // smooth page indicator
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect:const ExpandingDotsEffect(),
            ),
            const SizedBox(
              height: 20,
            ),
        
            // 3 buttons -> send + pay + bills
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // send button
                  MyButon(
                      iconImagePath: "assets/icons/send-money.png",
                      buttonText: "Send"),
                      
                  // pay button
                  MyButon(
                      iconImagePath: "assets/icons/credit-card.png",
                      buttonText: "Pay"),
                  // bills button
                  MyButon(
                      iconImagePath: "assets/icons/bill.png",
                      buttonText: "Bill"),
                ],
              ),
            ),
        
            // column -> stats + transactions
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  MyListTile(
                      iconImagePath: "assets/icons/statistics.png",
                      tileSubtitle: "Payment and Income",
                      tileTitle: "Statistics"),
                  SizedBox(
                    height: 20,
                  ),
                  MyListTile(
                      iconImagePath: "assets/icons/transaction.png",
                      tileSubtitle: "Transaction History",
                      tileTitle: "Transaction"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
