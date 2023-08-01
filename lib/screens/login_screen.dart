import 'package:flutter/material.dart';

class LoginScrenn extends StatefulWidget {
  const LoginScrenn({Key? key}) : super(key: key);

  @override
  State<LoginScrenn> createState() => _LoginScrennState();
}

class _LoginScrennState extends State<LoginScrenn> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _emailController,
                    validator: (value) => value!.isEmpty ? 'Entrar com email valido ' : null,
                  ),
                  const SizedBox(height: 15,),

                  TextFormField(
                    controller: _passwordController,
                    validator: (value) => value!.isEmpty ? 'Entrar com a senha ' : null,
                  ),
                  SizedBox(height: 15,),

                 Container(
                   width: MediaQuery.of(context).size.width -25,
                   height: 40,
                   decoration: const BoxDecoration(
                     color: Colors.blue
                   ),
                   child:  TextButton(
                     onPressed: (){
                       if(_formKey.currentState!.validate()){
                         print('Ok');
                       }
                     },
                     child: Text('Login', style: TextStyle(fontSize: 18, color: Colors.white),),
                   ),
                 ),
                ],
          ),
        ),
      ),
    );
  }
}
