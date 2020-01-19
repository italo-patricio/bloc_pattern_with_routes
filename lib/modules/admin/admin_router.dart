import 'package:estudo_bloc_pattern/modules/admin/pages/admin_preventive_maintenance.dart';
import 'package:estudo_bloc_pattern/modules/admin/pages/preventive_maintenance/admin_preventive_maintenance_form.dart';
import 'package:flutter/material.dart';

import 'pages/admin_modules.dart';
import 'pages/preventive_maintenance/admin_preventive_maintenance_clients.dart';

class AdminRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => AdminPageModules();
            break;
          case 'preventive_maintenance':
            builder = (BuildContext _) => AdminPreventiveMaintenanceClients();
            break;
          case 'preventive_maintenance_form':
            builder = (BuildContext _) => AdminPreventiveMaintenanceForm();
            break;
          case 'admin/open_called':
            // builder = (BuildContext _) => AdminPageOpenCalled();
            break;
          case 'admin/open_attendace':
            // builder = (BuildContext _) => AdminPageOpenAttendance();
            break;
          case 'admin/statistics':
            // builder = (BuildContext _) => AdminPageStatistics();
            break;
          case 'admin/manuals':
            // builder = (BuildContext _) => AdminPageManuals();
            break;
          case 'admin/report_range':
            // builder = (BuildContext _) => AdminPageReportRange();
            break;

          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
