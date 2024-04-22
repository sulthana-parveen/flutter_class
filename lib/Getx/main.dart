import 'package:flutter/material.dart';
import 'package:flutter_class/Getx/controller/controller.dart';
import 'package:get/get.dart';
import 'model/user.dart';
class GetxExample extends StatelessWidget {
  const GetxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:'User List' ,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User List'),
        ),
        body:Center(
          child: GetX<UserController>(
            init:UserController(),
            builder: (controller) {
              if(controller.isLoading.value){
                return const CircularProgressIndicator();
              }
              return ListView.builder(
                itemCount:controller.users.length ,
                itemBuilder: (context,index) {
                  User user = controller.users[index];
                  return ListTile(
                    title: Text(user.name),
                    subtitle: Text(user.email),

                  );
                });
            },
          ),
        ) ,
      ),
    );
  }
}