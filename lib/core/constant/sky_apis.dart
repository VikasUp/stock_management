class SKYAPIs {
  static _Mock mock = _Mock();
  static const String authenticate = "/authenticate";
  static const String forgetPassword = "/account/reset-password/init";
  static const String profile = "/user";

  ///API Without Pagination
  // static const String userListing = "/sfl-users";
  ///API with Pagination for User Listing
  static const String userListing =
      "/paginated-sfl-users?status=true&pageNumber={pageNo}&pageSize={size}";
  static const String register = "/register";
  static const String registerInit = "/register/init";
  static const String registerFinish = "/register/finish";
  static const String getCountryCodes = "/country-dial-codes";
  static const String editProfile = "/account";
  static const String divisionResponse = "/divisions-by-category/2";
  static const String teamResponse = "/teams-by-category/2";
  static const String saveResponse = "/save";
  static const String usermodelResponse = "/users/1";
  static const String dashBoardResponse = "/";
}

class _Mock {
  final String kLogin = 'assets/mock/authentication.json';
  final String kProfile = 'assets/mock/accountInfo.json';
  final String kUserList = 'assets/mock/sfl_users.json';
  final String kFailure = 'assets/mock/failure.json';
  final String kCountryCode = 'assets/mock/country_code.json';
  final String kRegisterInit = 'assets/mock/register_init.json';
  final String kRegisterFinish = 'assets/mock/register_finish.json';
  final String kUpdateProfile = 'assets/mock/update_profile.json';
  final String kDivisonResponse = 'assets/mock/division_response.json';
  final String kDashBoardResponse = 'assets/mock/division_response.json';
  final String kTeamResponse = 'assets/mock/teams_response.json';
  final String kSaveResponse = 'assets/mock/save_response.json';
  final String kUserModelRespose = '/dummyjson.com/users/1';
}
