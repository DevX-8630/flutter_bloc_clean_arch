import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_arch/view/config/data/exceptions/app_exceptions.dart';
import '../config/components/round_button.dart';
import '../config/components/loading_widget.dart';
import '../config/components/internet_exception_widget.dart';
import 'package:flutter_bloc_clean_arch/view/config/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InternetExceptionWidget(
              onPressed: () {},
            ),
            RoundButton(
              onTap: () {},
              title: 'Button',
              height: 50,
            ),
            const LoadingWidget(),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, RoutesName.homeScreen),
              child: const Text(
                'Go To Home',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          throw NoInternetException('No Internet Exception Occur');
        },
      ),
    );
  }
}
