import 'package:flutter_firebase_ddd_bloc/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  UnexpectedValueError(this.valueFailure);

  final ValueFailure valueFailure;

  @override
  String toString() {
    const explanation = "Encountered a ValueFailure at an unrecoverable point.";

    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
