import 'package:flutter/material.dart';
import 'package:flutter_firebase_ddd_bloc_2022/domain/core/failures.dart';
import 'package:fpdart/fpdart.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

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
