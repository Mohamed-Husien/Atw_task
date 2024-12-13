part of 'singin_cubit.dart';

@immutable
sealed class SinginState {}

final class SinginInitial extends SinginState {}

final class SinginInSuccess extends SinginState {}

final class SinginInLoading extends SinginState {}

final class SinginInFailure extends SinginState {
  final String erorrMessage;

  SinginInFailure({required this.erorrMessage});
}
