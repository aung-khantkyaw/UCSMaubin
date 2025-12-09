import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

class CommentModel {
  final UserModel user;
  final String comment;
  final DateTime time;

  const CommentModel({
    required this.user,
    required this.comment,
    required this.time,
  });
}
