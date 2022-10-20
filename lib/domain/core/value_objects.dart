import 'package:flutter/material.dart';
import 'package:flutter_firebase_ddd_riverpod/domain/core/errors.dart';
import 'package:flutter_firebase_ddd_riverpod/domain/core/failures.dart';
import 'package:fpdart/fpdart.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identitiy - same as writing (r) => r
    return value.fold(
      (l) => throw UnexpectedValueError(l),
      id,
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(covariant ValueObject other) {
    if (identical(this, other)) return true;

    return other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject(value: $value)';
}
