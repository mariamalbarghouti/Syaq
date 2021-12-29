import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/home/utilities/opportunity_card.dart';

// List of Opportunity Card
class ListOfOpportunities extends StatelessWidget {
  const ListOfOpportunities({
    Key? key,
    required this.onTap,
    required this.opportunityTitle,
    required this.date,
    required this.location,
    this.status,
    required this.length,
    required this.isMember,
     this.img,
  }) : super(key: key);
  final VoidCallback onTap;
  final String? img;
  final String opportunityTitle;
  final String date;
  final String location;
  final String? status;
  final int length;
  final bool isMember;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 2,
      crossAxisSpacing: 2.h,
      mainAxisSpacing: 2.h,
      childAspectRatio: 1 / 0.8,
      children: List.generate(
        length,
        (index) => OpportunityCard(
          onTap: onTap,
          // img: '',
          opportunityTitle: opportunityTitle,
          date: date,
          location: location,
          img: img,
          status: status??'',
          isMember: isMember,
        ),
      ),
    );
  }
}
