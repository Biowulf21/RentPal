// Mocks generated by Mockito 5.3.2 from annotations
// in bumblebee/test/feature/manage%20properties/domain/usecases/create/create_property_usecase_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:bumblebee/core/exceptions/failure.dart' as _i5;
import 'package:bumblebee/core/models/property.dart' as _i6;
import 'package:bumblebee/feature/authentication/data/models/user.dart' as _i7;
import 'package:bumblebee/feature/manage%20properties/domain/usecases/create/create_property_usecase.dart'
    as _i3;
import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:dartz/dartz.dart' as _i2;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CreatePropertyUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockCreatePropertyUseCase extends _i1.Mock
    implements _i3.CreatePropertyUseCase {
  @override
  _i4.Future<_i2.Either<_i5.Failure, String>> createProperty({
    required String? name,
    required _i6.PropertyType? type,
    required String? address,
    required _i7.userRoles? userRole,
    required _i8.FirebaseAuth? auth,
    required _i9.FirebaseFirestore? firestore,
    bool? hasAdvance,
    double? rating,
    int? numberOfMonthsAdvance,
    String? ownerID,
    double? costPerMonthsAdvance,
    bool? hasDeposit,
    double? depositPrice,
    bool? isFullyFurnished,
    List<_i6.Amenity>? amenities,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #createProperty,
          [],
          {
            #name: name,
            #type: type,
            #address: address,
            #userRole: userRole,
            #auth: auth,
            #firestore: firestore,
            #hasAdvance: hasAdvance,
            #rating: rating,
            #numberOfMonthsAdvance: numberOfMonthsAdvance,
            #ownerID: ownerID,
            #costPerMonthsAdvance: costPerMonthsAdvance,
            #hasDeposit: hasDeposit,
            #depositPrice: depositPrice,
            #isFullyFurnished: isFullyFurnished,
            #amenities: amenities,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, String>>.value(
            _FakeEither_0<_i5.Failure, String>(
          this,
          Invocation.method(
            #createProperty,
            [],
            {
              #name: name,
              #type: type,
              #address: address,
              #userRole: userRole,
              #auth: auth,
              #firestore: firestore,
              #hasAdvance: hasAdvance,
              #rating: rating,
              #numberOfMonthsAdvance: numberOfMonthsAdvance,
              #ownerID: ownerID,
              #costPerMonthsAdvance: costPerMonthsAdvance,
              #hasDeposit: hasDeposit,
              #depositPrice: depositPrice,
              #isFullyFurnished: isFullyFurnished,
              #amenities: amenities,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, String>>.value(
                _FakeEither_0<_i5.Failure, String>(
          this,
          Invocation.method(
            #createProperty,
            [],
            {
              #name: name,
              #type: type,
              #address: address,
              #userRole: userRole,
              #auth: auth,
              #firestore: firestore,
              #hasAdvance: hasAdvance,
              #rating: rating,
              #numberOfMonthsAdvance: numberOfMonthsAdvance,
              #ownerID: ownerID,
              #costPerMonthsAdvance: costPerMonthsAdvance,
              #hasDeposit: hasDeposit,
              #depositPrice: depositPrice,
              #isFullyFurnished: isFullyFurnished,
              #amenities: amenities,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, String>>);
}