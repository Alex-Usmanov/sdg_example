// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CityPickerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityPickerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityPickerState()';
}


}

/// @nodoc
class $CityPickerStateCopyWith<$Res>  {
$CityPickerStateCopyWith(CityPickerState _, $Res Function(CityPickerState) __);
}


/// Adds pattern-matching-related methods to [CityPickerState].
extension CityPickerStatePatterns on CityPickerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CityPickerStateInitial value)?  initialLoading,TResult Function( CityPickerStateCountriesLoaded value)?  countriesLoaded,TResult Function( CityPickerStateCountriesError value)?  countriesError,TResult Function( CityPickerStateStatesLoading value)?  statesLoading,TResult Function( CityPickerStateStatesError value)?  statesError,TResult Function( CityPickerStateStatesLoaded value)?  statesLoaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CityPickerStateInitial() when initialLoading != null:
return initialLoading(_that);case CityPickerStateCountriesLoaded() when countriesLoaded != null:
return countriesLoaded(_that);case CityPickerStateCountriesError() when countriesError != null:
return countriesError(_that);case CityPickerStateStatesLoading() when statesLoading != null:
return statesLoading(_that);case CityPickerStateStatesError() when statesError != null:
return statesError(_that);case CityPickerStateStatesLoaded() when statesLoaded != null:
return statesLoaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CityPickerStateInitial value)  initialLoading,required TResult Function( CityPickerStateCountriesLoaded value)  countriesLoaded,required TResult Function( CityPickerStateCountriesError value)  countriesError,required TResult Function( CityPickerStateStatesLoading value)  statesLoading,required TResult Function( CityPickerStateStatesError value)  statesError,required TResult Function( CityPickerStateStatesLoaded value)  statesLoaded,}){
final _that = this;
switch (_that) {
case CityPickerStateInitial():
return initialLoading(_that);case CityPickerStateCountriesLoaded():
return countriesLoaded(_that);case CityPickerStateCountriesError():
return countriesError(_that);case CityPickerStateStatesLoading():
return statesLoading(_that);case CityPickerStateStatesError():
return statesError(_that);case CityPickerStateStatesLoaded():
return statesLoaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CityPickerStateInitial value)?  initialLoading,TResult? Function( CityPickerStateCountriesLoaded value)?  countriesLoaded,TResult? Function( CityPickerStateCountriesError value)?  countriesError,TResult? Function( CityPickerStateStatesLoading value)?  statesLoading,TResult? Function( CityPickerStateStatesError value)?  statesError,TResult? Function( CityPickerStateStatesLoaded value)?  statesLoaded,}){
final _that = this;
switch (_that) {
case CityPickerStateInitial() when initialLoading != null:
return initialLoading(_that);case CityPickerStateCountriesLoaded() when countriesLoaded != null:
return countriesLoaded(_that);case CityPickerStateCountriesError() when countriesError != null:
return countriesError(_that);case CityPickerStateStatesLoading() when statesLoading != null:
return statesLoading(_that);case CityPickerStateStatesError() when statesError != null:
return statesError(_that);case CityPickerStateStatesLoaded() when statesLoaded != null:
return statesLoaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialLoading,TResult Function( List<Country> countries)?  countriesLoaded,TResult Function( Object error)?  countriesError,TResult Function( List<Country> countries,  Country country)?  statesLoading,TResult Function( Object error)?  statesError,TResult Function( List<Country> countries,  List<State> states,  State? selectedState)?  statesLoaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CityPickerStateInitial() when initialLoading != null:
return initialLoading();case CityPickerStateCountriesLoaded() when countriesLoaded != null:
return countriesLoaded(_that.countries);case CityPickerStateCountriesError() when countriesError != null:
return countriesError(_that.error);case CityPickerStateStatesLoading() when statesLoading != null:
return statesLoading(_that.countries,_that.country);case CityPickerStateStatesError() when statesError != null:
return statesError(_that.error);case CityPickerStateStatesLoaded() when statesLoaded != null:
return statesLoaded(_that.countries,_that.states,_that.selectedState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialLoading,required TResult Function( List<Country> countries)  countriesLoaded,required TResult Function( Object error)  countriesError,required TResult Function( List<Country> countries,  Country country)  statesLoading,required TResult Function( Object error)  statesError,required TResult Function( List<Country> countries,  List<State> states,  State? selectedState)  statesLoaded,}) {final _that = this;
switch (_that) {
case CityPickerStateInitial():
return initialLoading();case CityPickerStateCountriesLoaded():
return countriesLoaded(_that.countries);case CityPickerStateCountriesError():
return countriesError(_that.error);case CityPickerStateStatesLoading():
return statesLoading(_that.countries,_that.country);case CityPickerStateStatesError():
return statesError(_that.error);case CityPickerStateStatesLoaded():
return statesLoaded(_that.countries,_that.states,_that.selectedState);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialLoading,TResult? Function( List<Country> countries)?  countriesLoaded,TResult? Function( Object error)?  countriesError,TResult? Function( List<Country> countries,  Country country)?  statesLoading,TResult? Function( Object error)?  statesError,TResult? Function( List<Country> countries,  List<State> states,  State? selectedState)?  statesLoaded,}) {final _that = this;
switch (_that) {
case CityPickerStateInitial() when initialLoading != null:
return initialLoading();case CityPickerStateCountriesLoaded() when countriesLoaded != null:
return countriesLoaded(_that.countries);case CityPickerStateCountriesError() when countriesError != null:
return countriesError(_that.error);case CityPickerStateStatesLoading() when statesLoading != null:
return statesLoading(_that.countries,_that.country);case CityPickerStateStatesError() when statesError != null:
return statesError(_that.error);case CityPickerStateStatesLoaded() when statesLoaded != null:
return statesLoaded(_that.countries,_that.states,_that.selectedState);case _:
  return null;

}
}

}

