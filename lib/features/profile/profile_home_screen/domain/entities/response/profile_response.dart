class ProfileResponse {
  String profileImage;
  String name;
  String shopName;
  String mobileNumber;
  String address;
  bool isVerified;
  double profileCompletionPercentage;
  String loyaltyPoints;

  ProfileResponse(
      {required this.mobileNumber,
      required this.address,
      required this.isVerified,
      required this.loyaltyPoints,
      required this.name,
      required this.profileCompletionPercentage,
      required this.profileImage,
      required this.shopName});
}
