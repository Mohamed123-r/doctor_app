import '../../generated/l10n.dart';

String? validatorOfEmail(context, String? value) {
  if (value == null || value.isEmpty) {
    return S.of(context).pleaseEnterYourEmail;
  } else if (value.contains(
    RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ),
  )) {
    return null;
  } else {
    return S.of(context).pleaseEnterAValidEmailAddress;
  }
}

String? validatorOfPassword(context, String? value) {
  RegExp regex = RegExp(
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$',
  );
  if (value == null || value.isEmpty) {
    return S.of(context).pleaseEnterYourPassword;
  } else {
    if (!regex.hasMatch(value)) {
      if (!RegExp(r'[A-Z]').hasMatch(value)) {
        return S.of(context).thePasswordMustContainAtLeastOneUppercaseLetter;
      }
      if (!RegExp(r'[a-z]').hasMatch(value)) {
        return S.of(context).thePasswordMustContainAtLeastOneLowercaseLetter;
      }
      if (!RegExp(r'[0-9]').hasMatch(value)) {
        return S.of(context).thePasswordMustContainAtLeastOneDigit;
      }
      if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
        return S.of(context).thePasswordMustContainAtLeastOneSpecialCharacter;
      }
      if (value.length < 8) {
        return S.of(context).thePasswordMustBeAtLeast8CharactersLong;
      }
      return null;
    } else {
      return null;
    }
  }
}
String? validatorOfPhone (context, String? value) {
  if (value == null || value.isEmpty) {
    return S.of(context).pleaseEnterYourPhoneNumber;
  } else if (!RegExp(r'^[0-9]{10,15}$').hasMatch(value)) {
    return S.of(context).pleaseEnterAValidPhoneNumber;
  } else {
    return null;
  }
}

String? validatorOfName(context, String? value) {
  if (value == null || value.isEmpty) {
    return S.of(context).pleaseEnterYourFullName;
  } else if (value.length < 3) {
    return S.of(context).pleaseEnterAValidName;
  } else if (value is int) {
    return S.of(context).pleaseEnterAValidName;
  } else if (value.contains(RegExp(r'[0-9]'))) {
    return S.of(context).pleaseEnterAValidName;
  } else if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    return S.of(context).pleaseEnterAValidName;
  } else {
    return null;
  }
}

Future<String?> validatorOfAge(context, String? value) async {
  if (value == null || value.isEmpty) {
    return S.of(context).pleaseEnterYourAge;
  } else if (int.tryParse(value) == null) {
    return S.of(context).pleaseEnterAValidAge;
  } else if (int.parse(value) < 12) {
    return S.of
      (context).pleaseEnterAValidAge;
  } else if (int.parse(value) > 70) {
    return S.of(context).pleaseEnterAValidAge;
  } else {
    return null;
  }
}

// String? validatorOfAddress(context, String? value) {
//   if (value == null || value.isEmpty) {
//     return "Please enter your address";
//   } else if (value.length < 5) {
//     return S.of(context).address_valid;
//   } else if (value.length > 100) {
//     return S.of(context).address_valid;
//   } else if (value.contains(RegExp(r'[0-9]'))) {
//     return S.of(context).address_valid;
//   } else if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
//     return S.of(context).address_valid;
//   } else {
//     return null;
//   }
// }
//
// String? validatorOfPhone(context, String? value) {
//   if (value == null || value.isEmpty) {
//     return null;
//   } else if (value.length <= 10) {
//     return S.of(context).phone_valid;
//   } else if (value.length > 11) {
//     return S.of(context).phone_valid;
//   } else {
//     return null;
//   }
// }
