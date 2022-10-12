import 'package:flutter/material.dart';

import '../componants/componants.dart';
import 'home.dart';

class SignUpScreen extends  StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var nameController = TextEditingController();
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
                          const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 55,
                          ),
                          defaultTextForm(
                            controller: nameController,
                            type: TextInputType.text,
                            validate: (String value){
                              if(value.isEmpty)
                              {
                                return 'Name is short';
                              }
                              return null;
                            },
                            label: 'Name',
                            colorLabel: Colors.grey,
                            sizeWriting: 25,
                            colorWriting: Colors.black,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          defaultTextForm(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            validate: (String value){
                              if(value.isEmpty)
                              {
                                return 'Email is short';
                              }
                              return null;
                            },
                            label: 'Email',
                            colorLabel: Colors.grey,
                            sizeWriting: 25,
                            colorWriting: Colors.black,
                          ),
                          const SizedBox(
                            height: 25,
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
                            height: 35,
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
                            text: 'SIGN UP',
                            radius: 10,
                          ),
                        ],
                      ),
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
