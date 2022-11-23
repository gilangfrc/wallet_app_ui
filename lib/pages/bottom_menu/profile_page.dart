import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app_ui/pages/Util/style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            height: 150,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 110,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gilang Fathur Rachman',
                          style: Style.textStyle(
                              16, Colors.white, FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '081234567890',
                          style: Style.textStyle(
                              13, Colors.white, FontWeight.normal),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                        // button text with icon
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.qr_code_rounded,
                            color: Colors.white,
                            size: 16,
                          ),
                          label: Text(
                            'Show QR',
                            style: Style.textStyle(
                                12, Colors.white, FontWeight.normal),
                          ),
                          style: TextButton.styleFrom(
                            minimumSize: const Size(0, 0),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 5,
                            ),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // listview of menu
          Expanded(
            child: ListView(
              // no effect when scroll
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  width: double.infinity,
                  child: Text(
                    'Account',
                    style:
                        Style.textStyle(18, Colors.grey[600], FontWeight.w500),
                  ),
                ),
                Card(
                  elevation: 2,
                  surfaceTintColor: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        onTap: () {},
                        leading: const Icon(
                          Icons.person_rounded,
                          color: Colors.blue,
                        ),
                        title: Text(
                          'Profile',
                          style: Style.textStyle(
                              16, Colors.black, FontWeight.w500),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 16,
                        ),
                      ),
                      const Divider(
                        height: 0,
                        thickness: 1,
                      ),
                      ListTile(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        onTap: () {},
                        leading: const Icon(
                          Icons.lock_rounded,
                          color: Colors.blue,
                        ),
                        title: Text(
                          'Security',
                          style: Style.textStyle(
                              16, Colors.black, FontWeight.w500),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  width: double.infinity,
                  child: Text(
                    'Help',
                    style:
                        Style.textStyle(18, Colors.grey[600], FontWeight.w500),
                  ),
                ),
                Card(
                  elevation: 2,
                  surfaceTintColor: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        onTap: () {},
                        leading: const Icon(
                          Icons.help_rounded,
                          color: Colors.blue,
                        ),
                        title: Text(
                          'Help & Support',
                          style: Style.textStyle(
                              16, Colors.black, FontWeight.w500),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  width: double.infinity,
                  child: Text(
                    'About',
                    style:
                        Style.textStyle(18, Colors.grey[600], FontWeight.w500),
                  ),
                ),
                Card(
                  elevation: 2,
                  surfaceTintColor: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        onTap: () {},
                        leading: const Icon(
                          Icons.info_rounded,
                          color: Colors.blue,
                        ),
                        title: Text(
                          'Terms & Conditions',
                          style: Style.textStyle(
                              16, Colors.black, FontWeight.w500),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 16,
                        ),
                      ),
                      const Divider(
                        height: 0,
                        thickness: 1,
                      ),
                      ListTile(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        onTap: () {},
                        leading: const Icon(
                          Icons.verified_user_rounded,
                          color: Colors.blue,
                        ),
                        title: Text(
                          'Privacy Policy',
                          style: Style.textStyle(
                              16, Colors.black, FontWeight.w500),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Version 1.0.0',
                    style: Style.textStyle(12, Colors.grey, FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                // logout button
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue[500],
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Logout',
                      style: Style.textStyle(16, Colors.white, FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Container(
          //         padding: const EdgeInsets.symmetric(
          //           horizontal: 5,
          //         ),
          //         width: double.infinity,
          //         child: Text(
          //           'Account',
          //           style: GoogleFonts.poppins(
          //             fontSize: 18,
          //             fontWeight: FontWeight.w500,
          //             color: Colors.grey[600],
          //           ),
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       Card(
          //         surfaceTintColor: Colors.white,
          //         child: Column(
          //           children: [
          //             ListTile(
          //               onTap: () {},
          //               leading: const Icon(
          //                 Icons.person_rounded,
          //                 color: Colors.blue,
          //               ),
          //               title: Text(
          //                 'Profile',
          //                 style: GoogleFonts.poppins(
          //                   fontSize: 16,
          //                   fontWeight: FontWeight.w500,
          //                 ),
          //               ),
          //               trailing: const Icon(
          //                 Icons.arrow_forward_ios_rounded,
          //                 color: Colors.grey,
          //                 size: 16,
          //               ),
          //             ),
          //             const Divider(
          //               height: 0,
          //               thickness: 1,
          //             ),
          //             ListTile(
          //               onTap: () {},
          //               leading: const Icon(
          //                 Icons.lock_rounded,
          //                 color: Colors.blue,
          //               ),
          //               title: Text(
          //                 'Change Password',
          //                 style: GoogleFonts.poppins(
          //                   fontSize: 16,
          //                   fontWeight: FontWeight.w500,
          //                 ),
          //               ),
          //               trailing: const Icon(
          //                 Icons.arrow_forward_ios_rounded,
          //                 color: Colors.grey,
          //                 size: 16,
          //               ),
          //             ),
          //             const Divider(
          //               height: 0,
          //               thickness: 1,
          //             ),
          //             ListTile(
          //               onTap: () {},
          //               leading: const Icon(
          //                 Icons.logout_rounded,
          //                 color: Colors.blue,
          //               ),
          //               title: Text(
          //                 'Logout',
          //                 style: GoogleFonts.poppins(
          //                   fontSize: 16,
          //                   fontWeight: FontWeight.w500,
          //                 ),
          //               ),
          //               trailing: const Icon(
          //                 Icons.arrow_forward_ios_rounded,
          //                 color: Colors.grey,
          //                 size: 16,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
