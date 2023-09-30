part of 'records_cubit.dart';

abstract class RecordsState extends Equatable{
  const RecordsState();
}

final class RecordsInitial extends RecordsState {
  @override
  List<Object> get props => [];
}

final class RecordsLoading extends RecordsState {
  @override
  List<Object> get props => [];
}

final class RecordsSuccess extends RecordsState {
final List<RecordsModel> records;
     RecordsSuccess(this.records);

  @override
  List<Object> get props => [records];
}
final class RecordsError extends RecordsState {
  @override
  List<Object> get props => [];
}
