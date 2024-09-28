import 'package:efishery_smart_feeder_apps/presentation/utility/colors.dart';
import 'package:flutter/material.dart';

class TitleHeaderSection extends StatelessWidget {
  const TitleHeaderSection({
    super.key,
    required this.title,
    this.onTap,
    this.buttonTitle,
    this.icons,
  });

  final String title;
  final VoidCallback? onTap;
  final String? buttonTitle;
  final IconData? icons;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Icon(
               icons,
                size: 25,
                color: CustomColor.primaryColor,
              ),
              Text(
                buttonTitle ?? '',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
