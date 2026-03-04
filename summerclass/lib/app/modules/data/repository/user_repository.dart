import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:summerclass/app/modules/data/model/user_model.dart';
import 'package:summerclass/app/modules/data/provider/user_provider.dart';

class UserRepository {
  final UserProvider _provider = UserProvider();

  Future<void> addUser(User user) async {
    await _provider.create(user);
  }

  Future<User?> getUser(String id) async {
    return await _provider.get(id);
  }
}