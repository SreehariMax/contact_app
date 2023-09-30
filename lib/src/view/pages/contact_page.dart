import 'package:contact_app/src/controller/records_qubit/cubit/records_cubit.dart';
import 'package:contact_app/src/view/widgets/contact_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // List<RecordsModel> records = [];

  // @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }

  // void getData() {
  //   RecordController controller = RecordController();
  //   controller.getData().then((value) {
  //     setState(() {
  //       records = value;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => RecordsCubit()..getRecordData(),
      child: SafeArea(
        child: BlocBuilder<RecordsCubit, RecordsState>(
          builder: (context, state) {
            if (state is RecordsLoading) {
              return CircularProgressIndicator();
            } else if (state is RecordsSuccess) {
              return ListView.builder(
                itemCount: state.records.length,
                itemBuilder: (BuildContext context, int index) {
                  return ContactListItemWidget(records: state.records[index]);
                },
              );
            } else if (state is RecordsError) {
              return Center(child: Text("Error Occured"));
            } else {
              return SizedBox();
            }
          },
        ),
      ),
    ));
  }
}
