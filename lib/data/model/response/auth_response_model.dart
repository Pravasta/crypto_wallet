import 'dart:convert';

class AuthResponseModel {
  final User? user;
  final Session? session;

  AuthResponseModel({
    this.user,
    this.session,
  });

  AuthResponseModel copyWith({
    User? user,
    Session? session,
  }) =>
      AuthResponseModel(
        user: user ?? this.user,
        session: session ?? this.session,
      );

  factory AuthResponseModel.fromJson(String str) =>
      AuthResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponseModel.fromMap(Map<String, dynamic> json) =>
      AuthResponseModel(
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        session:
            json["session"] == null ? null : Session.fromMap(json["session"]),
      );

  Map<String, dynamic> toMap() => {
        "user": user?.toMap(),
        "session": session?.toMap(),
      };
}

class Session {
  final String? accessToken;
  final String? tokenType;
  final int? expiresIn;
  final String? refreshToken;
  final User? user;

  Session({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.refreshToken,
    this.user,
  });

  Session copyWith({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    String? refreshToken,
    User? user,
  }) =>
      Session(
        accessToken: accessToken ?? this.accessToken,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
        refreshToken: refreshToken ?? this.refreshToken,
        user: user ?? this.user,
      );

  factory Session.fromJson(String str) => Session.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Session.fromMap(Map<String, dynamic> json) => Session(
        accessToken: json["accessToken"],
        tokenType: json["tokenType"],
        expiresIn: json["expiresIn"],
        refreshToken: json["refreshToken"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "accessToken": accessToken,
        "tokenType": tokenType,
        "expiresIn": expiresIn,
        "refreshToken": refreshToken,
        "user": user?.toMap(),
      };
}

class User {
  final String? id;
  final String? aud;
  final String? role;
  final String? email;
  final DateTime? emailConfirmedAt;
  final String? phone;
  final DateTime? lastSignInAt;
  final AppMetadata? appMetadata;
  final UserMetadata? userMetadata;
  final List<Identity>? identities;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  User({
    this.id,
    this.aud,
    this.role,
    this.email,
    this.emailConfirmedAt,
    this.phone,
    this.lastSignInAt,
    this.appMetadata,
    this.userMetadata,
    this.identities,
    this.createdAt,
    this.updatedAt,
  });

