import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Call')),
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => const [
                  PopupMenuItem(child: Text('New Group')),
                  PopupMenuItem(child: Text('Settings')),
                  PopupMenuItem(child: Text('LogOut')),
                ],
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: TabBarView(children: [
            Text('Camera'),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/2027130/pexels-photo-2027130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
                  title: Text('johncena'),
                  subtitle: Text('hi dude'),
                  trailing: Text('6:36 PM'),
                );
              },
            ),
            Text('Status'),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/2027130/pexels-photo-2027130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
                  title: Text('johncena'),
                  subtitle: Text('You missed call'),
                  trailing: Icon(Icons.phone),
                );
              },
            ),
          ]),
        ));
  }
}
