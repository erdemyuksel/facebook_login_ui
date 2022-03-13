import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#f0f2f5'),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 1.05,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: Image.asset('assets/facebook.png'),
                ),
                Text(
                  'Facebook tanıdıklarınla iletişim\nkurmanı ve hayatında olup bitenleri\npaylaşmanı sağlar.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 35,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextField(
                          cursorRadius: const Radius.circular(8),
                          textInputAction: TextInputAction.done,
                          textDirection: TextDirection.ltr,
                          mouseCursor: MouseCursor.defer,
                          cursorColor: HexColor('#1877f2'),
                          showCursor: true,
                          cursorWidth: 3,
                          cursorHeight: 30,
                          decoration: InputDecoration(
                            hintText: 'E-posta Adresi',
                            labelText: 'E-posta Adresi',
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor('#1877f2'),
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          cursorRadius: const Radius.circular(8),
                          textInputAction: TextInputAction.done,
                          textDirection: TextDirection.ltr,
                          mouseCursor: MouseCursor.defer,
                          cursorColor: HexColor('#1877f2'),
                          showCursor: true,
                          cursorWidth: 3,
                          cursorHeight: 30,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            hintText: 'Parola',
                            labelText: 'Parola',
                            suffixIcon: IconButton(
                                icon: Icon(
                                    _isObscure
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined,
                                    color: Colors.black),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor('#1877f2'),
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 1,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Giriş Yap',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 32),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  HexColor('#1877f2')),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 30,
                          padding: EdgeInsets.zero,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Şifreni mi Unuttun?',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 44),
                            ),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                          height: 5,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 18,
                          width: MediaQuery.of(context).size.width / 2.2,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Yeni Hesap Oluştur',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height / 42,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                HexColor('#42b72a'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 6,
                        blurStyle: BlurStyle.outer,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Ünlü biri, marka veya işletme için'),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sayfa oluştur.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