  User copyWith({
    String? id,
    String? aud,
    String? role,
    String? email,
    DateTime? emailConfirmedAt,
    String? phone,
    DateTime? lastSignInAt,
    AppMetadata? appMetadata,
    UserMetadata? userMetadata,
    List<Identity>? identities,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      User(
        id: id ?? this.id,
        aud: aud ?? this.aud,
        role: role ?? this.role,
        email: email ?? this.email,
        emailConfirmedAt: emailConfirmedAt ?? this.emailConfirmedAt,
        phone: phone ?? this.phone,
        lastSignInAt: lastSignInAt ?? this.lastSignInAt,
        appMetadata: appMetadata ?? this.appMetadata,
        userMetadata: userMetadata ?? this.userMetadata,
        identities: identities ?? this.identities,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        aud: json["aud"],
        role: json["role"],
        email: json["email"],
        emailConfirmedAt: json["emailConfirmedAt"] == null
            ? null
            : DateTime.parse(json["emailConfirmedAt"]),
        phone: json["phone"],
        lastSignInAt: json["lastSignInAt"] == null
            ? null
            : DateTime.parse(json["lastSignInAt"]),
        appMetadata: json["appMetadata"] == null
            ? null
            : AppMetadata.fromMap(json["appMetadata"]),
        userMetadata: json["userMetadata"] == null
            ? null
            : UserMetadata.fromMap(json["userMetadata"]),
        identities: json["identities"] == null
            ? []
            : List<Identity>.from(
                json["identities"]!.map((x) => Identity.fromMap(x))),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "aud": aud,
        "role": role,
        "email": email,
        "emailConfirmedAt": emailConfirmedAt?.toIso8601String(),
        "phone": phone,
        "lastSignInAt": lastSignInAt?.toIso8601String(),
        "appMetadata": appMetadata?.toMap(),
        "userMetadata": userMetadata?.toMap(),
        "identities": identities == null
            ? []
            : List<dynamic>.from(identities!.map((x) => x.toMap())),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class AppMetadata {
  final String? provider;
  final List<String>? providers;

  AppMetadata({
    this.provider,
    this.providers,
  });

  AppMetadata copyWith({
    String? provider,
    List<String>? providers,
  }) =>
      AppMetadata(
        provider: provider ?? this.provider,
        providers: providers ?? this.providers,
      );

  factory AppMetadata.fromJson(String str) =>
      AppMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AppMetadata.fromMap(Map<String, dynamic> json) => AppMetadata(
        provider: json["provider"],
        providers: json["providers"] == null
            ? []
            : List<String>.from(json["providers"]!.map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "provider": provider,
        "providers": providers == null
            ? []
            : List<dynamic>.from(providers!.map((x) => x)),
      };
}

class Identity {
  final String? identityId;
  final String? id;
  final String? userId;
  final IdentityData? identityData;
  final String? provider;
  final DateTime? lastSignInAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Identity({
    this.identityId,
    this.id,
    this.userId,
    this.identityData,
    this.provider,
    this.lastSignInAt,
    this.createdAt,
    this.updatedAt,
  });

  Identity copyWith({
    String? identityId,
    String? id,
    String? userId,
    IdentityData? identityData,
    String? provider,
    DateTime? lastSignInAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Identity(
        identityId: identityId ?? this.identityId,
        id: id ?? this.id,
        userId: userId ?? this.userId,
        identityData: identityData ?? this.identityData,
        provider: provider ?? this.provider,
        lastSignInAt: lastSignInAt ?? this.lastSignInAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Identity.fromJson(String str) => Identity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Identity.fromMap(Map<String, dynamic> json) => Identity(
        identityId: json["identityId"],
        id: json["id"],
        userId: json["userId"],
        identityData: json["identityData"] == null
            ? null
            : IdentityData.fromMap(json["identityData"]),
        provider: json["provider"],
        lastSignInAt: json["lastSignInAt"] == null
            ? null
            : DateTime.parse(json["lastSignInAt"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toMap() => {
        "identityId": identityId,
        "id": id,
        "userId": userId,
        "identityData": identityData?.toMap(),
        "provider": provider,
        "lastSignInAt": lastSignInAt?.toIso8601String(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class IdentityData {
  final String? email;
  final bool? emailVerified;
  final bool? phoneVerified;
  final String? sub;

  IdentityData({
    this.email,
    this.emailVerified,
    this.phoneVerified,
    this.sub,
  });

  IdentityData copyWith({
    String? email,
    bool? emailVerified,
    bool? phoneVerified,
    String? sub,
  }) =>
      IdentityData(
        email: email ?? this.email,
        emailVerified: emailVerified ?? this.emailVerified,
        phoneVerified: phoneVerified ?? this.phoneVerified,
        sub: sub ?? this.sub,
      );

  factory IdentityData.fromJson(String str) =>
      IdentityData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IdentityData.fromMap(Map<String, dynamic> json) => IdentityData(
        email: json["email"],
        emailVerified: json["email_verified"],
        phoneVerified: json["phone_verified"],
        sub: json["sub"],
      );

  Map<String, dynamic> toMap() => {
        "email": email,
        "email_verified": emailVerified,
        "phone_verified": phoneVerified,
        "sub": sub,
      };
}

class UserMetadata {
  UserMetadata();

  factory UserMetadata.fromJson(String str) =>
      UserMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserMetadata.fromMap(Map<String, dynamic> json) => UserMetadata();

  Map<String, dynamic> toMap() => {};
}
