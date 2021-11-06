import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sliced_inventory/model/user_model.dart';
import 'package:sliced_inventory/screens/login_screen.dart';
import 'package:sliced_inventory/screens/home_screen.dart';
import 'package:sliced_inventory/screens/view_edit_screen.dart';
import 'package:sliced_inventory/screens/send_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("${loggedInUser.firstName} ${loggedInUser.lastName}"),
            accountEmail: Text("${loggedInUser.email}"),
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            // ignore: avoid_returning_null_for_void
            onTap: () => home(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text('View & Edit Inventory'),
            // ignore: avoid_returning_null_for_void
            onTap: () => viewedit(context),
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('Send Inventory'),
            // ignore: avoid_returning_null_for_void
            onTap: () => send(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            // ignore: avoid_returning_null_for_void
            onTap: () => logout(context),
          ),
        ],
      ),
    );
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  // the home screen
  Future<void> home(BuildContext context) async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  // the view/edit screen
  Future<void> viewedit(BuildContext context) async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ViewEditScreen()));
  }

  // the send screen
  Future<void> send(BuildContext context) async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const SendScreen()));
  }
}