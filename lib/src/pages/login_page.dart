import 'package:flutter/material.dart';
import '../components/alert_widget.dart';
import '../components/buttom_widget.dart';
import '../components/full_screen_splash.dart';
import '../components/social_buttom.dart';
import '../components/textfield_widget.dart';
import '../utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  bool isLoading = false;
  bool isError = false;
  bool isSucesses = false;
  var emailController = TextEditingController();
  var senhaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double padding = Constants.padding;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: padding * 2),
                child: Column(
                  children: [
                    SizedBox(
                      height: padding * 2,
                    ),
                    Image.asset(
                      "assets/images/logotop.png",
                      height: 152,
                    ),
                    SizedBox(
                      height: padding * 2,
                    ),
                    TextFieldWidget(
                      label: 'Email',
                      controller: emailController,
                    ),
                    SizedBox(
                      height: padding,
                    ),
                    TextFieldWidget(
                      controller: senhaController,
                      label: 'Senha',
                      obscure: true,
                    ),
                    SizedBox(
                      height: padding,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Esqueci minha Senha",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF707070),
                          ),
                        ),
                        const Spacer(),
                        ButtomWidget(
                            isLoading: isLoading,
                            onTap: () {
                              isLoading = !isLoading;
                              setState(() {});
                              Future.delayed(const Duration(seconds: 2), () {
                                if (emailController.text.isEmpty ||
                                    senhaController.text.isEmpty) {
                                  isError = true;
                                  Future.delayed(const Duration(seconds: 2),
                                      () {
                                    isError = false;
                                    setState(() {});
                                  });
                                } else {
                                  isSucesses = true;
                                  Future.delayed(const Duration(seconds: 2),
                                      () {
                                    isSucesses = false;
                                    setState(() {});
                                  });
                                }
                                isLoading = false;
                                setState(() {});
                              });
                            }),
                      ],
                    ),
                    SizedBox(
                      height: padding * 2,
                    ),
                    Container(
                      width: 150,
                      height: 2,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: padding * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: Constants.socialButtons
                          .map((entity) => SocialButtom(entity: entity))
                          .toList(),
                    ),
                    SizedBox(
                      height: padding * 2,
                    ),
                    const Text("Copyright © Masterclass 2022"),
                  ],
                ),
              ),
            ),
            AlertWidget(
                isError: isError,
                onTap: () {
                  setState(() {
                    isError = !isError;
                  });
                }),
            FullScreenSplash(isSucesses: isSucesses),
          ],
        ),
      ),
    );
  }
}
