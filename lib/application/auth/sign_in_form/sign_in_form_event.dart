import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_form_event.freezed.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged({required String email}) =
      EmailChanged;
  const factory SignInFormEvent.passwordChanged({required String password}) =
      PasswordChanged;
  const factory SignInFormEvent.signInWithGoogle() = SignInWithGoogle;

  const factory SignInFormEvent.registerWithEmailAndPassword() =
      RegisterWithEmailAndPassword;
  const factory SignInFormEvent.signInWithEmailAndPassword() =
      SignInWithEmailAndPassword;
}
