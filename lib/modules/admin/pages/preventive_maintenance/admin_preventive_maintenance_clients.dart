import 'package:estudo_bloc_pattern/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class AdminPreventiveMaintenanceClients extends StatefulWidget {
  AdminPreventiveMaintenanceClients({Key key}) : super(key: key);

  @override
  _AdminPreventiveMaintenanceClientsState createState() =>
      _AdminPreventiveMaintenanceClientsState();
}

class _AdminPreventiveMaintenanceClientsState
    extends State<AdminPreventiveMaintenanceClients> {
  _Item(String title) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        Icons.chevron_right,
        size: 50,
        color: Theme.of(context).primaryColor,
      ),
      onTap: () {
        Navigator.of(context).pushNamed('preventive_maintenance_form');  
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manutenção Preventiva",
            style: TextStyle(color: Theme.of(context).primaryColor)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget>[
            Container(height: 20),
            InputWidget(
              backgroundColor: Colors.transparent,
              suffixIcon: Icon(
                Icons.search,
                size: 40,
                color: Theme.of(context).primaryColor,
              ),
              hintText: "Digite algo para pesquisar",
            ),
            Container(height: 20),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                _Item("Cliente A"),
                _Item("Cliente A"),
                _Item("Cliente A"),
                _Item("Cliente A"),
                _Item("Cliente A"),
                _Item("Cliente A"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
