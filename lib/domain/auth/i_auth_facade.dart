import 'package:flutter_firebase_ddd_riverpod/domain/auth/auth_failure.dart';
import 'package:flutter_firebase_ddd_riverpod/domain/auth/value_objects.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
