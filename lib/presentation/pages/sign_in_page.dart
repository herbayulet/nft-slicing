import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/constants/color_constants.dart';
import 'package:nft_market/presentation/pages/sign_up_page.dart';
import 'package:nft_market/presentation/widgets/button_widget.dart';
import 'package:nft_market/presentation/widgets/input_widget.dart';
import 'package:nft_market/presentation/widgets/page_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return PageWidget(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _body(formKey, emailController, passwordController),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              },
              child: Text(
                'Create new account',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF909FB4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _body(
      GlobalKey<FormState> formKey,
      TextEditingController emailController,
      TextEditingController passwordController) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                // Title
                const Gap(60),
                theTitle(),
                const Gap(40),
                // Form
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      InputWidget(
                        label: "Email",
                        controller: emailController,
                      ),
                      InputWidget(
                        label: "Password",
                        controller: passwordController,
                        isPassword: true,
                      ),
                      const Gap(10),
                      ButtonWidget(
                        namaButton: "Sign In",
                        isFullWidth: true,
                        onPressed: () {
                          if (formKey.currentState?.validate() ?? false) {
                            // Proceed with the sign-up logic
                          }
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding theTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70),
      child: Text(
        "Start Collecting Amazing Artworks",
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
          fontSize: 26,
          fontWeight: FontWeight.w600,
          height: 36 / 26,
          color: ColorContants.warnaLabel,
        ),
      ),
    );
  }
}
