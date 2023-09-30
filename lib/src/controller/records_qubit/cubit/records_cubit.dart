import 'package:contact_app/src/controller/records_qubit/cubit/records_repository.dart';
import 'package:contact_app/src/model/record.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'records_state.dart';

class RecordsCubit extends Cubit<RecordsState> {
  RecordsCubit() : super(RecordsInitial());

getRecordData() async {
  emit(RecordsLoading());

  RecordsRepository repository = RecordsRepository();
  List<dynamic>? data = await repository.getData();
  if (data == null){
    emit(RecordsError());
    return;
  }

   List<RecordsModel> records = data.map((item) => RecordsModel.fromJSON(item)).toList();
   emit(RecordsSuccess(records));

}

}
