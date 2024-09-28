import 'package:efishery_smart_feeder_apps/presentation/utility/colors.dart';
import 'package:efishery_smart_feeder_apps/presentation/views/edit_schedule_screen.dart';
import 'package:efishery_smart_feeder_apps/presentation/widgets/circular_indicator_card.dart';
import 'package:efishery_smart_feeder_apps/presentation/widgets/title_header_section.dart';
import 'package:flutter/material.dart';

class FidderScheduleScreen extends StatelessWidget {
  const FidderScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHederText(),
                const SizedBox(height: 16),
                _buildChartItem(),
                const SizedBox(height: 16),
                TitleHeaderSection(
                  title: "This Week Feed",
                  buttonTitle: ' Edit Schedule',
                  icons: Icons.edit,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditScheduleScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                _buildProgressCardItem(),
                const SizedBox(height: 16),
                const TitleHeaderSection(title: "Recent Scheduler"),
                const SizedBox(height: 16),
                _buildListViewItems()
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView _buildListViewItems() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return _buildListTileCard();
      },
    );
  }

  Widget _buildListTileCard() {
    return Card(
      child: ListTile(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('10:00-02:12'),
            Text('200'),
          ],
        ),
        leading: CircleAvatar(
          backgroundColor: CustomColor.primaryColor,
          child: const Text(
            '1',
            style: TextStyle(color: Colors.white),
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.timer_outlined),
          onPressed: () {},
        ),
      ),
    );
  }

  SizedBox _buildProgressCardItem() {
    return const SizedBox(
      height: 110,
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: CircularIndicatorCard(
              title: "Total Feed/day",
              countNumber: '80 kg',
              percenCount: 0.50,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: CircularIndicatorCard(
              title: "Total Output",
              countNumber: '160.0 kg',
              percenCount: 0.80,
            ),
          )
        ],
      ),
    );
  }

  Container _buildChartItem() {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: CustomColor.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "Under the Development",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget _buildHederText() {
    return const Text(
      "Fedder Schedule",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
