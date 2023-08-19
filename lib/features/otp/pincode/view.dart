import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PincodeView extends StatelessWidget {
  const PincodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 57,
            width: 56,
            child: TextFormField(
              cursorColor: Theme.of(context).unselectedWidgetColor,
              showCursor: true,
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.labelMedium,
              // getLightStyle(color: Palette.greyColor),
              textAlign: TextAlign.center,
              onSaved: (pin1) {},
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Theme.of(context).cardColor),
                ),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 57,
            width: 56,
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.titleLarge,
              // getLightStyle(color: Palette.greyColor),
              textAlign: TextAlign.center,
              onSaved: (pin1) {},
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Theme.of(context).cardColor),
                ),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 57,
            width: 56,
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.titleLarge,
              // getLightStyle(color: Palette.greyColor),
              textAlign: TextAlign.center,
              onSaved: (pin1) {},
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Theme.of(context).cardColor),
                ),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 57,
            width: 56,
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.titleLarge,
              // getLightStyle(color: Palette.greyColor),
              textAlign: TextAlign.center,
              onSaved: (pin1) {},
              onChanged: (value) {
                // if (value.length == 1) {
                //   FocusScope.of(context).nextFocus();
                // }
              },
              decoration: InputDecoration(
                fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Theme.of(context).cardColor),
                ),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
        ],
      ),
    );
  }
}
