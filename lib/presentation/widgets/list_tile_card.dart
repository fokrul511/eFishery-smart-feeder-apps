import 'package:efishery_smart_feeder_apps/presentation/utility/colors.dart';
import 'package:efishery_smart_feeder_apps/presentation/views/card_details_screen.dart';
import 'package:flutter/material.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard({
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
              builder: (context) => CardDetailsScreen(),
            ),
          );
        },
        title: Text(
          'Title',
          style: TextStyle(color: CustomColor.primaryColor),
        ),
        subtitle: const Row(
          children: [
            Text(
              "Text1 ",
            ),
            Text(
              'Text2',
            ),
          ],
        ),
        leading: Icon(
          Icons.water_sharp,
          color: CustomColor.primaryColor,
        ),
        trailing: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: CustomColor.primaryColor,
              ),
            ),
            Text(
              '10',
              style: TextStyle(
                color: CustomColor.primaryColor,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
