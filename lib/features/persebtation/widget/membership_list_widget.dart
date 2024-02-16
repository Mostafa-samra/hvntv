import 'package:flutter/material.dart';
import 'package:hvnt/domain/model/membership_list_model.dart';

class MembershipListWidget extends StatelessWidget {
  const MembershipListWidget({
    super.key,
    required this.membershipListModel,
  });
  final MembershipListModel membershipListModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(membershipListModel.image),
        ),
        Column(
          children: [
            Text(membershipListModel.textMember),
            Text(membershipListModel.textMation),
          ],
        ),
        const Spacer(),
        Text(membershipListModel.textCost),
      ],
    );
  }
}
