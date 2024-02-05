class Prediction {
  final String? luckyColor;
  final String? luckyColorCode;
  final List<int>? luckyNumber;
  final BotResponse? botResponse;
  final String? zodiac;

  Prediction({
    this.luckyColor,
    this.luckyColorCode,
    this.luckyNumber,
    this.botResponse,
    this.zodiac,
  });

  factory Prediction.fromJson(Map<String, dynamic> json) => Prediction(
        luckyColor: json["lucky_color"],
        luckyColorCode: json["lucky_color_code"],
        luckyNumber: json["lucky_number"] == null
            ? []
            : List<int>.from(json["lucky_number"]!.map((x) => x)),
        botResponse: json["bot_response"] == null
            ? null
            : BotResponse.fromJson(json["bot_response"]),
        zodiac: json["zodiac"],
      );

  Map<String, dynamic> toJson() => {
        "lucky_color": luckyColor,
        "lucky_color_code": luckyColorCode,
        "lucky_number": luckyNumber == null
            ? []
            : List<dynamic>.from(luckyNumber!.map((x) => x)),
        "bot_response": botResponse?.toJson(),
        "zodiac": zodiac,
      };
}

class BotResponse {
  final Career? physique;
  final Career? status;
  final Career? finances;
  final Career? relationship;
  final Career? career;
  final Career? travel;
  final Career? family;
  final Career? friends;
  final Career? health;
  final Career? totalScore;

  BotResponse({
    this.physique,
    this.status,
    this.finances,
    this.relationship,
    this.career,
    this.travel,
    this.family,
    this.friends,
    this.health,
    this.totalScore,
  });

  factory BotResponse.fromJson(Map<String, dynamic> json) => BotResponse(
        physique:
            json["physique"] == null ? null : Career.fromJson(json["physique"]),
        status: json["status"] == null ? null : Career.fromJson(json["status"]),
        finances:
            json["finances"] == null ? null : Career.fromJson(json["finances"]),
        relationship: json["relationship"] == null
            ? null
            : Career.fromJson(json["relationship"]),
        career: json["career"] == null ? null : Career.fromJson(json["career"]),
        travel: json["travel"] == null ? null : Career.fromJson(json["travel"]),
        family: json["family"] == null ? null : Career.fromJson(json["family"]),
        friends:
            json["friends"] == null ? null : Career.fromJson(json["friends"]),
        health: json["health"] == null ? null : Career.fromJson(json["health"]),
        totalScore: json["total_score"] == null
            ? null
            : Career.fromJson(json["total_score"]),
      );

  Map<String, dynamic> toJson() => {
        "physique": physique?.toJson(),
        "status": status?.toJson(),
        "finances": finances?.toJson(),
        "relationship": relationship?.toJson(),
        "career": career?.toJson(),
        "travel": travel?.toJson(),
        "family": family?.toJson(),
        "friends": friends?.toJson(),
        "health": health?.toJson(),
        "total_score": totalScore?.toJson(),
      };
}

class Career {
  final int? score;
  final String? splitResponse;

  Career({
    this.score,
    this.splitResponse,
  });

  factory Career.fromJson(Map<String, dynamic> json) => Career(
        score: json["score"],
        splitResponse: json["split_response"],
      );

  Map<String, dynamic> toJson() => {
        "score": score,
        "split_response": splitResponse,
      };
}
