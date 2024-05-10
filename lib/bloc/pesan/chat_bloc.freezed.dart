// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) getPesan,
    required TResult Function(String id, String pengirim, String pesan)
        sendPesan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? getPesan,
    TResult? Function(String id, String pengirim, String pesan)? sendPesan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? getPesan,
    TResult Function(String id, String pengirim, String pesan)? sendPesan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPesanDetail value) getPesan,
    required TResult Function(_SendPesan value) sendPesan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPesanDetail value)? getPesan,
    TResult? Function(_SendPesan value)? sendPesan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPesanDetail value)? getPesan,
    TResult Function(_SendPesan value)? sendPesan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChatEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) getPesan,
    required TResult Function(String id, String pengirim, String pesan)
        sendPesan,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? getPesan,
    TResult? Function(String id, String pengirim, String pesan)? sendPesan,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? getPesan,
    TResult Function(String id, String pengirim, String pesan)? sendPesan,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPesanDetail value) getPesan,
    required TResult Function(_SendPesan value) sendPesan,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPesanDetail value)? getPesan,
    TResult? Function(_SendPesan value)? sendPesan,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPesanDetail value)? getPesan,
    TResult Function(_SendPesan value)? sendPesan,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetPesanDetailImplCopyWith<$Res> {
  factory _$$GetPesanDetailImplCopyWith(_$GetPesanDetailImpl value,
          $Res Function(_$GetPesanDetailImpl) then) =
      __$$GetPesanDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetPesanDetailImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetPesanDetailImpl>
    implements _$$GetPesanDetailImplCopyWith<$Res> {
  __$$GetPesanDetailImplCopyWithImpl(
      _$GetPesanDetailImpl _value, $Res Function(_$GetPesanDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetPesanDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPesanDetailImpl implements _GetPesanDetail {
  const _$GetPesanDetailImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ChatEvent.getPesan(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPesanDetailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPesanDetailImplCopyWith<_$GetPesanDetailImpl> get copyWith =>
      __$$GetPesanDetailImplCopyWithImpl<_$GetPesanDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) getPesan,
    required TResult Function(String id, String pengirim, String pesan)
        sendPesan,
  }) {
    return getPesan(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? getPesan,
    TResult? Function(String id, String pengirim, String pesan)? sendPesan,
  }) {
    return getPesan?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? getPesan,
    TResult Function(String id, String pengirim, String pesan)? sendPesan,
    required TResult orElse(),
  }) {
    if (getPesan != null) {
      return getPesan(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPesanDetail value) getPesan,
    required TResult Function(_SendPesan value) sendPesan,
  }) {
    return getPesan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPesanDetail value)? getPesan,
    TResult? Function(_SendPesan value)? sendPesan,
  }) {
    return getPesan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPesanDetail value)? getPesan,
    TResult Function(_SendPesan value)? sendPesan,
    required TResult orElse(),
  }) {
    if (getPesan != null) {
      return getPesan(this);
    }
    return orElse();
  }
}

abstract class _GetPesanDetail implements ChatEvent {
  const factory _GetPesanDetail({required final String id}) =
      _$GetPesanDetailImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$GetPesanDetailImplCopyWith<_$GetPesanDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendPesanImplCopyWith<$Res> {
  factory _$$SendPesanImplCopyWith(
          _$SendPesanImpl value, $Res Function(_$SendPesanImpl) then) =
      __$$SendPesanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String pengirim, String pesan});
}

