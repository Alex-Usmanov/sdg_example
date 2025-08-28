// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$State {

@JsonKey(name: 'value') String get name;@JsonKey(name: 'id') String get id;
/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StateCopyWith<State> get copyWith => _$StateCopyWithImpl<State>(this as State, _$identity);

  /// Serializes this State to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is State&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id);

@override
String toString() {
  return 'State(name: $name, id: $id)';
}


}

/// @nodoc
abstract mixin class $StateCopyWith<$Res>  {
  factory $StateCopyWith(State value, $Res Function(State) _then) = _$StateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'value') String name,@JsonKey(name: 'id') String id
});




}
/// @nodoc
class _$StateCopyWithImpl<$Res>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._self, this._then);

  final State _self;
  final $Res Function(State) _then;

/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [State].
extension StatePatterns on State {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _State value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _State value)  $default,){
final _that = this;
switch (_that) {
case _State():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _State value)?  $default,){
final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'value')  String name, @JsonKey(name: 'id')  String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that.name,_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'value')  String name, @JsonKey(name: 'id')  String id)  $default,) {final _that = this;
switch (_that) {
case _State():
return $default(_that.name,_that.id);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'value')  String name, @JsonKey(name: 'id')  String id)?  $default,) {final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that.name,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _State implements State {
   _State({@JsonKey(name: 'value') required this.name, @JsonKey(name: 'id') required this.id});
  factory _State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);

@override@JsonKey(name: 'value') final  String name;
@override@JsonKey(name: 'id') final  String id;

/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCopyWith<_State> get copyWith => __$StateCopyWithImpl<_State>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _State&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id);

@override
String toString() {
  return 'State(name: $name, id: $id)';
}


}

/// @nodoc
abstract mixin class _$StateCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) _then) = __$StateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'value') String name,@JsonKey(name: 'id') String id
});




}
/// @nodoc
class __$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._self, this._then);

  final _State _self;
  final $Res Function(_State) _then;

/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = null,}) {
  return _then(_State(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StateResponse {

 List<State> get states;
/// Create a copy of StateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StateResponseCopyWith<StateResponse> get copyWith => _$StateResponseCopyWithImpl<StateResponse>(this as StateResponse, _$identity);

  /// Serializes this StateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StateResponse&&const DeepCollectionEquality().equals(other.states, states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(states));

@override
String toString() {
  return 'StateResponse(states: $states)';
}


}

/// @nodoc
abstract mixin class $StateResponseCopyWith<$Res>  {
  factory $StateResponseCopyWith(StateResponse value, $Res Function(StateResponse) _then) = _$StateResponseCopyWithImpl;
@useResult
$Res call({
 List<State> states
});




}
/// @nodoc
class _$StateResponseCopyWithImpl<$Res>
    implements $StateResponseCopyWith<$Res> {
  _$StateResponseCopyWithImpl(this._self, this._then);

  final StateResponse _self;
  final $Res Function(StateResponse) _then;

/// Create a copy of StateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? states = null,}) {
  return _then(_self.copyWith(
states: null == states ? _self.states : states // ignore: cast_nullable_to_non_nullable
as List<State>,
  ));
}

}


/// Adds pattern-matching-related methods to [StateResponse].
extension StateResponsePatterns on StateResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StateResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StateResponse value)  $default,){
final _that = this;
switch (_that) {
case _StateResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StateResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<State> states)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StateResponse() when $default != null:
return $default(_that.states);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<State> states)  $default,) {final _that = this;
switch (_that) {
case _StateResponse():
return $default(_that.states);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<State> states)?  $default,) {final _that = this;
switch (_that) {
case _StateResponse() when $default != null:
return $default(_that.states);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StateResponse implements StateResponse {
   _StateResponse(final  List<State> states): _states = states;
  factory _StateResponse.fromJson(Map<String, dynamic> json) => _$StateResponseFromJson(json);

 final  List<State> _states;
@override List<State> get states {
  if (_states is EqualUnmodifiableListView) return _states;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_states);
}


/// Create a copy of StateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateResponseCopyWith<_StateResponse> get copyWith => __$StateResponseCopyWithImpl<_StateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StateResponse&&const DeepCollectionEquality().equals(other._states, _states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_states));

@override
String toString() {
  return 'StateResponse(states: $states)';
}


}

/// @nodoc
abstract mixin class _$StateResponseCopyWith<$Res> implements $StateResponseCopyWith<$Res> {
  factory _$StateResponseCopyWith(_StateResponse value, $Res Function(_StateResponse) _then) = __$StateResponseCopyWithImpl;
@override @useResult
$Res call({
 List<State> states
});




}
/// @nodoc
class __$StateResponseCopyWithImpl<$Res>
    implements _$StateResponseCopyWith<$Res> {
  __$StateResponseCopyWithImpl(this._self, this._then);

  final _StateResponse _self;
  final $Res Function(_StateResponse) _then;

/// Create a copy of StateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? states = null,}) {
  return _then(_StateResponse(
null == states ? _self._states : states // ignore: cast_nullable_to_non_nullable
as List<State>,
  ));
}


}

// dart format on
