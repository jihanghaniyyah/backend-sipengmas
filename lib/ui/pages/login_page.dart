import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:pengabdianmasyarakat/shared/theme.dart';
import 'package:pengabdianmasyarakat/ui/pages/dashboard_page.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_button_1.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
  TextEditingController(text: '');

  Future LoginUser() async {
    // try {
    http.Response hasil = await http
        .post(Uri.https('project.mis.pens.ac.id', '/mis116/sipengmas/auth_mobile.php'),
        body: convert.jsonEncode({
          'netid': emailController.text,
          'password': passwordController.text,
        }),
        headers: {
          "Accept": "application/json",
        });
    var dataUser = convert.jsonDecode(hasil.body);
    if (hasil.statusCode == 200) {
      if (dataUser['status'] == 'Dosen') {

        var tempNip = dataUser['data']["NIP"] ?? '198203082008121001';
        var tempNomor = dataUser['data']["NOMOR"] ?? '424';

        await SessionManager().set('nip', tempNip);
        await SessionManager().set('nomor', tempNomor);

        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const DashboardPage()));
        print("Login Berhasil");
      } else if (dataUser['status'] == 'P3M') {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const DashboardPage()));
        print("Login Berhasil");
      } else {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Login Gagal!'),
            content: const Text('Periksa Email dan Password Anda'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Ok'),
                child: const Text('Ok'),
              ),
            ],
          ),
        );
        print("Login Gagal");
      }
      return true;
    } else {
      print("error status " + hasil.statusCode.toString());
      return null;
    }
    // } catch (e) {
    //   print("error catchnya $e");
    //   return null;
    // }
  }

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 30),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(75, 0, 0, 0),
              child: Image.asset(
                'assets/images/SIPENGMAS.png',
                width: 240,
                height: 60,
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextFormField(
          title: 'NetID',
          hintText: 'Enter your NetID here...',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Enter your password here...',
          obscureText: true,
          controller: passwordController,
        );
      }

      Widget submitButton() {
        return CustomButton(
          title: 'Login',
          onPressed: () {
            LoginUser();
          },
          width: 200,
        );
      }

      Widget forgotPassword() {
        return TextButton(
          onPressed: () {},
          child: Text('Forgot password?',
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              )),
        );
      }

      // Widget registerButton() {
      //   return Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         'Don\'t have account? ',
      //         style: purpleTextStyle.copyWith(
      //           fontSize: 16,
      //           fontWeight: light,
      //         ),
      //       ),
      //       TextButton(
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => RegisterPage(),
      //               ),
      //             );
      //           },
      //           child: Text(
      //             'Sign Up',
      //             style: purpleTextStyle.copyWith(
      //               fontSize: 16,
      //               fontWeight: light,
      //               decoration: TextDecoration.underline,
      //             ),
      //           )),
      //     ],
      //   );
      // }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            emailInput(),
            passwordInput(),
            SizedBox(
              height: 20,
            ),
            submitButton(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          title(),
          inputSection(),
        ],
      ),
    );
  }
}


// class LoginPage extends StatelessWidget {
//   LoginPage({Key? key}) : super(key: key);
//
//   final TextEditingController emailController = TextEditingController(text: '');
//   final TextEditingController passwordController =
//       TextEditingController(text: '');
//
//   Future LoginUser() async {
//     // try {
//     http.Response hasil = await http
//         .post(Uri.https('project.mis.pens.ac.id', '/mis112/sipengmas/auth.php'),
//             body: convert.jsonEncode({
//               'dataEmail': emailController.text,
//               'dataPassword': passwordController.text,
//             }),
//             headers: {
//           "Accept": "application/json",
//         });
//     var dataUser = convert.jsonDecode(hasil.body);
//     if (hasil.statusCode == 200) {
//       if (dataUser['status'] == 'Dosen') {
//         // await SessionManager().set('nrp', dataUser['NRP']);
//         Navigator.push(
//             context, MaterialPageRoute(builder: (_) => const DashboardPage()));
//         print("Login Berhasil");
//         // print(dataUser["NRP"]);
//       } else if (dataUser['status'] == 'P3M') {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (_) => const DashboardPage()));
//         print("Login Berhasil");
//       } else {
//         showDialog<String>(
//           context: context,
//           builder: (BuildContext context) => AlertDialog(
//             title: const Text('Login Gagal!'),
//             content: const Text('Periksa Email dan Password Anda'),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () => Navigator.pop(context, 'Ok'),
//                 child: const Text('Ok'),
//               ),
//             ],
//           ),
//         );
//       }
//       return true;
//     } else {
//       print("error status " + hasil.statusCode.toString());
//       return null;
//     }
//     // } catch (e) {
//     //   print("error catchnya $e");
//     //   return null;
//     // }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Widget title() {
//       return Padding(
//         padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 30),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(75, 0, 0, 0),
//               child: Image.asset(
//                 'assets/images/SIPENGMAS.png',
//                 width: 240,
//                 height: 60,
//                 fit: BoxFit.scaleDown,
//               ),
//             ),
//           ],
//         ),
//       );
//     }
//
//     Widget inputSection() {
//       Widget emailInput() {
//         return CustomTextFormField(
//           title: 'NetID',
//           hintText: 'Enter your NetID here...',
//           controller: emailController,
//         );
//       }
//
//       Widget passwordInput() {
//         return CustomTextFormField(
//           title: 'Password',
//           hintText: 'Enter your password here...',
//           obscureText: true,
//           controller: passwordController,
//         );
//       }
//
//       Widget submitButton() {
//         return CustomButton(
//           title: 'Login',
//           onPressed: () {
//             LoginUser();
//           },
//           width: 200,
//         );
//       }
//
//       Widget forgotPassword() {
//         return TextButton(
//           onPressed: () {},
//           child: Text('Forgot password?',
//               style: purpleTextStyle.copyWith(
//                 fontSize: 16,
//                 fontWeight: light,
//               )),
//         );
//       }
//
//       // Widget registerButton() {
//       //   return Row(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: [
//       //       Text(
//       //         'Don\'t have account? ',
//       //         style: purpleTextStyle.copyWith(
//       //           fontSize: 16,
//       //           fontWeight: light,
//       //         ),
//       //       ),
//       //       TextButton(
//       //           onPressed: () {
//       //             Navigator.push(
//       //               context,
//       //               MaterialPageRoute(
//       //                 builder: (context) => RegisterPage(),
//       //               ),
//       //             );
//       //           },
//       //           child: Text(
//       //             'Sign Up',
//       //             style: purpleTextStyle.copyWith(
//       //               fontSize: 16,
//       //               fontWeight: light,
//       //               decoration: TextDecoration.underline,
//       //             ),
//       //           )),
//       //     ],
//       //   );
//       // }
//
//       return Container(
//         margin: EdgeInsets.only(top: 30),
//         padding: EdgeInsets.symmetric(
//           horizontal: 20,
//           vertical: 30,
//         ),
//         decoration: BoxDecoration(
//           color: kWhiteColor,
//           borderRadius: BorderRadius.circular(defaultRadius),
//         ),
//         child: Column(
//           children: [
//             emailInput(),
//             passwordInput(),
//             SizedBox(
//               height: 20,
//             ),
//             submitButton(),
//             SizedBox(
//               height: 20,
//             ),
//           ],
//         ),
//       );
//     }
//
//     return Scaffold(
//       backgroundColor: kBackgroundColor,
//       body: ListView(
//         children: [
//           title(),
//           inputSection(),
//         ],
//       ),
//     );
//   }
// }
