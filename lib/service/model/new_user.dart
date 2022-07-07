class NewUserModel {
  String? userEmail;
String? nickName;
bool? checkEmail;
String? sendEmail;

NewUserModel({
  this.userEmail,
  this.nickName,
  this.checkEmail,
  this.sendEmail,
});

factory NewUserModel.fromJson(Map<String, dynamic> json) {
  return NewUserModel(
    userEmail: json['userEmail'],
    nickName: json['nickName'],
    checkEmail: json['checkEmail'],
    sendEmail: json['sendEmail'],
  );
}
}