/// @nodoc
class __$$SendPesanImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendPesanImpl>
    implements _$$SendPesanImplCopyWith<$Res> {
  __$$SendPesanImplCopyWithImpl(
      _$SendPesanImpl _value, $Res Function(_$SendPesanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pengirim = null,
    Object? pesan = null,
  }) {
    return _then(_$SendPesanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pengirim: null == pengirim
          ? _value.pengirim
          : pengirim // ignore: cast_nullable_to_non_nullable
              as String,
      pesan: null == pesan
          ? _value.pesan
          : pesan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPesanImpl implements _SendPesan {
  const _$SendPesanImpl(
      {required this.id, required this.pengirim, required this.pesan});

  @override
  final String id;
  @override
  final String pengirim;
  @override
  final String pesan;

  @override
  String toString() {
    return 'ChatEvent.sendPesan(id: $id, pengirim: $pengirim, pesan: $pesan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPesanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pengirim, pengirim) ||
                other.pengirim == pengirim) &&
            (identical(other.pesan, pesan) || other.pesan == pesan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, pengirim, pesan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPesanImplCopyWith<_$SendPesanImpl> get copyWith =>
      __$$SendPesanImplCopyWithImpl<_$SendPesanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) getPesan,
    required TResult Function(String id, String pengirim, String pesan)
        sendPesan,
  }) {
    return sendPesan(id, pengirim, pesan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? getPesan,
    TResult? Function(String id, String pengirim, String pesan)? sendPesan,
  }) {
    return sendPesan?.call(id, pengirim, pesan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? getPesan,
    TResult Function(String id, String pengirim, String pesan)? sendPesan,
    required TResult orElse(),
  }) {
    if (sendPesan != null) {
      return sendPesan(id, pengirim, pesan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPesanDetail value) getPesan,
    required TResult Function(_SendPesan value) sendPesan,
  }) {
    return sendPesan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPesanDetail value)? getPesan,
    TResult? Function(_SendPesan value)? sendPesan,
  }) {
    return sendPesan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPesanDetail value)? getPesan,
    TResult Function(_SendPesan value)? sendPesan,
    required TResult orElse(),
  }) {
    if (sendPesan != null) {
      return sendPesan(this);
    }
    return orElse();
  }
}

abstract class _SendPesan implements ChatEvent {
  const factory _SendPesan(
      {required final String id,
      required final String pengirim,
      required final String pesan}) = _$SendPesanImpl;

  String get id;
  String get pengirim;
  String get pesan;
  @JsonKey(ignore: true)
  _$$SendPesanImplCopyWith<_$SendPesanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadsend,
    required TResult Function(PesanDetailResponModel pesanDetailResponModel)
        loaded,
    required TResult Function(AjukanResponModel ajukanResponModel) sukses,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadsend,
    TResult? Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult? Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadsend,
    TResult Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loadsend value) loadsend,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) sukses,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loadsend value)? loadsend,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? sukses,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loadsend value)? loadsend,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? sukses,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadsend,
    required TResult Function(PesanDetailResponModel pesanDetailResponModel)
        loaded,
    required TResult Function(AjukanResponModel ajukanResponModel) sukses,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadsend,
    TResult? Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult? Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadsend,
    TResult Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loadsend value) loadsend,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) sukses,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loadsend value)? loadsend,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? sukses,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loadsend value)? loadsend,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? sukses,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadsend,
    required TResult Function(PesanDetailResponModel pesanDetailResponModel)
        loaded,
    required TResult Function(AjukanResponModel ajukanResponModel) sukses,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadsend,
    TResult? Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult? Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadsend,
    TResult Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loadsend value) loadsend,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) sukses,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loadsend value)? loadsend,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? sukses,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loadsend value)? loadsend,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? sukses,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadsendImplCopyWith<$Res> {
  factory _$$LoadsendImplCopyWith(
          _$LoadsendImpl value, $Res Function(_$LoadsendImpl) then) =
      __$$LoadsendImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadsendImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadsendImpl>
    implements _$$LoadsendImplCopyWith<$Res> {
  __$$LoadsendImplCopyWithImpl(
      _$LoadsendImpl _value, $Res Function(_$LoadsendImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadsendImpl implements _Loadsend {
  const _$LoadsendImpl();

  @override
  String toString() {
    return 'ChatState.loadsend()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadsendImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadsend,
    required TResult Function(PesanDetailResponModel pesanDetailResponModel)
        loaded,
    required TResult Function(AjukanResponModel ajukanResponModel) sukses,
    required TResult Function(String message) error,
  }) {
    return loadsend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadsend,
    TResult? Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult? Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult? Function(String message)? error,
  }) {
    return loadsend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadsend,
    TResult Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadsend != null) {
      return loadsend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loadsend value) loadsend,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) sukses,
    required TResult Function(_Error value) error,
  }) {
    return loadsend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loadsend value)? loadsend,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? sukses,
    TResult? Function(_Error value)? error,
  }) {
    return loadsend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loadsend value)? loadsend,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? sukses,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadsend != null) {
      return loadsend(this);
    }
    return orElse();
  }
}

