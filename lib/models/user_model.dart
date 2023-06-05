class UserModel implements Comparable {
  String userId;
  String name;
  String email;
  String password;
  String createdAt;
  String modifyAt;
  List devices;
  List<int> cards;
  List<int> favourites;

  UserModel({
    required this.userId,
    required this.name,
    required this.email,
    required this.password,
    required this.createdAt,
    required this.modifyAt,
    required this.devices,
    required this.cards,
    required this.favourites,
  });

  factory UserModel.fromJson(Map<String, Object?> json) => UserModel(
        userId: json["userId"] as String,
        name: json["name"] as String,
        email: json["email"] as String,
        password: json["password"] as String,
        createdAt: json["createdAt"] as String,
        modifyAt: json["modifyAt"] as String,
        devices: json["devices"] as List,
        cards: json["cards"] as List<int>,
        favourites: json["favourites"] as List<int>,
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "email": email,
        "password": password,
        "createdAt": createdAt,
        "modifyAt": modifyAt,
        "devices": devices,
        "cards": cards,
        "favourites": favourites
      };

  @override
  String toString() {
    return 'UserModel{id: $userId, name: $name, email: $email, password: $password, createdAt: $createdAt, modifyAt: $modifyAt, devices: $devices, cards: $cards, favourites: $favourites}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModel &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          name == other.name &&
          email == other.email &&
          password == other.password &&
          createdAt == other.createdAt &&
          modifyAt == other.modifyAt &&
          devices == other.devices &&
          cards == other.cards &&
          favourites == other.favourites;

  @override
  int get hashCode {
    return Object.hash(userId, name, email, password, createdAt, modifyAt,
        devices, cards, favourites);
  }

  @override
  int compareTo(other) {
    return name.compareTo(other.name);
  }
}
