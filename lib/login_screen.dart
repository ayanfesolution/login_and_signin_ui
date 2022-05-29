import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: const Image(image: AssetImage('assets/mtnlogo.png')),
              ),
            ),
            Expanded(
                flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Center(
                    child: Text('Welcome Back,',
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 15),
                    child: Text('Phone Number',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 15),
                    child: const Text('Password',
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: const TextField(),
                  ),
                  Center(
                    child: TextButton(onPressed: (){}, child: const Text('Sign In',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                         ),
                      )
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){}, child: const Text('Forget password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                       )
                      ),
                      TextButton(onPressed: (){}, child: const Text('SignUp',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                      ),
                    ],
                  ),
                  const Center(
                    child: Text('or \n You can sign in with',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    children: [
                      const Image(image: const AssetImage('assets/facebookicon.png')),
                      const Image(image: const AssetImage('assets/googleicon.png')),
                      const Image(image: const AssetImage('assets/twittericon.png')),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  )
                ],
            ))
          ],
        ),

      ),
    );
  }
}
