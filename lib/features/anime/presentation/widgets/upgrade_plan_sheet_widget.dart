import 'package:flutter/material.dart';

import 'plan_option_widget.dart';

class UpgradePlanSheetWidget extends StatefulWidget {
  const UpgradePlanSheetWidget({super.key});

  @override
  State<UpgradePlanSheetWidget> createState() => _UpgradePlanSheetWidgetState();
}

class _UpgradePlanSheetWidgetState extends State<UpgradePlanSheetWidget> {
  String _selectedPlan = 'monthly';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFDDE2FF), Color(0xFFDDE2FF), Color(0xFFFFFFFF)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -25,
            left: -40,
            child: Image.asset(
              'assets/images/Star1-2.png',
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            top: 80,
            right: -55,
            child: Image.asset(
              'assets/images/Star1-1.png',
              width: 200,
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Upgrade Plan',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Image.asset(
                  'assets/images/Rocket Boy 1.png',
                  height: 150,
                ), 
                const SizedBox(height: 16),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Text(
                    'Seamless Anime Experience, Ad-Free.',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1E1E3D),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Enjoy unlimited anime streaming without interruptions.',
                  style: TextStyle(
                    color: Color(0xFFAEADB5),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                PlanOptionWidget(
                  title: 'Monthly',
                  price: '\$5 USD /Month',
                  groupValue: _selectedPlan,
                  value: 'monthly',
                  onChanged: (value) => setState(() => _selectedPlan = value!),
                ),
                const SizedBox(height: 12),
                PlanOptionWidget(
                  title: 'Annually',
                  price: '\$50 USD /Year',
                  groupValue: _selectedPlan,
                  value: 'annually',
                  onChanged: (value) => setState(() => _selectedPlan = value!),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5436F8),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
