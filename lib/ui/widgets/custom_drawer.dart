import 'package:flutter/material.dart';
import 'package:pengabdianmasyarakat/ui/pages/dashboard_page.dart';
import 'package:pengabdianmasyarakat/ui/pages/data_programstudidetail.dart';
import 'package:pengabdianmasyarakat/ui/pages/data_researchcenter.dart';
import 'package:pengabdianmasyarakat/ui/pages/data_researchgroup.dart';
import 'package:pengabdianmasyarakat/ui/pages/read_data_researchcenter.dart';
import 'package:pengabdianmasyarakat/shared/theme.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool _customTileExpanded = false;
  bool _customTileisExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Image.asset(
              'assets/images/SIPENGMAS.png',
              width: 240,
              height: 60,
              fit: BoxFit.fitWidth,
            ),
          ),
          ExpansionTile(
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
            title: const Text('Dashboard'),
            // subtitle: const Text('Custom expansion arrow icon'),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: <Widget>[
              ListTile(
                title: Text(
                  'Statistik Pengmas',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardPage(),
                    ),
                  );
                },
              ),
            ],
          ),
          ExpansionTile(
            onExpansionChanged: (bool isExpanded) {
              setState(() => _customTileisExpanded = isExpanded);
            },
            title: Text(
              "Data Pengmas",
            ),
            trailing: Icon(
              _customTileisExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: <Widget>[
              ListTile(
                title: Text(
                  'Program Studi',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProgramStudiDetailPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Research Group',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResearchGroupPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Research Center',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResearchCenterPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
