import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'singin_state.dart';

class SinginCubit extends Cubit<SinginState> {
  SinginCubit() : super(SinginInitial());
  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(SinginInLoading());
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(SinginInSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SinginInFailure(erorrMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SinginInFailure(
            erorrMessage: 'Wrong password provided for that user.'));
      }
    } catch (e) {
      emit(SinginInFailure(
          erorrMessage: 'There was an error please try again!'));
    }
  }
}
