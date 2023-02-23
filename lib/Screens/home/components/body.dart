import 'package:flutter/material.dart';
import 'package:prop/Screens/home/components/verified_card.dart';
import 'package:prop/Screens/home/components/welcome_header_card.dart';

import 'goal_card.dart';
import 'heading.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeHeaderCard(),
          // underline
          const Heading(heading: "Goals", width: 50),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                GoalCards(icon: Icons.location_city),
                GoalCards(icon: Icons.map),
                GoalCards(icon: Icons.lock_clock),
                GoalCards(icon: Icons.indeterminate_check_box),
              ],
            ),
          ),
          const Heading(heading: "Verified Properties", width: 180),
          Column(
            children: const [
              VerifiedPropertyCard(
                ownerName: 'Srijan Samridh',
                landLocation: '',
                landSize: '',
                price: 41.405,
                status: 1,
              ),
              VerifiedPropertyCard(
                ownerName: 'Bhawna',
                landLocation: '',
                landSize: '',
                price: 45.505,
                status: 1,
              ),
              VerifiedPropertyCard(
                ownerName: 'Syna',
                landLocation: '',
                landSize: '',
                price: 50.000,
                status: 1,
              ),
              VerifiedPropertyCard(
                ownerName: 'Tripatjot Singh Arora',
                landLocation: '',
                landSize: '',
                price: 60.102,
                status: 0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}