import 'dart:io';

import 'package:flix_id/domain/entities/result.dart';
import 'package:flix_id/domain/entities/user.dart';

abstract interface class UserRepository {
  Future<Result<User>> createUser({
    required String uid,
    required String email,
    required String name,
    String? photoUrl,
  });

  Future<Result<User>> getUser({required String uid});
  Future<Result<User>> updateUser({required User user});
  Future<Result<int>> getUserBalance({required String uid});
  Future<Result<User>> updateUserBalance({
    required String uid,
    required int balance,
  });
  Future<Result<User>> uploadProficePicture({
    required User user,
    required File imageFile,
  });
}
