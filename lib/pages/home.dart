import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Drawer",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Color.fromARGB(255, 15, 111, 18),          
        ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 244, 235, 161),
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Valery'), 
              accountEmail: Text('val.art@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ExpansionTile(
              title: Text('Profil'),
              leading: Icon(Icons.person),
              children: [
                ListTile(
                  title: Text("Modifier Ville"), 
                  leading: Icon(Icons.location_city),
                ),
                ListTile(
                  title: Text("Modifier Mot de Passe"), 
                  leading: Icon(Icons.password),
                ),
              ],
            ),
            ListTile(title: Text("Groupes"), leading: Icon(Icons.groups),),
            ListTile(title: Text("Contacts"), leading: Icon(Icons.phone),),
            ListTile(title: Text("Parametres"), leading: Icon(Icons.settings),),
            Divider(),
            ListTile(title: Text("F.A.Q"), leading: Icon(Icons.question_answer),),
            ListTile(title: Text("Aide"), leading: Icon(Icons.help),),
          ],
        ),
      ),
    );
  }
}