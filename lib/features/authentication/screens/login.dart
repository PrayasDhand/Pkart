import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:pkart/common/styles/spacing_styles.dart';

import 'package:pkart/utils/constants/image_strings.dart';
import 'package:pkart/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text("Login",
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(
                    height: 0.8,
                  ),
                  Text("Kindly Please Login to your account!",
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: 'Email'),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: 'Password',
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(
                        height: 16 / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text("Remember Me"),
                            ],
                          ),
                          //forget password
                          TextButton(
                            onPressed: () {},
                            child: const Text("Forget Password?"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text("Sign In!"))),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Create Account"))),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(color: dark ? Colors.blueGrey: Colors.grey,thickness: 0.5,indent: 60,endIndent: 5,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
