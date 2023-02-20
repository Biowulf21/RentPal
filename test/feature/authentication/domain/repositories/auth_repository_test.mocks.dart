// Mocks generated by Mockito 5.3.2 from annotations
// in bumblebee/test/feature/authentication/domain/repositories/auth_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:ui' as _i7;

import 'package:bumblebee/core/errors/failure.dart' as _i6;
import 'package:bumblebee/feature/authentication/domain/repositories/auth_repository.dart'
    as _i3;
import 'package:dartz/dartz.dart' as _i2;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
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

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i3.AuthRepository {
  MockAuthRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i5.User?> get authStateChange => (super.noSuchMethod(
        Invocation.getter(#authStateChange),
        returnValue: _i4.Stream<_i5.User?>.empty(),
      ) as _i4.Stream<_i5.User?>);
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);
  @override
  _i4.Future<_i5.User?> logInWithEmailandPassword(
    String? email,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #logInWithEmailandPassword,
          [
            email,
            password,
          ],
        ),
        returnValue: _i4.Future<_i5.User?>.value(),
      ) as _i4.Future<_i5.User?>);
  @override
  bool getVerificationStatus() => (super.noSuchMethod(
        Invocation.method(
          #getVerificationStatus,
          [],
        ),
        returnValue: false,
      ) as bool);
  @override
  _i4.Future<void> sendVerifyEmailLink(String? email) => (super.noSuchMethod(
        Invocation.method(
          #sendVerifyEmailLink,
          [email],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> sendPasswordResetEmail(String? email) => (super.noSuchMethod(
        Invocation.method(
          #sendPasswordResetEmail,
          [email],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<_i2.Either<_i6.Failure, _i5.User?>> createAccountWithEmailandPass(
    String? email,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createAccountWithEmailandPass,
          [
            email,
            password,
          ],
        ),
        returnValue: _i4.Future<_i2.Either<_i6.Failure, _i5.User?>>.value(
            _FakeEither_0<_i6.Failure, _i5.User?>(
          this,
          Invocation.method(
            #createAccountWithEmailandPass,
            [
              email,
              password,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i6.Failure, _i5.User?>>);
  @override
  _i4.Future<void> logOut() => (super.noSuchMethod(
        Invocation.method(
          #logOut,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<_i5.User?> getCurrentUser() => (super.noSuchMethod(
        Invocation.method(
          #getCurrentUser,
          [],
        ),
        returnValue: _i4.Future<_i5.User?>.value(),
      ) as _i4.Future<_i5.User?>);
  @override
  void addListener(_i7.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i7.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
