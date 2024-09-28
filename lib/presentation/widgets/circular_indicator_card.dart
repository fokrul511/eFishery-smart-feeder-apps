import 'package:efishery_smart_feeder_apps/presentation/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircularIndicatorCard extends StatelessWidget {
  const CircularIndicatorCard({
    super.key,
    required this.title,
    required this.countNumber,
    required this.percenCount,
  });

  final String title;
  final String countNumber;
  final double percenCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: CustomColor.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                countNumber,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircularPercentIndicator(
                radius: 20,
                lineWidth: 5.0,
                percent: percenCount,
                progressColor: Colors.cyan,
                circularStrokeCap: CircularStrokeCap.round,
              )
            ],
          )
        ],
      ),
    );
  }
}