abstract class _Loadsend implements ChatState {
  const factory _Loadsend() = _$LoadsendImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PesanDetailResponModel pesanDetailResponModel});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pesanDetailResponModel = null,
  }) {
    return _then(_$LoadedImpl(
      null == pesanDetailResponModel
          ? _value.pesanDetailResponModel
          : pesanDetailResponModel // ignore: cast_nullable_to_non_nullable
              as PesanDetailResponModel,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.pesanDetailResponModel);

  @override
  final PesanDetailResponModel pesanDetailResponModel;

  @override
  String toString() {
    return 'ChatState.loaded(pesanDetailResponModel: $pesanDetailResponModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.pesanDetailResponModel, pesanDetailResponModel) ||
                other.pesanDetailResponModel == pesanDetailResponModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pesanDetailResponModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadsend,
    required TResult Function(PesanDetailResponModel pesanDetailResponModel)
        loaded,
    required TResult Function(AjukanResponModel ajukanResponModel) sukses,
    required TResult Function(String message) error,
  }) {
    return loaded(pesanDetailResponModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadsend,
    TResult? Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult? Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(pesanDetailResponModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadsend,
    TResult Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(pesanDetailResponModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loadsend value) loadsend,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) sukses,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loadsend value)? loadsend,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? sukses,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loadsend value)? loadsend,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? sukses,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ChatState {
  const factory _Loaded(final PesanDetailResponModel pesanDetailResponModel) =
      _$LoadedImpl;

  PesanDetailResponModel get pesanDetailResponModel;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AjukanResponModel ajukanResponModel});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ajukanResponModel = null,
  }) {
    return _then(_$SuccessImpl(
      null == ajukanResponModel
          ? _value.ajukanResponModel
          : ajukanResponModel // ignore: cast_nullable_to_non_nullable
              as AjukanResponModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.ajukanResponModel);

  @override
  final AjukanResponModel ajukanResponModel;

  @override
  String toString() {
    return 'ChatState.sukses(ajukanResponModel: $ajukanResponModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.ajukanResponModel, ajukanResponModel) ||
                other.ajukanResponModel == ajukanResponModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ajukanResponModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadsend,
    required TResult Function(PesanDetailResponModel pesanDetailResponModel)
        loaded,
    required TResult Function(AjukanResponModel ajukanResponModel) sukses,
    required TResult Function(String message) error,
  }) {
    return sukses(ajukanResponModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadsend,
    TResult? Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult? Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult? Function(String message)? error,
  }) {
    return sukses?.call(ajukanResponModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadsend,
    TResult Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (sukses != null) {
      return sukses(ajukanResponModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loadsend value) loadsend,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) sukses,
    required TResult Function(_Error value) error,
  }) {
    return sukses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loadsend value)? loadsend,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? sukses,
    TResult? Function(_Error value)? error,
  }) {
    return sukses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loadsend value)? loadsend,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? sukses,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (sukses != null) {
      return sukses(this);
    }
    return orElse();
  }
}

abstract class _Success implements ChatState {
  const factory _Success(final AjukanResponModel ajukanResponModel) =
      _$SuccessImpl;

  AjukanResponModel get ajukanResponModel;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadsend,
    required TResult Function(PesanDetailResponModel pesanDetailResponModel)
        loaded,
    required TResult Function(AjukanResponModel ajukanResponModel) sukses,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadsend,
    TResult? Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult? Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadsend,
    TResult Function(PesanDetailResponModel pesanDetailResponModel)? loaded,
    TResult Function(AjukanResponModel ajukanResponModel)? sukses,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loadsend value) loadsend,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) sukses,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loadsend value)? loadsend,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? sukses,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loadsend value)? loadsend,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? sukses,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
