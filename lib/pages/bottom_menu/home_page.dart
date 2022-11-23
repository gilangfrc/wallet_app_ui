import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app_ui/pages/Util/card_menu.dart';
import 'package:wallet_app_ui/pages/Util/history_card.dart';
import 'package:wallet_app_ui/pages/Util/style.dart';
import 'package:wallet_app_ui/pages/notification_page.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List history = [
    {
      'type': 'Top Up',
      'amount': 'Rp. 100.000',
      'date': '20 Feb 2022',
      'time': '10:00',
      'status': 'Success'
    },
    {
      'type': 'Send',
      'amount': 'Rp. 50.000',
      'date': '08 Feb 2022',
      'time': '07:00',
      'status': 'Success'
    },
    {
      'type': 'Receive',
      'amount': 'Rp. 50.000',
      'date': '08 Feb 2022',
      'time': '07:00',
      'status': 'Success'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Wallet App',
                style: Style.textStyle(26, Colors.blue, FontWeight.w500),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: NotificationPage()));
                },
                icon: const Icon(
                  Icons.notifications_rounded,
                  color: Colors.blue,
                  size: 28,
                ),
                padding: EdgeInsets.zero,
              )
            ],
          ),
        ),
        const SizedBox(height: 10),

        // This is the card that contains the balance
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 5,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Balance',
                    style: Style.textStyle(14, Colors.white, FontWeight.normal),
                  ),
                  Text(
                    'Rp. 126.874.563,12',
                    style: Style.textStyle(28, Colors.white, FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                  ),
                  // const SizedBox(height: 15),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CardMenu(
                          icon: Icons.add_circle_rounded,
                          text: 'Topup',
                          onPressed: () {},
                        ),
                        //vertical divider
                        CardMenu(
                          icon: Icons.upload_rounded,
                          text: 'Send',
                          onPressed: () {},
                        ),
                        CardMenu(
                          icon: Icons.publish_rounded,
                          text: 'Receive',
                          onPressed: () {},
                        ),
                        CardMenu(
                          icon: Icons.payments,
                          text: 'Withdraw',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      'Recent Transactions',
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      itemCount: history.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: HistoryCard(
                            type: history[index]['type'],
                            amount: history[index]['amount'],
                            date: history[index]['date'],
                            time: history[index]['time'],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
