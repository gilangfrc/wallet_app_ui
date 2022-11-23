import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app_ui/pages/Util/style.dart';

class HistoryCard extends StatelessWidget {
  String type;
  String amount;
  String date;
  String time;
  HistoryCard(
      {super.key,
      required this.type,
      required this.amount,
      required this.date,
      required this.time});

  IconData getIcon(type) {
    switch (type) {
      case 'Topup':
        return Icons.add_circle_rounded;
      case 'Send':
        return Icons.upload_rounded;
      case 'Receive':
        return Icons.publish_rounded;
      case 'Withdraw':
        return Icons.payments;
      default:
        return Icons.add_circle_rounded;
    }
  }

  Color getColor(type) {
    switch (type) {
      case 'Topup':
        return Colors.green;
      case 'Send':
        return Colors.red;
      case 'Receive':
        return Colors.green;
      case 'Withdraw':
        return Colors.red;
      default:
        return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        // decoration: const BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.all(Radius.circular(20)),
        //   boxShadow: [
        //     BoxShadow(
        //       color: Colors.black12,
        //       spreadRadius: 1,
        //       blurRadius: 1,
        //       offset: Offset(0, 1),
        //     )
        //   ],
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue[500],
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Icon(
                    getIcon(type),
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type,
                      style: Style.textStyle(16, Colors.black, FontWeight.w500),
                    ),
                    Text(
                      amount,
                      style: Style.textStyle(
                          16, getColor(type), FontWeight.normal),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  date,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey[500],
                  ),
                ),
                Text(
                  time,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
