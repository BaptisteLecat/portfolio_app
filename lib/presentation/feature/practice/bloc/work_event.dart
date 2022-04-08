part of 'work_bloc.dart';

abstract class WorkEvent extends Equatable {
  const WorkEvent([List props = const []]);

  @override
  List<Object> get props => [];
}

class WorkReset extends WorkEvent {}

class WorkSelect extends WorkEvent {
  final Work work;
  WorkSelect({required this.work}) : super([work]);
}

class WorkFetchAll extends WorkEvent {}

class WorkCreation extends WorkEvent {}

class WorkCancelCreation extends WorkEvent {}

class WorkConfirmCreation extends WorkEvent {
  final Work work;
  WorkConfirmCreation({required this.work}) : super([work]);
}

class WorkUpdate extends WorkEvent {
  final Work work;
  WorkUpdate({required this.work}) : super([work]);
}

class WorkDelete extends WorkEvent {
  final Work work;
  WorkDelete({required this.work}) : super([work]);
}
