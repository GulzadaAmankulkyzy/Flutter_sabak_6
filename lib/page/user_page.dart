import 'package:flutter/material.dart';
import 'package:flutter_sabak_6/models/user.dart';
import 'package:flutter_sabak_6/page/page2.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text(
          'UsersPage',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserDetailPage(
                              user: users[index],
                            )));
              },
              title: Text(user.aty),
              subtitle: Text('${user.kesibi} ${user.jashi}jashta'),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(user.profilSurot),
              ),
              trailing: const Icon(Icons.chevron_right),
            );
          }),
    );
  }
}
