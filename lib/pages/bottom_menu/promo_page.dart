import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/Util/promo_card.dart';
import 'package:wallet_app_ui/pages/Util/style.dart';

class PromoPage extends StatefulWidget {
  PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  final List _categories = [
    {
      'id': 1,
      'name': 'Food & Drink',
    },
    {
      'id': 2,
      'name': 'Shopping',
    },
    {
      'id': 3,
      'name': 'Travel',
    },
    {
      'id': 4,
      'name': 'Entertainment',
    },
    {
      'id': 5,
      'name': 'Health',
    },
  ];

  int? _selectedIndex;
  int? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text(
          'Promo',
          style: Style.textStyle(22, Colors.white, FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Container(
          //   // color: Colors.red,
          //   height: 50,
          //   // when scroll horizontal, the listview scroll until the edge of the screen
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: _categories.length,
          //     itemBuilder: (context, index) {
          //       return GestureDetector(
          //         onTap: () {
          //           setState(() {
          //             _selectedCategory = _categories[index]['id'];
          //           });
          //         },
          //         child: Container(
          //           padding: const EdgeInsets.symmetric(horizontal: 10),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Text(
          //                 _categories[index]['name'],
          //                 style: Style.textStyle(
          //                   14,
          //                   _selectedCategory == _categories[index]['id']
          //                       ? Colors.blue
          //                       : Colors.grey,
          //                   FontWeight.w500,
          //                 ),
          //               ),
          //               // slide animation for the underline
          //               AnimatedContainer(
          //                 duration: const Duration(milliseconds: 300),
          //                 height: 2,
          //                 width: 50,
          //                 color: _selectedCategory == _categories[index]['id']
          //                     ? Colors.blue
          //                     : Colors.transparent,
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: RawChip(
                    showCheckmark: false,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    label: Text(
                      _categories[index]['name'],
                      style: Style.textStyle(
                          14,
                          _selectedIndex == index ? Colors.blue : Colors.grey,
                          FontWeight.normal),
                    ),
                    shadowColor: Colors.transparent,
                    selectedShadowColor: Colors.transparent,
                    side: BorderSide(
                        color: _selectedIndex == index
                            ? Colors.blue
                            : Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Colors.white,
                    selectedColor: _selectedIndex == index
                        ? Colors.blue[50]
                        : Colors.white,
                    selected: _selectedIndex == index,
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedIndex = selected ? index : null;
                        if (_selectedIndex != null) {
                          _selectedCategory = _categories[index]['id'];
                        } else {
                          _selectedCategory = null;
                        }
                        // print(_selectedCategory);
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView(
              // shrinkWrap: true,
              children: [
                for (var i = 0; i < _categories.length; i++)
                  if (_selectedCategory == _categories[i]['id'])
                    PromoCard(
                      categoryId: _categories[i]['id'],
                      categoryName: _categories[i]['name'],
                      showCategory: false,
                      horizontalView: false,
                    )
                  else if (_selectedCategory == null)
                    PromoCard(
                      categoryId: _categories[i]['id'],
                      categoryName: _categories[i]['name'],
                    )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
