class UserProfile {
  String? uid;
  String? name;
  String? profileURL;

  UserProfile({
    required this.uid,
    required this.name,
    required this.profileURL,
  });

  UserProfile.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    profileURL = json['profileURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['profileURL'] = profileURL;
    data['uid'] = uid;
    return data;
  }
}