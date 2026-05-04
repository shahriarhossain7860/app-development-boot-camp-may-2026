// ignore_for_file: constant_identifier_names

// const String url = String.fromEnvironment("BASE_URL");
const String url = "https://admin.myattentiv.co.uk";
const String imageUrl = "$url/";

final class NetworkConstants {
  NetworkConstants._();
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
}

final class Endpoints {
  Endpoints._();
  //backend_url

  // Authentication
  static String registerSentOtp() => "/api/send-register-otp";
  static String userLogin() => "/api/login";
  static String logOut() => "/api/logout";
  static String sendOtpEndPoint() => "/api/send-register-otp";
  static String resendOtpEndPoint() => "/api/resend-register-otp";
  static String verifyOtpEndPoint() => "/api/verify-register-otp";
  static String sendOtpPassEndPoint() => "/api/send-otp";
  static String verifyOtpPassEndPoint() => "/api/verify-otp";
  static String createPassWordEndPoint() => "/api/reset-password";
  static String storeRoutine() => "/api/routine/store";
  static String getTitrationList() => "/api/titration/index";
  static String getRoutineList() => "/api/routine/index";
  static String storeMedication() => "/api/medication/store";
  static String storeTitration() => "/api/titration/store";
  static String getMedicationList() => "/api/medication/index";
  static String storeThought() => "/api/thought/store";
  static String getThoughtList() => "/api/thought/index";
  static String getSingleEvent() => "/api/event/single";
  static String storeEvent() => "/api/events";
  static String getMyEvent() => "/api/events/mine";
  static String updateEvent({required int id}) => "/api/events/$id/edit";
  //static String getAllEvent({required String filter}) => "/api/events?filter=today";

  static String getAllEvent(Map<String, dynamic> queryParams) {
    final queryString = Uri(queryParameters: queryParams).query;
    return 'api/events?$queryString';
  }

  
  // Profile
  static String getProfile() => "/api/me";
  static String updateProfile() => "/api/settings/update-profile";
  static String changePassWordEndPoint() => "/api/settings/change-password";

  // products
  static String getCategoryList() => "/api/category/list";
  static String getMostSaleList() => "/api/product/most-sales";
  static String getOurofferList() => "/api/product/our-offers";
  static String getProductDetails(int id) => "/api/product/$id/show";
  static String getAllProducts(String slug) => "/api/product/list$slug";
  static String postReview() => "/api/review/store";

  // order
  static String pendingOrderList() => "/api/order/pending";
  static String completeOrderList() => "/api/order/completed";
  static String storeOrder() => "/api/order/store";

  // Logistics
  static String logisticsData() => "/api/logistics-data";

  ////post
  static String getPost() => "/api/posts";
  static String storePost() => "/api/post/store";

  ///Social Login
  static String socialLogin() => "/api/auth/google";

  ///Category
  static String getCategory() => "/api/categories";

  ///onboarding
  static String onboarding() => "/api/onboarding/setup";

  ///Reaction
  static String storeReact(int id) => "/api/post/$id/toggle-reaction";

  /// Comment
  static String getComment(int id) => "/api/post/$id/comments";
  static String storeComment(int id) => "/api/post/$id/comment";


  /// Chat
  static String getMessageList() => "/api/messages/group/list";
  static String getChatList(int id) => "/api/messages/receive/user/$id";
  static String messageSend(int receiverId) => "/api/messages/send/user/$receiverId";


  ///// Delete
  static String deleteTitration(int id) => "/api/titration/delete/$id";
  static String deleteThought(int id) => "/api/thought/delete/$id";
  static String deleteMedication(int id) => "/api/medication/delete/$id";
}
