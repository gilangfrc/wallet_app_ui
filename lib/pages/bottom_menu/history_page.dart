import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app_ui/pages/Util/history_card.dart';
import 'package:wallet_app_ui/pages/Util/style.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});

  List history = [
    {
      'month': 'February',
      'year': '2022',
      'history': [
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
      ],
    },
    {
      'month': 'January',
      'year': '2022',
      'history': [
        {
          'type': 'Receive',
          'amount': 'Rp. 100.000',
          'date': '01 Jan 2022',
          'time': '10:00',
          'status': 'Success'
        },
        {
          'type': 'Send',
          'amount': 'Rp. 100.000',
          'date': '01 Jan 2022',
          'time': '10:00',
          'status': 'Success'
        },
        {
          'type': 'Top Up',
          'amount': 'Rp. 100.000',
          'date': '01 Jan 2022',
          'time': '10:00',
          'status': 'Success'
        },
        {
          'type': 'Send',
          'amount': 'Rp. 100.000',
          'date': '01 Jan 2022',
          'time': '10:00',
          'status': 'Success'
        },
        {
          'type': 'Withdraw',
          'amount': 'Rp. 100.000',
          'date': '01 Jan 2022',
          'time': '10:00',
          'status': 'Success'
        },
        {
          'type': 'Top Up',
          'amount': 'Rp. 100.000',
          'date': '01 Jan 2022',
          'time': '10:00',
          'status': 'Success'
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text(
          'History',
          style: Style.textStyle(22, Colors.white, FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: history.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '${history[index]['month']} ${history[index]['year']}',
                    style:
                        Style.textStyle(18, Colors.grey[600], FontWeight.w500),
                  ),
                ),
                // const SizedBox(height: 10),
                ListView.builder(
                  itemCount: history[index]['history'].length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index2) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                      child: HistoryCard(
                        type: history[index]['history'][index2]['type'],
                        amount: history[index]['history'][index2]['amount'],
                        date: history[index]['history'][index2]['date'],
                        time: history[index]['history'][index2]['time'],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
              ],
            );
          },
        ),
      ),
    );
  }
}
