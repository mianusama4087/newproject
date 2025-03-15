import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';

class Dailogboxscreen extends StatelessWidget {
  const Dailogboxscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OTP Dialog")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            EmailOTP emailOtp = EmailOTP();
            EmailOTP.config(
              appName: 'App Name',
              otpType: OTPType.numeric,
              expiry: 30000,
              emailTheme: EmailTheme.v6,
              appEmail: 'me@rohitchouhan.com',
              otpLength: 6,
            );

            bool isSent = await EmailOTP.sendOTP(email: "user@example.com");
            if (isSent) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("OTP Sent! Check your email")),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Failed to send OTP")),
              );
            }
          },
          child: Text("Send OTP"),
        ),
      ),
    );
  }
}


// class Dailogboxscreen extends StatelessWidget {
//   const Dailogboxscreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     void main() {
//   EmailOTP.config(
//     appName: 'App Name',
//     otpType: OTPType.numeric,
//     expiry : 30000,
//     emailTheme: EmailTheme.v6,
//     appEmail: 'me@rohitchouhan.com',
//     otpLength: 6,
//   );
// }
//   }
// }