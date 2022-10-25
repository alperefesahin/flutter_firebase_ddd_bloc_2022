// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_item_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoItemPrimitive {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoItemPrimitiveCopyWith<TodoItemPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemPrimitiveCopyWith<$Res> {
  factory $TodoItemPrimitiveCopyWith(
          TodoItemPrimitive value, $Res Function(TodoItemPrimitive) then) =
      _$TodoItemPrimitiveCopyWithImpl<$Res, TodoItemPrimitive>;
  @useResult
  $Res call({UniqueId id, String name, bool done});
}

/// @nodoc
class _$TodoItemPrimitiveCopyWithImpl<$Res, $Val extends TodoItemPrimitive>
    implements $TodoItemPrimitiveCopyWith<$Res> {
  _$TodoItemPrimitiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoItemPrimitiveCopyWith<$Res>
    implements $TodoItemPrimitiveCopyWith<$Res> {
  factory _$$_TodoItemPrimitiveCopyWith(_$_TodoItemPrimitive value,
          $Res Function(_$_TodoItemPrimitive) then) =
      __$$_TodoItemPrimitiveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, String name, bool done});
}

/// @nodoc
class __$$_TodoItemPrimitiveCopyWithImpl<$Res>
    extends _$TodoItemPrimitiveCopyWithImpl<$Res, _$_TodoItemPrimitive>
    implements _$$_TodoItemPrimitiveCopyWith<$Res> {
  __$$_TodoItemPrimitiveCopyWithImpl(
      _$_TodoItemPrimitive _value, $Res Function(_$_TodoItemPrimitive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? done = null,
  }) {
    return _then(_$_TodoItemPrimitive(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TodoItemPrimitive extends _TodoItemPrimitive {
  const _$_TodoItemPrimitive(
      {required this.id, required this.name, required this.done})
      : super._();

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final bool done;

  @override
  String toString() {
    return 'TodoItemPrimitive(id: $id, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoItemPrimitive &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.done, done) || other.done == done));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoItemPrimitiveCopyWith<_$_TodoItemPrimitive> get copyWith =>
      __$$_TodoItemPrimitiveCopyWithImpl<_$_TodoItemPrimitive>(
          this, _$identity);
}

abstract class _TodoItemPrimitive extends TodoItemPrimitive {
  const factory _TodoItemPrimitive(
      {required final UniqueId id,
      required final String name,
      required final bool done}) = _$_TodoItemPrimitive;
  const _TodoItemPrimitive._() : super._();

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  bool get done;
  @override
  @JsonKey(ignore: true)
  _$$_TodoItemPrimitiveCopyWith<_$_TodoItemPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}
