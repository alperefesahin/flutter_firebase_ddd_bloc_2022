// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGoogle,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? registerWithEmailAndPassword,
    TResult? Function()? signInWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGoogle,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res, SignInFormEvent>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res, $Val extends SignInFormEvent>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$EmailChanged>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChanged(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGoogle,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? registerWithEmailAndPassword,
    TResult? Function()? signInWithEmailAndPassword,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGoogle,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged({required final String email}) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordChanged>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChanged(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGoogle,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? registerWithEmailAndPassword,
    TResult? Function()? signInWithEmailAndPassword,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGoogle,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged({required final String password}) =
      _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithGoogleCopyWith<$Res> {
  factory _$$SignInWithGoogleCopyWith(
          _$SignInWithGoogle value, $Res Function(_$SignInWithGoogle) then) =
      __$$SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignInWithGoogle>
    implements _$$SignInWithGoogleCopyWith<$Res> {
  __$$SignInWithGoogleCopyWithImpl(
      _$SignInWithGoogle _value, $Res Function(_$SignInWithGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithGoogle implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGoogle,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? registerWithEmailAndPassword,
    TResult? Function()? signInWithEmailAndPassword,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGoogle,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements SignInFormEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordCopyWith(
          _$RegisterWithEmailAndPassword value,
          $Res Function(_$RegisterWithEmailAndPassword) then) =
      __$$RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$RegisterWithEmailAndPassword>
    implements _$$RegisterWithEmailAndPasswordCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordCopyWithImpl(
      _$RegisterWithEmailAndPassword _value,
      $Res Function(_$RegisterWithEmailAndPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterWithEmailAndPassword implements RegisterWithEmailAndPassword {
  const _$RegisterWithEmailAndPassword();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGoogle,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
  }) {
    return registerWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? registerWithEmailAndPassword,
    TResult? Function()? signInWithEmailAndPassword,
  }) {
    return registerWithEmailAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGoogle,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
  }) {
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
  }) {
    return registerWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPassword implements SignInFormEvent {
  const factory RegisterWithEmailAndPassword() = _$RegisterWithEmailAndPassword;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordCopyWith(
          _$SignInWithEmailAndPassword value,
          $Res Function(_$SignInWithEmailAndPassword) then) =
      __$$SignInWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignInWithEmailAndPassword>
    implements _$$SignInWithEmailAndPasswordCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordCopyWithImpl(
      _$SignInWithEmailAndPassword _value,
      $Res Function(_$SignInWithEmailAndPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithEmailAndPassword implements SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPassword();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGoogle,
    required TResult Function() registerWithEmailAndPassword,
    required TResult Function() signInWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? registerWithEmailAndPassword,
    TResult? Function()? signInWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGoogle,
    TResult Function()? registerWithEmailAndPassword,
    TResult Function()? signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassword implements SignInFormEvent {
  const factory SignInWithEmailAndPassword() = _$SignInWithEmailAndPassword;
}
