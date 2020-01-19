import 'package:estudo_bloc_pattern/modules/admin/widgets/admin_build_item_widget.dart';
import 'package:estudo_bloc_pattern/modules/admin/widgets/admin_message_left_widget.dart';
import 'package:estudo_bloc_pattern/modules/admin/widgets/admin_message_right_widget.dart';
import 'package:estudo_bloc_pattern/widgets/button_widget.dart';
import 'package:estudo_bloc_pattern/widgets/container_responsive.dart';
import 'package:estudo_bloc_pattern/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum ConfirmAction { CANCEL, ACCEPT }

class AdminPreventiveMaintenanceForm extends StatefulWidget {
  @override
  _AdminPreventiveMaintenanceFormState createState() =>
      _AdminPreventiveMaintenanceFormState();
}

class _AdminPreventiveMaintenanceFormState
    extends State<AdminPreventiveMaintenanceForm> {
  bool _showResponse = false;

  Widget showFooter() {
    if (_showResponse) {
      return buildContainerResponse(context);
    } else {
      return _buildQuestionYesOrNo(context);
    }
  }

  Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async {
    return showDialog<ConfirmAction>(
      context: context,
      barrierDismissible: false, // user must tap button for close dialog!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Aviso'),
          content: const Text('Deseja salvar as informações?'),
          actions: <Widget>[
            FlatButton(
              child: const Text('NÃO'),
              onPressed: () {
                print("Cancel clicked...");
                Navigator.of(context).pop(ConfirmAction.CANCEL);
              },
            ),
            FlatButton(
              child: const Text('SIM'),
              onPressed: () {
                print("Accept clicked...");
                Navigator.of(context).pop(ConfirmAction.ACCEPT);

                setState(() {
                  _showResponse = true;
                });
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Manutencão Preventiva",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        leading: IconButton(
          icon: Icon(Icons.delete,
              color: Theme.of(context).primaryColor, size: 30),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.power_settings_new,
                color: Theme.of(context).primaryColor, size: 30),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 80,
            child: buildContainerHeader(context)),
          Flexible(child: buildContainerListMessages()),
          Container(
            height: 140,
            child: showFooter()),
          // ResponsiveContainer(
          //   heightPercent: _showResponse ? 56 : 66,
          //   widthPercent: 100,
          //   child: buildContainerListMessages(),
          // ),
          // ResponsiveContainer(
          //   heightPercent: _showResponse ? 15 : 10,
          //   widthPercent: 100,
          //   child: showFooter())
          // showFooter()
          // ,
        ],
      ),
    );
  }

  Widget buildContainerResponse(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    decoration: BoxDecoration(color: Color(0xFFBCE0FD), boxShadow: [
      BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 5,
          spreadRadius: 1,
          color: Colors.grey)
    ]),
      child: Column(
        children: <Widget>[
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: InputWidget(
                    showShadow: true,
                    hintText: "Escreva alguma coisa...",
                  ),
                ),

                IconButton(
                  icon: Icon(
                    Icons.send,
                    size: 40,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    print("clicoou em enviar...");
                    setState(() {
                      _showResponse = false;
                    });
                  },
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconTextWidget(
                    icon: Icons.camera_alt,
                    subtitle: "Foto",
                    onTap: () {
                      print("Clicou pra enviar foto!");
                    }),
                IconTextWidget(
                    icon: Icons.videocam,
                    subtitle: "Vídeo",
                    onTap: () {
                      print("Clicou pra enviar video!");
                    }),
                IconTextWidget(
                    icon: Icons.mic,
                    subtitle: "Audio",
                    onTap: () {
                      print("Clicou pra enviar audio!");
                    }),
                // Container()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildContainerListMessages() {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 40,
        itemBuilder: (context, index) {
          if (index % 2 == 0)
            return MessageLeftWidget(
              // key: Key("$index"),
              title: "1. Testes Operacionais",
              dateText: "11:20 AM, Hoje",
              message:
                  "Voce deseja incluir mains alguma partida/parada ? conteudo teste...conteudo teste...conteudo teste...conteudo teste...conteudo teste...conteudo teste... $index",
            );
          else
            return MessageRightWidget(
              // key: Key("$index"),
              title: "você",
              dateText: "11:20 AM, Hoje",
              message: """
                  
What is Lorem Ipsum?

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
 """,
            );
        },
      ),
    );
  }

  Widget buildContainerHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Column(
        children: <Widget>[
          AdminBuildItemRowWidget(
              primaryText: "Cliente:",
              secondaryText: "Cliente Condominio A ",
              icon: Icon(Icons.edit, color: Colors.white)),
          Container(height: 5),
          AdminBuildItemRowWidget(
              primaryText: "Profissional:", secondaryText: "Profissional A"),
          Container(height: 5),
          AdminBuildItemRowWidget(
              primaryText: "Data abertura:", secondaryText: "10/09/2019 11:25"),
        ],
      ),
      decoration:
          BoxDecoration(color: Theme.of(context).primaryColor, boxShadow: [
        BoxShadow(
            color: Colors.grey,
            blurRadius: 6,
            offset: Offset(.0, .1),
            spreadRadius: 1)
      ]),
    );
  }

  Widget _buildQuestionYesOrNo(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey,
            blurRadius: 6,
            offset: Offset(.0, .1),
            spreadRadius: 1)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ButtonWidget(
            label: "NÃO",
            backgroundColor: Color(0xFF75787B),
            width: 160,
            textColor: Colors.white,
            labelFontSize: 20,
            onTap: () {
              print("Clicou no nao");
            },
          ),
          ButtonWidget(
            label: "SIM",
            backgroundColor: Theme.of(context).primaryColor,
            width: 160,
            textColor: Colors.white,
            labelFontSize: 20,
            onTap: () {
              print("Clicou no sim");
              _asyncConfirmDialog(context);
            },
          ),
        ],
      ),
    );
  }
}

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Function onTap;

  const IconTextWidget({
    Key key,
    this.icon,
    this.subtitle = "",
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Icon(icon, color: Theme.of(context).primaryColor),
          Container(height: 5),
          Text(
            subtitle,
            style: TextStyle(color: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}
