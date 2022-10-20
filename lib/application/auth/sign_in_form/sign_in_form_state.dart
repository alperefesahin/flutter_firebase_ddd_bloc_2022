import 'package:flutter_firebase_ddd_riverpod/domain/auth/auth_failure.dart';
import 'package:flutter_firebase_ddd_riverpod/domain/auth/value_objects.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_form_state.freezed.dart';

@freezed
class SignInFormState with _$SignInFormState {
  factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  const SignInFormState._();

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(""),
        password: Password(""),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
