import 'package:flutter/material.dart';



class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    required this.myController,
    required this.onValidator,
    required this.keyBoardType,
    required this.obsureText,
    required this.hint,
    this.autoFocus=false,
    this.enable = true,

  }) : super(key: key);
  final TextEditingController myController;
  final FormFieldValidator onValidator;

  final TextInputType keyBoardType;
  final String hint;
  final bool obsureText;
  final bool enable,autoFocus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8,top: 5),
      child: TextFormField(
        controller: myController,
        validator: onValidator,
        keyboardType: keyBoardType,
        obscureText: obsureText,
        style:Theme.of(context).textTheme.bodyText2!.copyWith(height:0,fontSize: 19),
        decoration: InputDecoration(
          hintText:hint,
          enabled: enable,
          contentPadding: const EdgeInsets.all(12),
          hintStyle:Theme.of(context).textTheme.bodyText2!.copyWith(height:0,color:Colors.black38.withOpacity(0.8),),
          border:  const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple,),
            borderRadius:BorderRadius.all(Radius.circular(100)),
          ),
          focusedBorder: const  OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple,),
              borderRadius:BorderRadius.all(Radius.circular(100))
          ),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red,),
              borderRadius:BorderRadius.all(Radius.circular(100))
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black,),
              borderRadius:BorderRadius.all(Radius.circular(100))
          ),
        ),
      ),
    );
  }
}

