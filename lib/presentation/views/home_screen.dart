import 'package:efishery_smart_feeder_apps/presentation/data/dymmy_list.dart';
import 'package:efishery_smart_feeder_apps/presentation/views/fidder_schedule_screen.dart';
import 'package:efishery_smart_feeder_apps/presentation/widgets/app_bar.dart';
import 'package:efishery_smart_feeder_apps/presentation/widgets/item_card.dart';
import 'package:efishery_smart_feeder_apps/presentation/widgets/list_tile_card.dart';
import 'package:efishery_smart_feeder_apps/presentation/widgets/title_header_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ///card..........
              const ItemCard(),
              const SizedBox(height: 16),
              TitleHeaderSection(
                title: 'FishList',
                buttonTitle: 'Add Button',
                icons: Icons.add_circle_outline_outlined,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FidderScheduleScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              _buildListTileCardListView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTileCardListView() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listData.length,
      itemBuilder: (context, index) {
        final item = listData[index];
        return ListTileCard(
          title: item['title'],
          centerValue: item['centerValue'],
          feeders: item['feeders'],
          percentage: item['percentage'],
          weight: item['weight'],
        );
      },
    );
  }
}
