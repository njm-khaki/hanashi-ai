// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatModel {

// 生成AIモデル
 GenerateAi get model;
/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatModelCopyWith<ChatModel> get copyWith => _$ChatModelCopyWithImpl<ChatModel>(this as ChatModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatModel&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'ChatModel(model: $model)';
}


}

/// @nodoc
abstract mixin class $ChatModelCopyWith<$Res>  {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) _then) = _$ChatModelCopyWithImpl;
@useResult
$Res call({
 GenerateAi model
});




}
/// @nodoc
class _$ChatModelCopyWithImpl<$Res>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._self, this._then);

  final ChatModel _self;
  final $Res Function(ChatModel) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,}) {
  return _then(_self.copyWith(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as GenerateAi,
  ));
}

}


/// @nodoc


class Loading extends ChatModel {
  const Loading({required this.model}): super._();
  

// 生成AIモデル
@override final  GenerateAi model;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingCopyWith<Loading> get copyWith => _$LoadingCopyWithImpl<Loading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'ChatModel.loading(model: $model)';
}


}

/// @nodoc
abstract mixin class $LoadingCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) _then) = _$LoadingCopyWithImpl;
@override @useResult
$Res call({
 GenerateAi model
});




}
/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(this._self, this._then);

  final Loading _self;
  final $Res Function(Loading) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(Loading(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as GenerateAi,
  ));
}


}

/// @nodoc


class LoadingError extends ChatModel {
  const LoadingError({required this.model}): super._();
  

// 生成AIモデル
@override final  GenerateAi model;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingErrorCopyWith<LoadingError> get copyWith => _$LoadingErrorCopyWithImpl<LoadingError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingError&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'ChatModel.loadingError(model: $model)';
}


}

/// @nodoc
abstract mixin class $LoadingErrorCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory $LoadingErrorCopyWith(LoadingError value, $Res Function(LoadingError) _then) = _$LoadingErrorCopyWithImpl;
@override @useResult
$Res call({
 GenerateAi model
});




}
/// @nodoc
class _$LoadingErrorCopyWithImpl<$Res>
    implements $LoadingErrorCopyWith<$Res> {
  _$LoadingErrorCopyWithImpl(this._self, this._then);

  final LoadingError _self;
  final $Res Function(LoadingError) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(LoadingError(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as GenerateAi,
  ));
}


}

/// @nodoc


class Idle extends ChatModel {
  const Idle({required this.text, required this.model}): super._();
  

// チャットテキスト
 final  String text;
// 生成AIモデル
@override final  GenerateAi model;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdleCopyWith<Idle> get copyWith => _$IdleCopyWithImpl<Idle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Idle&&(identical(other.text, text) || other.text == text)&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,text,model);

@override
String toString() {
  return 'ChatModel.idle(text: $text, model: $model)';
}


}

/// @nodoc
abstract mixin class $IdleCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) _then) = _$IdleCopyWithImpl;
@override @useResult
$Res call({
 String text, GenerateAi model
});




}
/// @nodoc
class _$IdleCopyWithImpl<$Res>
    implements $IdleCopyWith<$Res> {
  _$IdleCopyWithImpl(this._self, this._then);

  final Idle _self;
  final $Res Function(Idle) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? model = null,}) {
  return _then(Idle(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as GenerateAi,
  ));
}


}

/// @nodoc


class Thinking extends ChatModel {
  const Thinking({required this.model}): super._();
  

// 生成AIモデル
@override final  GenerateAi model;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThinkingCopyWith<Thinking> get copyWith => _$ThinkingCopyWithImpl<Thinking>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Thinking&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'ChatModel.thinking(model: $model)';
}


}

/// @nodoc
abstract mixin class $ThinkingCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory $ThinkingCopyWith(Thinking value, $Res Function(Thinking) _then) = _$ThinkingCopyWithImpl;
@override @useResult
$Res call({
 GenerateAi model
});




}
/// @nodoc
class _$ThinkingCopyWithImpl<$Res>
    implements $ThinkingCopyWith<$Res> {
  _$ThinkingCopyWithImpl(this._self, this._then);

  final Thinking _self;
  final $Res Function(Thinking) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(Thinking(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as GenerateAi,
  ));
}


}

/// @nodoc


class Panic extends ChatModel {
  const Panic({required this.model}): super._();
  

// 生成AIモデル
@override final  GenerateAi model;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PanicCopyWith<Panic> get copyWith => _$PanicCopyWithImpl<Panic>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Panic&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'ChatModel.panic(model: $model)';
}


}

/// @nodoc
abstract mixin class $PanicCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory $PanicCopyWith(Panic value, $Res Function(Panic) _then) = _$PanicCopyWithImpl;
@override @useResult
$Res call({
 GenerateAi model
});




}
/// @nodoc
class _$PanicCopyWithImpl<$Res>
    implements $PanicCopyWith<$Res> {
  _$PanicCopyWithImpl(this._self, this._then);

  final Panic _self;
  final $Res Function(Panic) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(Panic(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as GenerateAi,
  ));
}


}

/// @nodoc


class Speech extends ChatModel {
  const Speech({required this.text, required this.model}): super._();
  

// チャットテキスト
 final  String text;
// 生成AIモデル
@override final  GenerateAi model;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeechCopyWith<Speech> get copyWith => _$SpeechCopyWithImpl<Speech>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Speech&&(identical(other.text, text) || other.text == text)&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,text,model);

@override
String toString() {
  return 'ChatModel.speech(text: $text, model: $model)';
}


}

/// @nodoc
abstract mixin class $SpeechCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory $SpeechCopyWith(Speech value, $Res Function(Speech) _then) = _$SpeechCopyWithImpl;
@override @useResult
$Res call({
 String text, GenerateAi model
});




}
/// @nodoc
class _$SpeechCopyWithImpl<$Res>
    implements $SpeechCopyWith<$Res> {
  _$SpeechCopyWithImpl(this._self, this._then);

  final Speech _self;
  final $Res Function(Speech) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? model = null,}) {
  return _then(Speech(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as GenerateAi,
  ));
}


}

// dart format on
