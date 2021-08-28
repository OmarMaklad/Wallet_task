import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final bool label;
  final TextInputType type;
  final Function onsave;
  final Function valid;
  final IconData icon;
  final IconData eIcon;
  final TextEditingController controller;
  final Function onTap;
  final IconData dIcon;
  final  FocusNode focus;
  final bool read;
  final bool flag;
  final bool line;
  final Function edit;
  final bool isEdit;
  final double hor;

  CustomTextField({ this.hint, this.onsave, this.onTap,
    this.icon, this.type,  this.valid,  this.controller, this.focus, this.dIcon, this.label, this.read, this.eIcon, this.edit, this.isEdit, this.line, this.flag, this.hor,});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  bool _isHidden = true;
  void _visibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:widget.hor==null?20:widget.hor,vertical:0),
      child: SizedBox(
        height:MediaQuery.of(context).size.height*.06,
        child: TextFormField(
          onTap: widget.onTap,
          validator: widget.valid,
          controller: widget.controller,
          cursorColor: kPrimaryColor,
          focusNode: widget.focus,
          readOnly: widget.read==true?true:false,
          maxLines: widget.line==true?3:1,
          obscureText: widget.icon == Icons.lock_outline ? _isHidden : false,
          keyboardType:widget.type,
          onChanged: (widget.onsave),
          style: TextStyle(fontSize: 14,color: kBColor),
          decoration: InputDecoration(
            hintText: widget.hint,
            prefixIcon: widget.flag==true?Image.asset("assets/images/flag.png"):Icon(widget.dIcon,color: kGryColor,),
            labelText: widget.label==true?widget.hint:null,
            icon: widget.isEdit==true?Icon(Icons.edit):null,
            labelStyle: TextStyle(fontSize: 14,color:kGryColor,fontFamily: "roboto medium",),
            hintStyle: TextStyle(fontSize: 14,color: kGryColor,fontFamily: "roboto medium"),
            suffixIcon: widget.icon == Icons.lock_outline
                ? IconButton(
              onPressed: _visibility,
              alignment: Alignment.center,
              icon: _isHidden
                  ? Icon(Icons.visibility_off,color: kGryColor,)
                  : Icon(Icons.visibility,color: kPrimaryColor,),
            )
                : null,
            filled: true,
            // prefixText: widget.hint,
            fillColor:Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:kGryColor,width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kGryColor,width:1),
              borderRadius: BorderRadius.circular(5),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
