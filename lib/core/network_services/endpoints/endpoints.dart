class Endpoints {
  // live
  // static const baseUrl = 'https://api.rasan.com.np';
  // static const imageBaseUrl = 'https://api.rasan.com.np';

  //dev
  static const baseUrl = 'https://rasan-api.ehetauda.com';
  static const imageBaseUrl = 'https://rasan-api.ehetauda.com';

  static const login = '/api/auth/login/';
  static const requestOtp = '/api/auth/request/';
  static const notification = '/api/notification/notifications/';

  //delivery list of user
  static const assignedDeliveryList = '/api/delivery/deliveries/user';
  //delivery list by id
  static const deliveryListById = '/api/delivery/deliveries/';
  //start delivery
  static const deliveryAction = '/api/delivery/delivery-action/';

  //post location lat lng
  static const postLatLng = '/api/profile/admin/address/detail/';


}
