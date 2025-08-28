// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CountryDropdownState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryDropdownState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CountryDropdownState()';
}


}

/// @nodoc
class $CountryDropdownStateCopyWith<$Res>  {
$CountryDropdownStateCopyWith(CountryDropdownState _, $Res Function(CountryDropdownState) __);
}


/// Adds pattern-matching-related methods to [CountryDropdownState].
extension CountryDropdownStatePatterns on CountryDropdownState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CountryDropdownStateLoading value)?  loading,TResult Function( CountryDropdownStateError value)?  error,TResult Function( CountryDropdownStateData value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CountryDropdownStateLoading() when loading != null:
return loading(_that);case CountryDropdownStateError() when error != null:
return error(_that);case CountryDropdownStateData() when data != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CountryDropdownStateLoading value)  loading,required TResult Function( CountryDropdownStateError value)  error,required TResult Function( CountryDropdownStateData value)  data,}){
final _that = this;
switch (_that) {
case CountryDropdownStateLoading():
return loading(_that);case CountryDropdownStateError():
return error(_that);case CountryDropdownStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CountryDropdownStateLoading value)?  loading,TResult? Function( CountryDropdownStateError value)?  error,TResult? Function( CountryDropdownStateData value)?  data,}){
final _that = this;
switch (_that) {
case CountryDropdownStateLoading() when loading != null:
return loading(_that);case CountryDropdownStateError() when error != null:
return error(_that);case CountryDropdownStateData() when data != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( Object error)?  error,TResult Function( List<CountryModel> countries)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CountryDropdownStateLoading() when loading != null:
return loading();case CountryDropdownStateError() when error != null:
return error(_that.error);case CountryDropdownStateData() when data != null:
return data(_that.countries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( Object error)  error,required TResult Function( List<CountryModel> countries)  data,}) {final _that = this;
switch (_that) {
case CountryDropdownStateLoading():
return loading();case CountryDropdownStateError():
return error(_that.error);case CountryDropdownStateData():
return data(_that.countries);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( Object error)?  error,TResult? Function( List<CountryModel> countries)?  data,}) {final _that = this;
switch (_that) {
case CountryDropdownStateLoading() when loading != null:
return loading();case CountryDropdownStateError() when error != null:
return error(_that.error);case CountryDropdownStateData() when data != null:
return data(_that.countries);case _:
  return null;

}
}

}

/// @nodoc


class CountryDropdownStateLoading implements CountryDropdownState {
   CountryDropdownStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryDropdownStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CountryDropdownState.loading()';
}


}




/// @nodoc


class CountryDropdownStateError implements CountryDropdownState {
   CountryDropdownStateError(this.error);
  

 final  Object error;

/// Create a copy of CountryDropdownState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryDropdownStateErrorCopyWith<CountryDropdownStateError> get copyWith => _$CountryDropdownStateErrorCopyWithImpl<CountryDropdownStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryDropdownStateError&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'CountryDropdownState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $CountryDropdownStateErrorCopyWith<$Res> implements $CountryDropdownStateCopyWith<$Res> {
  factory $CountryDropdownStateErrorCopyWith(CountryDropdownStateError value, $Res Function(CountryDropdownStateError) _then) = _$CountryDropdownStateErrorCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class _$CountryDropdownStateErrorCopyWithImpl<$Res>
    implements $CountryDropdownStateErrorCopyWith<$Res> {
  _$CountryDropdownStateErrorCopyWithImpl(this._self, this._then);

  final CountryDropdownStateError _self;
  final $Res Function(CountryDropdownStateError) _then;

/// Create a copy of CountryDropdownState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(CountryDropdownStateError(
null == error ? _self.error : error ,
  ));
}


}

/// @nodoc


class CountryDropdownStateData implements CountryDropdownState {
   CountryDropdownStateData(final  List<CountryModel> countries): _countries = countries;
  

 final  List<CountryModel> _countries;
 List<CountryModel> get countries {
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countries);
}


/// Create a copy of CountryDropdownState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryDropdownStateDataCopyWith<CountryDropdownStateData> get copyWith => _$CountryDropdownStateDataCopyWithImpl<CountryDropdownStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryDropdownStateData&&const DeepCollectionEquality().equals(other._countries, _countries));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_countries));

@override
String toString() {
  return 'CountryDropdownState.data(countries: $countries)';
}


}

/// @nodoc
abstract mixin class $CountryDropdownStateDataCopyWith<$Res> implements $CountryDropdownStateCopyWith<$Res> {
  factory $CountryDropdownStateDataCopyWith(CountryDropdownStateData value, $Res Function(CountryDropdownStateData) _then) = _$CountryDropdownStateDataCopyWithImpl;
@useResult
$Res call({
 List<CountryModel> countries
});




}
/// @nodoc
class _$CountryDropdownStateDataCopyWithImpl<$Res>
    implements $CountryDropdownStateDataCopyWith<$Res> {
  _$CountryDropdownStateDataCopyWithImpl(this._self, this._then);

  final CountryDropdownStateData _self;
  final $Res Function(CountryDropdownStateData) _then;

/// Create a copy of CountryDropdownState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? countries = null,}) {
  return _then(CountryDropdownStateData(
null == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<CountryModel>,
  ));
}


}

// dart format on
