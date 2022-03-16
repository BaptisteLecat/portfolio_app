part of 'practice_bloc.dart';

abstract class PracticeState extends Equatable {
  const PracticeState();
  
  @override
  List<Object> get props => [];
}

class PracticeInitial extends PracticeState {}