/// @nodoc


class CityPickerStateInitial implements CityPickerState {
   CityPickerStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityPickerStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityPickerState.initialLoading()';
}


}




/// @nodoc


class CityPickerStateCountriesLoaded implements CityPickerState {
   CityPickerStateCountriesLoaded(final  List<Country> countries): _countries = countries;
  

 final  List<Country> _countries;
 List<Country> get countries {
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countries);
}


/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityPickerStateCountriesLoadedCopyWith<CityPickerStateCountriesLoaded> get copyWith => _$CityPickerStateCountriesLoadedCopyWithImpl<CityPickerStateCountriesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityPickerStateCountriesLoaded&&const DeepCollectionEquality().equals(other._countries, _countries));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_countries));

@override
String toString() {
  return 'CityPickerState.countriesLoaded(countries: $countries)';
}


}

/// @nodoc
abstract mixin class $CityPickerStateCountriesLoadedCopyWith<$Res> implements $CityPickerStateCopyWith<$Res> {
  factory $CityPickerStateCountriesLoadedCopyWith(CityPickerStateCountriesLoaded value, $Res Function(CityPickerStateCountriesLoaded) _then) = _$CityPickerStateCountriesLoadedCopyWithImpl;
@useResult
$Res call({
 List<Country> countries
});




}
/// @nodoc
class _$CityPickerStateCountriesLoadedCopyWithImpl<$Res>
    implements $CityPickerStateCountriesLoadedCopyWith<$Res> {
  _$CityPickerStateCountriesLoadedCopyWithImpl(this._self, this._then);

  final CityPickerStateCountriesLoaded _self;
  final $Res Function(CityPickerStateCountriesLoaded) _then;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? countries = null,}) {
  return _then(CityPickerStateCountriesLoaded(
null == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<Country>,
  ));
}


}

/// @nodoc


class CityPickerStateCountriesError implements CityPickerState {
   CityPickerStateCountriesError(this.error);
  

 final  Object error;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityPickerStateCountriesErrorCopyWith<CityPickerStateCountriesError> get copyWith => _$CityPickerStateCountriesErrorCopyWithImpl<CityPickerStateCountriesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityPickerStateCountriesError&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'CityPickerState.countriesError(error: $error)';
}


}

/// @nodoc
abstract mixin class $CityPickerStateCountriesErrorCopyWith<$Res> implements $CityPickerStateCopyWith<$Res> {
  factory $CityPickerStateCountriesErrorCopyWith(CityPickerStateCountriesError value, $Res Function(CityPickerStateCountriesError) _then) = _$CityPickerStateCountriesErrorCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class _$CityPickerStateCountriesErrorCopyWithImpl<$Res>
    implements $CityPickerStateCountriesErrorCopyWith<$Res> {
  _$CityPickerStateCountriesErrorCopyWithImpl(this._self, this._then);

  final CityPickerStateCountriesError _self;
  final $Res Function(CityPickerStateCountriesError) _then;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(CityPickerStateCountriesError(
null == error ? _self.error : error ,
  ));
}


}

/// @nodoc


class CityPickerStateStatesLoading implements CityPickerState {
   CityPickerStateStatesLoading(final  List<Country> countries, this.country): _countries = countries;
  

 final  List<Country> _countries;
 List<Country> get countries {
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countries);
}

 final  Country country;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityPickerStateStatesLoadingCopyWith<CityPickerStateStatesLoading> get copyWith => _$CityPickerStateStatesLoadingCopyWithImpl<CityPickerStateStatesLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityPickerStateStatesLoading&&const DeepCollectionEquality().equals(other._countries, _countries)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_countries),country);

@override
String toString() {
  return 'CityPickerState.statesLoading(countries: $countries, country: $country)';
}


}

