import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/Util/style.dart';

class PromoCard extends StatefulWidget {
  int categoryId;
  String categoryName;
  bool showCategory;
  bool horizontalView;
  PromoCard({
    super.key,
    required this.categoryId,
    required this.categoryName,
    this.showCategory = true,
    this.horizontalView = true,
  });

  @override
  State<PromoCard> createState() => _PromoCardState();
}

class _PromoCardState extends State<PromoCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.categoryName,
                  style: Style.textStyle(18, Colors.black, FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.red,
            height: widget.horizontalView ? 220 : null,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              shrinkWrap: widget.horizontalView ? false : true,
              physics: const ClampingScrollPhysics(),
              scrollDirection:
                  widget.horizontalView ? Axis.horizontal : Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 220,
                  child: Card(
                    elevation: 2,
                    surfaceTintColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // child column image and text
                    child: InkWell(
                      onTap: () {},
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width:
                                widget.horizontalView ? 300 : double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/images/banner.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Promo ${widget.categoryName} ${index + 1}",
                              style: Style.textStyle(
                                  14, Colors.black, FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // show indicator when view card
        ],
      ),
    );
  }
}
