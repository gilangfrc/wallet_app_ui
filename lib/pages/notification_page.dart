import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});

  List notification = [
    {
      'month': 'February',
      'year': '2022',
      'notification': [
        {
          'title': 'Top Up',
          'description': 'You have successfully top up Rp. 100.000',
          'date': '20 Feb 2022',
          'time': '10:00',
        },
        {
          'title': 'Send',
          'description': 'You have successfully send Rp. 50.000',
          'date': '08 Feb 2022',
          'time': '07:00',
        },
        {
          'title': 'System',
          'description': 'New version of wallet app is available',
          'date': '08 Feb 2022',
          'time': '07:00',
        },
      ]
    },
    {
      'month': 'January',
      'year': '2022',
      'notification': [
        {
          'title': 'Receive',
          'description': 'You have successfully receive Rp. 100.000',
          'date': '01 Jan 2022',
          'time': '10:00',
        },
        {
          'title': 'Security',
          'description': 'Your account has been logged in from a new device',
          'date': '01 Jan 2022',
          'time': '10:00',
        },
        {
          'title': 'Send',
          'description': 'You have successfully send Rp. 100.000',
          'date': '01 Jan 2022',
          'time': '10:00',
        },
        {
          'title': 'Top Up',
          'description': 'You have successfully top up Rp. 100.000',
          'date': '01 Jan 2022',
          'time': '10:00',
        },
        {
          'title': 'Send',
          'description': 'You have successfully send Rp. 100.000',
          'date': '01 Jan 2022',
          'time': '10:00',
        },
      ]
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
          'Notification',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: notification.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '${notification[index]['month']} ${notification[index]['year']}',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                // const SizedBox(height: 10),
                ListView.builder(
                  padding: const EdgeInsets.only(bottom: 10),
                  itemCount: notification[index]['notification'].length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index2) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                      child: Card(
                        elevation: 2,
                        surfaceTintColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${notification[index]['notification'][index2]['title']}',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                  Text(
                                    '${notification[index]['notification'][index2]['date']}',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '${notification[index]['notification'][index2]['description']}',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '${notification[index]['notification'][index2]['time']}',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
