import 'package:efishery_smart_feeder_apps/presentation/utility/colors.dart';
import 'package:efishery_smart_feeder_apps/presentation/widgets/title_header_section.dart';
import 'package:flutter/material.dart';

class EditScheduleScreen extends StatefulWidget {
  const EditScheduleScreen({super.key});

  @override
  State<EditScheduleScreen> createState() => _EditScheduleScreenState();
}

class _EditScheduleScreenState extends State<EditScheduleScreen> {
  int _selectedItem = 0;
  final TextEditingController _startingHourController = TextEditingController();
  final TextEditingController _feedWidgetController = TextEditingController();
  final TextEditingController _endHourController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _globalKey,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  const TitleHeaderSection(title: 'Edit Schedule'),
                  const SizedBox(height: 16),
                  TextFormField(
                    validator: (String? value) {
                      String v = value ?? '';
                      if (v.isEmpty) {
                        return 'Enter Starting Hour';
                      }
                      return null;
                    },
                    controller: _startingHourController,
                    decoration: const InputDecoration(
                      labelText: 'Starting Hour',
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    validator: (String? value) {
                      String v = value ?? '';
                      if (v.isEmpty) {
                        return 'Enter Feed Weight';
                      }
                      return null;
                    },
                    controller: _feedWidgetController,
                    decoration: const InputDecoration(
                      labelText: 'Feed Weight',
                      suffixText: 'Kilogram',
                      suffixStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(child: _buildSelectHourCard(0)),
                        const SizedBox(width: 8),
                        Expanded(child: _buildSelectHourCard(1)),
                        const SizedBox(width: 8),
                        Expanded(child: _buildSelectHourCard(2)),
                        const SizedBox(width: 8),
                        Expanded(child: _buildSelectHourCard(3)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    validator: (String? value) {
                      String v = value ?? '';
                      if (v.isEmpty) {
                        return 'Enter End Hour';
                      }
                      return null;
                    },
                    controller: _endHourController,
                    decoration: const InputDecoration(
                      labelText: 'End Hour',
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildShowcontainerData(),
                  const SizedBox(height: 26),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('CANCEL'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_globalKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: CustomColor.primaryColor,
                                    content: const Text("Save Successfuly"),
                                  ),
                                );
                                Navigator.pop(context);
                                _startingHourController.clear();
                                _feedWidgetController.clear();
                                _endHourController.clear();
                              }
                            },
                            child: const Text("SAVE"),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _buildShowcontainerData() {
    return Container(
      height: 80,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: CustomColor.primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildContainerShowDetails(title: "kilogram", kg: '50 kg'),
          _buildContainerShowDetails(title: "total", kg: '13x 3256 g'),
          _buildContainerShowDetails(title: "fit", kg: "43'3'"),
          _buildContainerShowDetails(title: "jam akir", kg: "0'2'2"),
        ],
      ),
    );
  }

  Widget _buildContainerShowDetails(
      {required String title, required String kg}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          kg,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }

  Widget _buildSelectHourCard(int index) {
    bool isSelected = index == _selectedItem;
    return GestureDetector(
      onTap: () {
        _selectedItem = index;
        setState(() {});
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        height: 60,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? CustomColor.primaryColor : Colors.grey,
        ),
        child: const Text(
          "End Hour",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _startingHourController.dispose();
    _feedWidgetController.dispose();
    _endHourController.dispose();
    super.dispose();
  }
}
