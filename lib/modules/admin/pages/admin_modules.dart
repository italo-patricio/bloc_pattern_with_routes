import 'package:estudo_bloc_pattern/modules/admin/widgets/admin_card_item_widget.dart';
import 'package:flutter/material.dart';

class AdminPageModules extends StatefulWidget {
  @override
  _AdminPageModulesState createState() => _AdminPageModulesState();
}

class _AdminPageModulesState extends State<AdminPageModules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("MÓDULOS",
            style: TextStyle(color: Theme.of(context).primaryColor)),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: <Widget>[
            AdminCardItemWidget(
              title: "Manutenção Preventiva",
              iconData: Icons.settings,
              onTap: () {
                Navigator.of(context).pushNamed('preventive_maintenance');
              },
            ),
            AdminCardItemWidget(
                title: "Abrir Chamado",
                iconData: Icons.settings_applications,
                onTap: () {}),
            AdminCardItemWidget(
                title: "Abrir Atendimento", iconData: Icons.chat, onTap: () {}),
            AdminCardItemWidget(
                title: "Estatísticas",
                iconData: Icons.insert_chart,
                onTap: () {}),
            AdminCardItemWidget(
                title: "Manuais", iconData: Icons.library_books, onTap: () {}),
            AdminCardItemWidget(
                title: "Informar Intervalo",
                iconData: Icons.restaurant,
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
