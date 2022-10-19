// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_firebase_ddd_bloc_2022/application/auth/sign_in_form/sign_in_form_state.dart';
import 'package:flutter_firebase_ddd_bloc_2022/domain/auth/i_auth_facade.dart';

class SignInFormNotifier extends StateNotifier<SignInFormState> {
  SignInFormNotifier(
    this._authFacade,
  ) : super(SignInFormState.initial());

  final IAuthFacade _authFacade;
}
