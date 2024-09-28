import 'package:efishery_smart_feeder_apps/presentation/utility/colors.dart';
import 'package:efishery_smart_feeder_apps/presentation/views/card_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ListTileCard extends StatelessWidget {
  final String title;
  final String feeders;
  final String weight;
  final double percentage;
  final int centerValue;

  const ListTileCard({
    required this.title,
    required this.feeders,
    required this.weight,
    required this.percentage,
    required this.centerValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CardDetailsScreen(),
            ),
          );
        },
        title: Text(
          title,
          style: TextStyle(color: CustomColor.primaryColor),
        ),
        subtitle: Row(
          children: [
            Text(feeders),
            const Text(' . '),
            Text(weight),
          ],
        ),
        leading: Icon(
          Icons.water_sharp,
          color: CustomColor.primaryColor,
        ),
        trailing: CircularPercentIndicator(
          radius: 20,
          percent: percentage,
          center: Text(
            centerValue.toString(),
            style: TextStyle(
              color: CustomColor.primaryColor,
            ),
          ),
          progressColor: CustomColor.primaryColor,
        ),
      ),
    );
  }
}
