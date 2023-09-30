import 'package:contact_app/src/model/record.dart';
import 'package:flutter/material.dart';

class ContactListItemWidget extends StatelessWidget {
  ContactListItemWidget({super.key, required this.records});

final RecordsModel records;

// RecordController recordController = RecordController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            foregroundImage: AssetImage(records.photo),
            radius: 40,            
          ),
          title: Text(records.name),
          subtitle: Text(records.address),
          trailing: Icon(Icons.phone),

        )
      ],
    );
  }
}