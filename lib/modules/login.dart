import 'package:flutter/material.dart';
import 'package:task_05/componants/componants.dart';
import 'package:task_05/modules/home.dart';
import 'package:task_05/modules/register.dart';

class Login extends  StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  // ignore: non_constant_identifier_names
  var FormKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
      ),
      body: Form(
        key: FormKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Container(
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                           [
                            const Text(
                              'Welcome ,',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              onTap: ()
                              {
                                Navigator.push(context,
                                    MaterialPageRoute(
                                      builder: (context)=>const SignUpScreen(),
                                    ));
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Sign in to continue',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 55,
                        ),
                        defaultTextForm(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                          validate: (String value){
                            if(value.isEmpty)
                            {
                              return 'Email is short and should have @';
                            }
                            return null;
                          },
                          label: 'Email',
                          colorLabel: Colors.grey,
                          sizeWriting: 25,
                          colorWriting: Colors.black,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        defaultTextForm(
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          validate: (String value){
                            if(value.isEmpty)
                            {
                              return 'Password is short';
                            }
                            return null;
                          },
                          label: 'Password',
                          colorLabel: Colors.grey,
                          isPassword: true,
                          sizeWriting: 25,
                          colorWriting: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Forget Password ?',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultButton(
                            width: double.infinity,
                            backGround: Colors.greenAccent.shade400,
                            function: (){
                              if(FormKey.currentState!.validate())
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                        builder: (context)=>const HomeScreen(),
                                      ));
                                }
                            },
                            text: 'SIGN IN',
                          radius: 10,
                          colorText: Colors.white
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Container(
                      width: 10,
                      height: 3,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text(
                      'OR',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Container(
                      width: 10,
                      height: 3,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {  },
                  padding: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.grey[200],
                  child: Row(
                    children:
                    [
                      Image.asset('assets/images/facebook.png',
                        width: 35,
                        height: 35,),
                      const SizedBox(
                        width: 45,
                      ),
                      const Text(
                        'Sign in with facebook',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: (){},
                  padding: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.grey[200],
                  child: Row(
                    children:
                    [
                      Image.asset('assets/images/google.png',
                        width: 35,
                        height: 35,),
                      const SizedBox(
                        width: 45,
                      ),
                      const Text(
                        'Sign in with Google',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
