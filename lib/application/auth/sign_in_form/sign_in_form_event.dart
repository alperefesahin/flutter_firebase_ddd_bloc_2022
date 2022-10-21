part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged({required String email}) =
      EmailChanged;
  const factory SignInFormEvent.passwordChanged({required String password}) =
      PasswordChanged;
  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;

  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
}
