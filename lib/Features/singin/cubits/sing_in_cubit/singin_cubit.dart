import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'singin_state.dart';

class SinginCubit extends Cubit<SinginState> {
  SinginCubit() : super(SinginInitial());
  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(SinginInitial());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      emit(SinginInSuccess());
    } on Exception catch (e) {
      emit(
        SinginInFailure(erorrMessage: 'something went wrong '),
      );
    }
  }
}
