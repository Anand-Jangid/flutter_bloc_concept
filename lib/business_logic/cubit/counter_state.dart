// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_cubit.dart';
// @immutable
// abstract class CounterState {}

// class CounterInitial extends CounterState {}

class CounterState {
  int counterValue;
  bool? wasIncremented;
  CounterState({this.wasIncremented, required this.counterValue});
}
