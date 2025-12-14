String? validatorOfEmail(context, String? value) {
  if (value == null || value.isEmpty) {
    return "Please enter your email";
  } else if (value.contains(
    RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ),
  )) {
    return null;
  } else {
    return "Please enter a valid email address";
  }
}

String? validatorOfPassword(context, String? value) {
  RegExp regex = RegExp(
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$',
  );
  if (value == null || value.isEmpty) {
    return "Please enter your password";
  } else {
    if (!regex.hasMatch(value)) {
      if (!RegExp(r'[A-Z]').hasMatch(value)) {
        return "The password must contain at least one uppercase letter";
      }
      if (!RegExp(r'[a-z]').hasMatch(value)) {
        return "The password must contain at least one lowercase letter";
      }
      if (!RegExp(r'[0-9]').hasMatch(value)) {
        return "The password must contain at least one digit";
      }
      if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
        return "The password must contain at least one special character";
      }
      if (value.length < 8) {
        return "The password must be at least 8 characters long";
      }
      return null;
    } else {
      return null;
    }
  }
}

String? validatorOfName(context, String? value) {
  if (value == null || value.isEmpty) {
    return "Please enter your full name";
  } else if (value.length < 3) {
    return "Please enter a valid name";
  } else if (value is int) {
    return "Please enter a valid name";
  } else if (value.contains(RegExp(r'[0-9]'))) {
    return "Please enter a valid name";
  } else if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    return "Please enter a valid name";
  } else {
    return null;
  }
}

String? validatorOfAge(context, String? value) {
  if (value == null || value.isEmpty) {
    return "Please enter your age";
  } else if (int.tryParse(value) == null) {
    return "Please enter a valid age";
  } else if (int.parse(value) < 12) {
    return "Please enter a valid age";
  } else if (int.parse(value) > 70) {
    return "Please enter a valid age";
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
