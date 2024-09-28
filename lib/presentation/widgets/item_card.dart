import 'package:efishery_smart_feeder_apps/presentation/utility/assets_path.dart';
import 'package:efishery_smart_feeder_apps/presentation/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            margin: EdgeInsets.zero,
            color: CustomColor.primaryColor,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset(
                    AssetsPath.fishImage,
                    width: 200,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Mr Fokrul!",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Title",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Sub Title",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    _buildText(
                      title: 'fish (kg)',
                    ),
                    _buildText(
                        title: '52,568 kg', color: CustomColor.primaryColor),
                  ],
                ),
                Column(
                  children: [
                    _buildText(
                      title: 'total fish (kg)',
                    ),
                    _buildText(
                        title: '52,255 kg', color: CustomColor.primaryColor),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: CustomColor.primaryColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildText({required String title, Color? color}) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}
