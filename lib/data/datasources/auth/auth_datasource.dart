import 'package:crypto_wallet/core/exception/exception.dart';
import 'package:crypto_wallet/data/model/request/register_request_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../model/request/login_request_model.dart' show LoginRequestModel;

abstract class AuthDatasource {
  Future<String> signUp(RegisterRequestModel data);
  Future<String> signIn(LoginRequestModel data);
  Future<String> signOut();
  Future<String> verifyOtpSignUp(String otp, String email);
  Future<String> reSendOtp(String email);
  Future<String> addPhone(String phoneNumber);
}

class AuthDatasourceImpl implements AuthDatasource {
  final SupabaseClient _supabaseClient;

  AuthDatasourceImpl({
    required SupabaseClient supabaseClient,
  }) : _supabaseClient = supabaseClient;

  @override
  Future<String> signUp(RegisterRequestModel data) async {
    try {
      await _supabaseClient.auth.signUp(
        email: data.email,
        password: data.password,
      );

      return 'Create account success';
    } on AuthException catch (e) {
      throw ApiErrorHandler.handleError(
        statusCode: int.parse(e.statusCode ?? ''),
        error: e.message,
      );
    } catch (e) {
      throw UnknownException(message: e.toString());
    }
  }

  @override
  Future<String> signIn(LoginRequestModel data) async {
    try {
      final response = await _supabaseClient.auth.signInWithPassword(
        email: data.email,
        password: data.password,
      );

      print(response.user);

      return 'Login Success';
    } on AuthException catch (e) {
      throw ApiErrorHandler.handleError(
        statusCode: int.parse(e.statusCode ?? ''),
        error: e.message,
      );
    } catch (e) {
      throw UnknownException(message: e.toString());
    }
  }

  @override
  Future<String> verifyOtpSignUp(String otp, String email) async {
    try {
      await _supabaseClient.auth.verifyOTP(
        email: email,
        type: OtpType.email,
        token: otp,
      );

      return 'Verifycation Success';
    } on AuthException catch (e) {
      throw ApiErrorHandler.handleError(
        statusCode: int.parse(e.statusCode ?? ''),
        error: e.message,
      );
    } catch (e) {
      throw UnknownException(message: e.toString());
    }
  }

  @override
  Future<String> reSendOtp(String email) async {
    try {
      await _supabaseClient.auth.resend(
        type: OtpType.signup,
        email: email,
      );

      return 'Otp success send, pleace check our email.';
    } on AuthException catch (e) {
      throw ApiErrorHandler.handleError(
        statusCode: int.parse(e.statusCode ?? ''),
        error: e.message,
      );
    } catch (e) {
      throw UnknownException(message: e.toString());
    }
  }

  @override
  Future<String> addPhone(String phoneNumber) async {
    try {
      await _supabaseClient.auth.updateUser(
        UserAttributes(
          phone: phoneNumber,
        ),
      );

      return 'Success add phone';
    } on AuthException catch (e) {
      throw ApiErrorHandler.handleError(
        statusCode: int.parse(e.statusCode ?? ''),
        error: e.message,
      );
    } catch (e) {
      throw UnknownException(message: e.toString());
    }
  }

  @override
  Future<String> signOut() async {
    try {
      await _supabaseClient.auth.signOut();

      return 'Logout Success';
    } on AuthException catch (e) {
      throw ApiErrorHandler.handleError(
        statusCode: int.parse(e.statusCode ?? ''),
        error: e.message,
      );
    } catch (e) {
      throw UnknownException(message: e.toString());
    }
  }

  factory AuthDatasourceImpl.create() {
    return AuthDatasourceImpl(
      supabaseClient: Supabase.instance.client,
    );
  }
}
