import 'package:flutter/material.dart';
import 'package:sales_app/data/utils.dart';
import 'package:sales_app/signin/components/phone_numbers.dart';
import 'package:sales_app/signin/screens/otp_auth.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final containerHeight = screenHeight - statusBarHeight;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: containerHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Image.asset('assets/images/signin.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  'Bazarstore Mobil Tətbiqi',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.2,
                          child: const PhoneNumbersDropdown(),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: screenWidth * 0.5,
                          child: TextField(
                            controller: _controller,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Telefon',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => OtpAuthScreen(
                            cardNumber: _controller.text,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Utils.mainColor,
                    ),
                    label: const Text(
                      'Daxil ol',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    icon: const Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                    iconAlignment: IconAlignment.end,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