/// @nodoc
abstract mixin class $CityPickerStateStatesLoadingCopyWith<$Res> implements $CityPickerStateCopyWith<$Res> {
  factory $CityPickerStateStatesLoadingCopyWith(CityPickerStateStatesLoading value, $Res Function(CityPickerStateStatesLoading) _then) = _$CityPickerStateStatesLoadingCopyWithImpl;
@useResult
$Res call({
 List<Country> countries, Country country
});


$CountryCopyWith<$Res> get country;

}
/// @nodoc
class _$CityPickerStateStatesLoadingCopyWithImpl<$Res>
    implements $CityPickerStateStatesLoadingCopyWith<$Res> {
  _$CityPickerStateStatesLoadingCopyWithImpl(this._self, this._then);

  final CityPickerStateStatesLoading _self;
  final $Res Function(CityPickerStateStatesLoading) _then;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? countries = null,Object? country = null,}) {
  return _then(CityPickerStateStatesLoading(
null == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<Country>,null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as Country,
  ));
}

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryCopyWith<$Res> get country {
  
  return $CountryCopyWith<$Res>(_self.country, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}

/// @nodoc


class CityPickerStateStatesError implements CityPickerState {
   CityPickerStateStatesError(this.error);
  

 final  Object error;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityPickerStateStatesErrorCopyWith<CityPickerStateStatesError> get copyWith => _$CityPickerStateStatesErrorCopyWithImpl<CityPickerStateStatesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityPickerStateStatesError&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'CityPickerState.statesError(error: $error)';
}


}

/// @nodoc
abstract mixin class $CityPickerStateStatesErrorCopyWith<$Res> implements $CityPickerStateCopyWith<$Res> {
  factory $CityPickerStateStatesErrorCopyWith(CityPickerStateStatesError value, $Res Function(CityPickerStateStatesError) _then) = _$CityPickerStateStatesErrorCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class _$CityPickerStateStatesErrorCopyWithImpl<$Res>
    implements $CityPickerStateStatesErrorCopyWith<$Res> {
  _$CityPickerStateStatesErrorCopyWithImpl(this._self, this._then);

  final CityPickerStateStatesError _self;
  final $Res Function(CityPickerStateStatesError) _then;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(CityPickerStateStatesError(
null == error ? _self.error : error ,
  ));
}


}

/// @nodoc


class CityPickerStateStatesLoaded implements CityPickerState {
   CityPickerStateStatesLoaded(final  List<Country> countries, final  List<State> states, {this.selectedState}): _countries = countries,_states = states;
  

 final  List<Country> _countries;
 List<Country> get countries {
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countries);
}

 final  List<State> _states;
 List<State> get states {
  if (_states is EqualUnmodifiableListView) return _states;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_states);
}

 final  State? selectedState;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityPickerStateStatesLoadedCopyWith<CityPickerStateStatesLoaded> get copyWith => _$CityPickerStateStatesLoadedCopyWithImpl<CityPickerStateStatesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityPickerStateStatesLoaded&&const DeepCollectionEquality().equals(other._countries, _countries)&&const DeepCollectionEquality().equals(other._states, _states)&&(identical(other.selectedState, selectedState) || other.selectedState == selectedState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_countries),const DeepCollectionEquality().hash(_states),selectedState);

@override
String toString() {
  return 'CityPickerState.statesLoaded(countries: $countries, states: $states, selectedState: $selectedState)';
}


}

/// @nodoc
abstract mixin class $CityPickerStateStatesLoadedCopyWith<$Res> implements $CityPickerStateCopyWith<$Res> {
  factory $CityPickerStateStatesLoadedCopyWith(CityPickerStateStatesLoaded value, $Res Function(CityPickerStateStatesLoaded) _then) = _$CityPickerStateStatesLoadedCopyWithImpl;
@useResult
$Res call({
 List<Country> countries, List<State> states, State? selectedState
});


$StateCopyWith<$Res>? get selectedState;

}
/// @nodoc
class _$CityPickerStateStatesLoadedCopyWithImpl<$Res>
    implements $CityPickerStateStatesLoadedCopyWith<$Res> {
  _$CityPickerStateStatesLoadedCopyWithImpl(this._self, this._then);

  final CityPickerStateStatesLoaded _self;
  final $Res Function(CityPickerStateStatesLoaded) _then;

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? countries = null,Object? states = null,Object? selectedState = freezed,}) {
  return _then(CityPickerStateStatesLoaded(
null == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<Country>,null == states ? _self._states : states // ignore: cast_nullable_to_non_nullable
as List<State>,selectedState: freezed == selectedState ? _self.selectedState : selectedState // ignore: cast_nullable_to_non_nullable
as State?,
  ));
}

/// Create a copy of CityPickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StateCopyWith<$Res>? get selectedState {
    if (_self.selectedState == null) {
    return null;
  }

  return $StateCopyWith<$Res>(_self.selectedState!, (value) {
    return _then(_self.copyWith(selectedState: value));
  });
}
}

// dart format on
