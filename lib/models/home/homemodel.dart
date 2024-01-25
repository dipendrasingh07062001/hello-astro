class HomeModel {
  List<Banners>? banners;
  List<Astrologer>? astrologers;
  List<HoroscopeModel>? horoscopes;
  List<Review>? reviews;

  HomeModel({
    this.banners,
    this.astrologers,
    this.horoscopes,
    this.reviews,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        banners: json["banners"] == null
            ? []
            : List<Banners>.from(
                json["banners"]!.map((x) => Banners.fromJson(x))),
        astrologers: json["astrologers"] == null
            ? []
            : List<Astrologer>.from(
                json["astrologers"]!.map((x) => Astrologer.fromJson(x))),
        horoscopes: json["horoscopes"] == null
            ? []
            : List<HoroscopeModel>.from(
                json["horoscopes"]!.map((x) => HoroscopeModel.fromJson(x))),
        reviews: json["reviews"] == null
            ? []
            : List<Review>.from(
                json["reviews"]!.map((x) => Review.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "banners": banners == null
            ? []
            : List<dynamic>.from(banners!.map((x) => x.toJson())),
        "astrologers": astrologers == null
            ? []
            : List<dynamic>.from(astrologers!.map((x) => x.toJson())),
        "horoscopes": horoscopes == null
            ? []
            : List<dynamic>.from(horoscopes!.map((x) => x.toJson())),
        "reviews": reviews == null
            ? []
            : List<dynamic>.from(reviews!.map((x) => x.toJson())),
      };
}

class Astrologer {
  int? id;
  int? userId;
  int? astrologerType;
  String? name;
  DateTime? dob;
  String? experience;
  List<dynamic>? expertise;
  String? qualifications;
  String? state;
  List<dynamic>? skills;
  String? phone;
  String? email;
  String? gender;
  String? city;
  dynamic country;
  dynamic systemKnown;
  String? shortBio;
  dynamic conversationType;
  dynamic socialType;
  dynamic astrology;
  String? panNo;
  String? gstNo;
  int? price;
  int? callPrice;
  int? videoPrice;
  int? chatPrice;
  dynamic description;
  String? image;
  dynamic coverImage;
  List<dynamic>? galleryImage;
  dynamic icon;
  dynamic panCard;
  dynamic aadharCard;
  dynamic aadharback;
  dynamic aadharfront;
  dynamic speakingLanguages;
  String? status;
  String? language;
  int? liveStatus;
  String? approveStatus;
  String? monetize;
  dynamic isLogin;
  String? fcmToken;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? certificate;
  String? offer;

  Astrologer({
    this.id,
    this.userId,
    this.astrologerType,
    this.name,
    this.dob,
    this.experience,
    this.expertise,
    this.qualifications,
    this.state,
    this.skills,
    this.phone,
    this.email,
    this.gender,
    this.city,
    this.country,
    this.systemKnown,
    this.shortBio,
    this.conversationType,
    this.socialType,
    this.astrology,
    this.panNo,
    this.gstNo,
    this.price,
    this.callPrice,
    this.videoPrice,
    this.chatPrice,
    this.description,
    this.image,
    this.coverImage,
    this.galleryImage,
    this.icon,
    this.panCard,
    this.aadharCard,
    this.aadharback,
    this.aadharfront,
    this.speakingLanguages,
    this.status,
    this.language,
    this.liveStatus,
    this.approveStatus,
    this.monetize,
    this.isLogin,
    this.fcmToken,
    this.createdAt,
    this.updatedAt,
    this.certificate,
    this.offer,
  });

  factory Astrologer.fromJson(Map<String, dynamic> json) => Astrologer(
        id: json["id"],
        userId: json["user_id"],
        astrologerType: json["astrologer_type"],
        name: json["name"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        experience: json["experience"],
        expertise: json["expertise"] == null
            ? []
            : List<dynamic>.from(json["expertise"]!.map((x) => x)),
        qualifications: json["qualifications"],
        state: json["state"],
        skills: json["skills"] == null
            ? []
            : List<dynamic>.from(json["skills"]!.map((x) => x)),
        phone: json["phone"],
        email: json["email"],
        gender: json["gender"],
        city: json["city"],
        country: json["country"],
        systemKnown: json["system_known"],
        shortBio: json["short_bio"],
        conversationType: json["conversation_type"],
        socialType: json["social_type"],
        astrology: json["astrology"],
        panNo: json["pan_no"],
        gstNo: json["gst_no"],
        price: json["price"],
        callPrice: json["call_price"],
        videoPrice: json["video_price"],
        chatPrice: json["chat_price"],
        description: json["description"],
        image: json["image"],
        coverImage: json["cover_image"],
        galleryImage: json["gallery_image"] == null
            ? []
            : List<dynamic>.from(json["gallery_image"]!.map((x) => x)),
        icon: json["icon"],
        panCard: json["pan_card"],
        aadharCard: json["aadhar_card"],
        aadharback: json["aadharback"],
        aadharfront: json["aadharfront"],
        speakingLanguages: json["speaking_languages"],
        status: json["status"],
        language: json["language"],
        liveStatus: json["live_status"],
        approveStatus: json["approve_status"],
        monetize: json["monetize"],
        isLogin: json["is_login"],
        fcmToken: json["fcm_token"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        certificate: json["certificate"],
        offer: json["offer"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "astrologer_type": astrologerType,
        "name": name,
        "dob":
            "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
        "experience": experience,
        "expertise": expertise == null
            ? []
            : List<dynamic>.from(expertise!.map((x) => x)),
        "qualifications": qualifications,
        "state": state,
        "skills":
            skills == null ? [] : List<dynamic>.from(skills!.map((x) => x)),
        "phone": phone,
        "email": email,
        "gender": gender,
        "city": city,
        "country": country,
        "system_known": systemKnown,
        "short_bio": shortBio,
        "conversation_type": conversationType,
        "social_type": socialType,
        "astrology": astrology,
        "pan_no": panNo,
        "gst_no": gstNo,
        "price": price,
        "call_price": callPrice,
        "video_price": videoPrice,
        "chat_price": chatPrice,
        "description": description,
        "image": image,
        "cover_image": coverImage,
        "gallery_image": galleryImage == null
            ? []
            : List<dynamic>.from(galleryImage!.map((x) => x)),
        "icon": icon,
        "pan_card": panCard,
        "aadhar_card": aadharCard,
        "aadharback": aadharback,
        "aadharfront": aadharfront,
        "speaking_languages": speakingLanguages,
        "status": status,
        "language": language,
        "live_status": liveStatus,
        "approve_status": approveStatus,
        "monetize": monetize,
        "is_login": isLogin,
        "fcm_token": fcmToken,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "certificate": certificate,
        "offer": offer,
      };
}

class Banners {
  int? id;
  String? image;
  String? position;
  String? link;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  Banners({
    this.id,
    this.image,
    this.position,
    this.link,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Banners.fromJson(Map<String, dynamic> json) => Banners(
        id: json["id"],
        image: json["image"],
        position: json["position"],
        link: json["link"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "position": position,
        "link": link,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class HoroscopeModel {
  int? id;
  String? horoscopeName;
  String? image;
  String? description;
  String? type;
  String? personalLife;
  String? luch;
  String? health;
  String? profession;
  String? emotion;
  String? travel;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  HoroscopeModel({
    this.id,
    this.horoscopeName,
    this.image,
    this.description,
    this.type,
    this.personalLife,
    this.luch,
    this.health,
    this.profession,
    this.emotion,
    this.travel,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory HoroscopeModel.fromJson(Map<String, dynamic> json) => HoroscopeModel(
        id: json["id"],
        horoscopeName: json["horoscope_name"],
        image: json["image"],
        description: json["description"],
        type: json["type"],
        personalLife: json["personal_life"],
        luch: json["luch"],
        health: json["health"],
        profession: json["profession"],
        emotion: json["emotion"],
        travel: json["travel"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "horoscope_name": horoscopeName,
        "image": image,
        "description": description,
        "type": type,
        "personal_life": personalLife,
        "luch": luch,
        "health": health,
        "profession": profession,
        "emotion": emotion,
        "travel": travel,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Review {
  int? id;
  String? userId;
  String? astrologerId;
  String? rating;
  int? pinned;
  String? review;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic user;

  Review({
    this.id,
    this.userId,
    this.astrologerId,
    this.rating,
    this.pinned,
    this.review,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        userId: json["user_id"],
        astrologerId: json["astrologer_id"],
        rating: json["rating"],
        pinned: json["pinned"],
        review: json["review"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "astrologer_id": astrologerId,
        "rating": rating,
        "pinned": pinned,
        "review": review,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "user": user,
      };
}
