// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StateDropdownState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StateDropdownState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StateDropdownState()';
}


}

/// @nodoc
class $StateDropdownStateCopyWith<$Res>  {
$StateDropdownStateCopyWith(StateDropdownState _, $Res Function(StateDropdownState) __);
}


/// Adds pattern-matching-related methods to [StateDropdownState].
extension StateDropdownStatePatterns on StateDropdownState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StateDropdownStateLoading value)?  loading,TResult Function( StateDropdownStateError value)?  error,TResult Function( StateDropdownStateData value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StateDropdownStateLoading() when loading != null:
return loading(_that);case StateDropdownStateError() when error != null:
return error(_that);case StateDropdownStateData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StateDropdownStateLoading value)  loading,required TResult Function( StateDropdownStateError value)  error,required TResult Function( StateDropdownStateData value)  data,}){
final _that = this;
switch (_that) {
case StateDropdownStateLoading():
return loading(_that);case StateDropdownStateError():
return error(_that);case StateDropdownStateData():
return data(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StateDropdownStateLoading value)?  loading,TResult? Function( StateDropdownStateError value)?  error,TResult? Function( StateDropdownStateData value)?  data,}){
final _that = this;
switch (_that) {
case StateDropdownStateLoading() when loading != null:
return loading(_that);case StateDropdownStateError() when error != null:
return error(_that);case StateDropdownStateData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( Object error)?  error,TResult Function( List<StateModel> states)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StateDropdownStateLoading() when loading != null:
return loading();case StateDropdownStateError() when error != null:
return error(_that.error);case StateDropdownStateData() when data != null:
return data(_that.states);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( Object error)  error,required TResult Function( List<StateModel> states)  data,}) {final _that = this;
switch (_that) {
case StateDropdownStateLoading():
return loading();case StateDropdownStateError():
return error(_that.error);case StateDropdownStateData():
return data(_that.states);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( Object error)?  error,TResult? Function( List<StateModel> states)?  data,}) {final _that = this;
switch (_that) {
case StateDropdownStateLoading() when loading != null:
return loading();case StateDropdownStateError() when error != null:
return error(_that.error);case StateDropdownStateData() when data != null:
return data(_that.states);case _:
  return null;

}
}

}

/// @nodoc


class StateDropdownStateLoading implements StateDropdownState {
   StateDropdownStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StateDropdownStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StateDropdownState.loading()';
}


}




/// @nodoc


class StateDropdownStateError implements StateDropdownState {
   StateDropdownStateError(this.error);
  

 final  Object error;

/// Create a copy of StateDropdownState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StateDropdownStateErrorCopyWith<StateDropdownStateError> get copyWith => _$StateDropdownStateErrorCopyWithImpl<StateDropdownStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StateDropdownStateError&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'StateDropdownState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $StateDropdownStateErrorCopyWith<$Res> implements $StateDropdownStateCopyWith<$Res> {
  factory $StateDropdownStateErrorCopyWith(StateDropdownStateError value, $Res Function(StateDropdownStateError) _then) = _$StateDropdownStateErrorCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class _$StateDropdownStateErrorCopyWithImpl<$Res>
    implements $StateDropdownStateErrorCopyWith<$Res> {
  _$StateDropdownStateErrorCopyWithImpl(this._self, this._then);

  final StateDropdownStateError _self;
  final $Res Function(StateDropdownStateError) _then;

/// Create a copy of StateDropdownState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(StateDropdownStateError(
null == error ? _self.error : error ,
  ));
}


}

/// @nodoc


class StateDropdownStateData implements StateDropdownState {
   StateDropdownStateData(final  List<StateModel> states): _states = states;
  

 final  List<StateModel> _states;
 List<StateModel> get states {
  if (_states is EqualUnmodifiableListView) return _states;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_states);
}


/// Create a copy of StateDropdownState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StateDropdownStateDataCopyWith<StateDropdownStateData> get copyWith => _$StateDropdownStateDataCopyWithImpl<StateDropdownStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StateDropdownStateData&&const DeepCollectionEquality().equals(other._states, _states));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_states));

@override
String toString() {
  return 'StateDropdownState.data(states: $states)';
}


}

/// @nodoc
abstract mixin class $StateDropdownStateDataCopyWith<$Res> implements $StateDropdownStateCopyWith<$Res> {
  factory $StateDropdownStateDataCopyWith(StateDropdownStateData value, $Res Function(StateDropdownStateData) _then) = _$StateDropdownStateDataCopyWithImpl;
@useResult
$Res call({
 List<StateModel> states
});




}
/// @nodoc
class _$StateDropdownStateDataCopyWithImpl<$Res>
    implements $StateDropdownStateDataCopyWith<$Res> {
  _$StateDropdownStateDataCopyWithImpl(this._self, this._then);

  final StateDropdownStateData _self;
  final $Res Function(StateDropdownStateData) _then;

/// Create a copy of StateDropdownState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? states = null,}) {
  return _then(StateDropdownStateData(
null == states ? _self._states : states // ignore: cast_nullable_to_non_nullable
as List<StateModel>,
  ));
}


}

// dart format on
