class UserModel {
  int? id;
  Null? guesserId;
  bool? expert;
  String? firstName;
  String? lastName;
  String? userType;
  String? username;
  String? email;
  String? mobile;
  Null? dateOfBirth;
  String? city;
  String? state;
  bool? status;
  String? blockReason;
  String? country;
  Null? gplus;
  Null? facebook;
  String? subscriptionId;
  Null? subscriptionStartDate;
  Null? subscriptionEndDate;
  Null? userSubscriptionId;
  int? points;
  String? bankAccountNumber;
  String? ifscCode;
  String? bankName;
  Null? totalGames;
  Null? passedGames;
  Null? rating;
  String? otp;
  Null? otpTime;
  bool? online;
  Null? createdBy;
  Null? modifiedBy;
  String? created;
  String? modified;
  int? deleted;

  UserModel(
      {this.id,
      this.guesserId,
      this.expert,
      this.firstName,
      this.lastName,
      this.userType,
      this.username,
      this.email,
      this.mobile,
      this.dateOfBirth,
      this.city,
      this.state,
      this.status,
      this.blockReason,
      this.country,
      this.gplus,
      this.facebook,
      this.subscriptionId,
      this.subscriptionStartDate,
      this.subscriptionEndDate,
      this.userSubscriptionId,
      this.points,
      this.bankAccountNumber,
      this.ifscCode,
      this.bankName,
      this.totalGames,
      this.passedGames,
      this.rating,
      this.otp,
      this.otpTime,
      this.online,
      this.createdBy,
      this.modifiedBy,
      this.created,
      this.modified,
      this.deleted});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    guesserId = json['guesser_id'];
    expert = json['expert'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    userType = json['user_type'];
    username = json['username'];
    email = json['email'];
    mobile = json['mobile'];
    dateOfBirth = json['date_of_birth'];
    city = json['city'];
    state = json['state'];
    status = json['status'];
    blockReason = json['block_reason'];
    country = json['country'];
    gplus = json['gplus'];
    facebook = json['facebook'];
    subscriptionId = json['subscription_id'];
    subscriptionStartDate = json['subscription_start_date'];
    subscriptionEndDate = json['subscription_end_date'];
    userSubscriptionId = json['user_subscription_id'];
    points = json['points'];
    bankAccountNumber = json['bank_account_number'];
    ifscCode = json['ifsc_code'];
    bankName = json['bank_name'];
    totalGames = json['total_games'];
    passedGames = json['passed_games'];
    rating = json['rating'];
    otp = json['otp'];
    otpTime = json['otp_time'];
    online = json['online'];
    createdBy = json['created_by'];
    modifiedBy = json['modified_by'];
    created = json['created'];
    modified = json['modified'];
    deleted = json['deleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['guesser_id'] = this.guesserId;
    data['expert'] = this.expert;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['user_type'] = this.userType;
    data['username'] = this.username;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['date_of_birth'] = this.dateOfBirth;
    data['city'] = this.city;
    data['state'] = this.state;
    data['status'] = this.status;
    data['block_reason'] = this.blockReason;
    data['country'] = this.country;
    data['gplus'] = this.gplus;
    data['facebook'] = this.facebook;
    data['subscription_id'] = this.subscriptionId;
    data['subscription_start_date'] = this.subscriptionStartDate;
    data['subscription_end_date'] = this.subscriptionEndDate;
    data['user_subscription_id'] = this.userSubscriptionId;
    data['points'] = this.points;
    data['bank_account_number'] = this.bankAccountNumber;
    data['ifsc_code'] = this.ifscCode;
    data['bank_name'] = this.bankName;
    data['total_games'] = this.totalGames;
    data['passed_games'] = this.passedGames;
    data['rating'] = this.rating;
    data['otp'] = this.otp;
    data['otp_time'] = this.otpTime;
    data['online'] = this.online;
    data['created_by'] = this.createdBy;
    data['modified_by'] = this.modifiedBy;
    data['created'] = this.created;
    data['modified'] = this.modified;
    data['deleted'] = this.deleted;
    return data;
  }
}
