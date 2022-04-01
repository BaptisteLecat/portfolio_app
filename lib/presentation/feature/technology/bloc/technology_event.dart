part of 'technology_bloc.dart';

abstract class TechnologyEvent extends Equatable {
  const TechnologyEvent([List props = const []]);

  @override
  List<Object> get props => [];
}

class TechnologyReset extends TechnologyEvent {}

class TechnologySelect extends TechnologyEvent {
  final Technology technology;
  TechnologySelect({required this.technology}) : super([technology]);
}

class TechnologyFetchAll extends TechnologyEvent {}

class TechnologyCreation extends TechnologyEvent {}

class TechnologyCancelCreation extends TechnologyEvent {}

class TechnologyConfirmCreation extends TechnologyEvent {
  final Technology technology;
  TechnologyConfirmCreation({required this.technology}) : super([technology]);
}

class TechnologyUpdate extends TechnologyEvent {
  final Technology technology;
  TechnologyUpdate({required this.technology}) : super([technology]);
}

class TechnologyDelete extends TechnologyEvent {
  final Technology technology;
  TechnologyDelete({required this.technology}) : super([technology]);
}
