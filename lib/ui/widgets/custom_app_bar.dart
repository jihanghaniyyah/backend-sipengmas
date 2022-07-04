import 'package:flutter/material.dart';
import 'package:pengabdianmasyarakat/shared/theme.dart';
import 'package:pengabdianmasyarakat/ui/pages/dashboard_page.dart';
import 'package:pengabdianmasyarakat/ui/pages/pemberitahuan_page.dart';
import 'package:pengabdianmasyarakat/ui/pages/read_data_researchcenter.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_drawer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final Color? textIconColor;
  final String? icon;
  final String? title;
  final double? height;
  final List<Widget>? menuItem;
  final bool hideBack;

  CustomAppBar({
    this.backgroundColor = kPrimaryColor,
    this.textIconColor = kWhiteColor,
    this.icon,
    this.title = '',
    this.menuItem,
    this.height = kToolbarHeight,
    this.hideBack = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PemberitahuanPage(),
                ),
              );
            },
            child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
          child: InkWell(
            onTap: () {},
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
      ],
      backgroundColor: backgroundColor,
    );
  }
}
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final Color? backgroundColor;
//   final Color? textIconColor;
//   final String? icon;
//   final String? title;
//   final double? height;
//   final List<Widget>? menuItem;
//   final bool hideBack;

//   CustomAppBar({
//     this.backgroundColor = kPrimaryColor,
//     this.textIconColor = kWhiteColor,
//     this.icon,
//     this.title = '',
//     this.menuItem,
//     this.height = kToolbarHeight,
//     this.hideBack = false,
//   });

//   @override
//   Size get preferredSize => Size.fromHeight(height!);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
//             child: InkWell(
//               onTap: () {},
//               child: Icon(
//                 Icons.notifications,
//                 color: Colors.white,
//                 size: 24,
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
//             child: Icon(
//               Icons.person,
//               color: Colors.white,
//               size: 24,
//             ),
//           ),
//         ],
//         backgroundColor: backgroundColor,
//       ),
//     );
//   }
// }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: CustomAppBar(child: child),
  //     backgroundColor: Color(0xFF210F7A),
  //     leading: IconButton(
  //       icon: Icon(
  //         Icons.menu,
  //         color: Colors.white,
  //       ),
  //       onPressed: () {},
  //     ),
  //     actions: [
  //       Padding(
  //         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
  //         child: InkWell(
  //           onTap: () {},
  //           child: Icon(
  //             Icons.notifications,
  //             color: Colors.white,
  //             size: 24,
  //           ),
  //         ),
  //       ),
  //       Padding(
  //         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
  //         child: Icon(
  //           Icons.person,
  //           color: Colors.white,
  //           size: 24,
  //         ),
  //       ),
  //     ],
  //   );
  // }

