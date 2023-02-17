enum AuthenticationControllerEnums{
  login,
  register,
}

enum AuthenticationControllerUserTypeEnums{
  user,
}

extension LoginExtension on AuthenticationControllerEnums{
  String get key{
    switch (this){
      case AuthenticationControllerEnums.login:
        return "${AuthenticationControllerUserTypeEnums.user.name}/login";
      case AuthenticationControllerEnums.register:
        return "${AuthenticationControllerUserTypeEnums.user.name}/admin";
      
    }
  }
}

//usecase in requests
// AuthenticationControllerEnums.login.key