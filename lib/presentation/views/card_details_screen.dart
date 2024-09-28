import 'package:efishery_smart_feeder_apps/presentation/utility/colors.dart';
import 'package:efishery_smart_feeder_apps/presentation/widgets/title_header_section.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildContainerTitleCard(),
            SizedBox(height: 16),
            TitleHeaderSection(
              title: "List Fidder",
              buttonTitle: ' Add Fedder',
              icons: Icons.add_circle_outline_outlined,
            ),
            SizedBox(height: 16),
            _buildFullCardDitailsCard(),
            SizedBox(height: 16),
            _buildfinalLastCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildfinalLastCard() {
    return Card(
      elevation: 3,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      margin: EdgeInsets.zero,
      child: SizedBox(
        height: 70,
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.wifi,
              size: 40,
              color: CustomColor.primaryColor.withOpacity(0.5),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Efiesay_03321",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.primaryColor,
                  ),
                ),
                Text(
                  "27/09/2024",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.stop_circle,
                    size: 40,
                    color: CustomColor.primaryColor.withOpacity(0.5),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_circle,
                    size: 40,
                    color: CustomColor.primaryColor.withOpacity(0.5),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container _buildFullCardDitailsCard() {
    return Container(
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildPlayCard(),
          SizedBox(height: 16),
          _buildInfoHeader(),
          SizedBox(height: 16),
          _buildInformationSection()
        ],
      ),
    );
  }

  Widget _buildInformationSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildColumnTextWidgets(
              title: 'Pool Info',
              subTitle: "Title",
            ),
            SizedBox(
              height: 10,
            ),
            _buildColumnTextWidgets(
              title: 'OutPut Info',
              subTitle: "29,40 gram/second",
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildColumnTextWidgets(
              title: 'Feed type',
              subTitle: "teraPangu",
            ),
            SizedBox(
              height: 10,
            ),
            _buildColumnTextWidgets(
              title: 'Feed Number',
              subTitle: "3mm",
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildColumnTextWidgets(
      {required String title, required String subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          subTitle ?? '',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Info Feeder",
            style: TextStyle(
              fontSize: 20,
              color: CustomColor.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.settings),
                label: Text("Settings"),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.vertical_shades_closed_sharp),
                label: Text("Schedule"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Card _buildPlayCard() {
    return Card(
      elevation: 3,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      margin: EdgeInsets.zero,
      child: SizedBox(
        height: 70,
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 25,
              percent: 0.63,
              progressColor: CustomColor.primaryColor,
              center: Text("63%"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "00h 15m 26s",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.primaryColor,
                  ),
                ),
                Text(
                  "efissery_00316",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.primaryColor,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.stop_circle,
                    size: 40,
                    color: CustomColor.primaryColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_circle,
                    size: 40,
                    color: CustomColor.primaryColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container _buildContainerTitleCard() {
    return Container(
      height: 140,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              margin: EdgeInsets.zero,
              color: CustomColor.primaryColor,
              child: Container(
                padding: EdgeInsets.all(16),
                height: 60,
                width: double.maxFinite,
                child: Text(
                  "Title",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              )),
          SizedBox(
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
                      title: 'Machine Active',
                    ),
                    _buildText(
                        title: '2 Feeder', color: CustomColor.primaryColor),
                  ],
                ),
                Column(
                  children: [
                    _buildText(
                      title: 'total feed (kg)',
                    ),
                    _buildText(
                        title: '52,255 kg', color: CustomColor.primaryColor),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings_applications,
                    color: CustomColor.primaryColor,
                    size: 50,
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
