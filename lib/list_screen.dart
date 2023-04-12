import 'package:flutter/material.dart';
import 'package:list_view_projekaku/custom_list.dart';
import 'package:list_view_projekaku/user_modal.dart';

class list_screen extends StatelessWidget {
  list_screen({super.key});

  List<UserModel> data = [
      UserModel(
          id: 1, codeName: "IK", name: "Ikhwan Koto", major: "Sistem Informasi"),
      UserModel(
          id: 2, codeName: "K", name: "Ikhwan Koto", major: "Sistem Informasi"),
      UserModel(
          id: 3, codeName: "I", name: "Ikhwan Koto", major: "Sistem Informasi"),
      UserModel(
          id: 4, codeName: "K", name: "Ikhwan Koto", major: "Sistem Informasi"),
      UserModel(
          id: 5, codeName: "IK", name: "Ikhwan Koto", major: "Sistem Informasi"),
      UserModel(
          id: 6, codeName: "IK", name: "Ikhwan Koto", major: "Sistem Informasi"),
      UserModel(
          id: 7, codeName: "IK", name: "Ikhwan Koto", major: "Sistem Informasi"),
      UserModel(
          id: 8, codeName: "IK", name: "Ikhwan Koto", major: "Sistem Informasi"),
      UserModel(
          id: 9, codeName: "IK", name: "Ikhwan Koto", major: "Sistem Informasi"),
      UserModel(
          id: 10, codeName: "IK", name: "Ikhwan Koto", major: "Sistem Informasi"),
    ];



@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View Project'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return CustomList(index, data[index]);
          },
        ));
  }
}
