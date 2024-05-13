import 'package:flutter/cupertino.dart';
import '../../../core/widgets/myform.dart';

class MyLoginForms extends StatelessWidget {
  const MyLoginForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          const Text('Enter your email or phone number' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
          MyForm(txt: "Enter your email or phone",),
          const SizedBox(height: 15,),
          const Text('Enter your password' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
          MyForm(txt: "Enter your password",),
        ],
      ),
    );
  }
}
