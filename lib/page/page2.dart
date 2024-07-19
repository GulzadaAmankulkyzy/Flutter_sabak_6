import 'package:flutter/material.dart';

import 'package:flutter_sabak_6/models/user_model.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    print(user.aty);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          user.aty,
          style: TextStyle(color: Color.fromARGB(255, 114, 235, 140)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(user.profilSurot),
          ),
          Text(
            user.kesibi,
            style: TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
          Text(
            "${user.jashi}",
            style: TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(user.tajryibaJolu),
          ),
        ],
      ),
    );
  }
}
