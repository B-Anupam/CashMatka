class GamesListModel {
  int? ids;
  String? gameCode;
  String? title;
  String? aliasNames;
  String? description;
  bool? showDescriptionFlag;
  int? gameLevel;
  String? startTime;
  String? endTime;
  String? sampleResult;
  bool? specialFlag;
  bool? holidayFlag;
  bool? chartsFlag;
  bool? winnersListFlag;
  bool? resultPostFlag;
  bool? onlinePlayFlag;
  bool? liveFlag;
  int? gameOwnerId;
  int? gameBookieId;
  bool? freeGuessingFlag;
  int? active;
  Null? createdBy;
  Null? modifiedBy;
  String? created;
  String? modified;
  String? weeks;
  int? id;
  GameDays? gameDays;
  int? loadGame;
  List<GameResults>? gameResults;

  GamesListModel(
      {this.ids,
      this.gameCode,
      this.title,
      this.aliasNames,
      this.description,
      this.showDescriptionFlag,
      this.gameLevel,
      this.startTime,
      this.endTime,
      this.sampleResult,
      this.specialFlag,
      this.holidayFlag,
      this.chartsFlag,
      this.winnersListFlag,
      this.resultPostFlag,
      this.onlinePlayFlag,
      this.liveFlag,
      this.gameOwnerId,
      this.gameBookieId,
      this.freeGuessingFlag,
      this.active,
      this.createdBy,
      this.modifiedBy,
      this.created,
      this.modified,
      this.weeks,
      this.id,
      this.gameDays,
      this.loadGame,
      this.gameResults});

  GamesListModel.fromJson(Map<String, dynamic> json) {
    ids = json['ids'];
    gameCode = json['game_code'];
    title = json['title'];
    aliasNames = json['alias_names'];
    description = json['description'];
    showDescriptionFlag = json['show_description_flag'];
    gameLevel = json['game_level'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    sampleResult = json['sample_result'];
    specialFlag = json['special_flag'];
    holidayFlag = json['holiday_flag'];
    chartsFlag = json['charts_flag'];
    winnersListFlag = json['winners_list_flag'];
    resultPostFlag = json['result_post_flag'];
    onlinePlayFlag = json['online_play_flag'];
    liveFlag = json['live_flag'];
    gameOwnerId = json['game_owner_id'];
    gameBookieId = json['game_bookie_id'];
    freeGuessingFlag = json['free_guessing_flag'];
    active = json['active'];
    createdBy = json['created_by'];
    modifiedBy = json['modified_by'];
    created = json['created'];
    modified = json['modified'];
    weeks = json['weeks'];
    id = json['id'];
    gameDays = json['game_days'] != null
        ? new GameDays.fromJson(json['game_days'])
        : null;
    loadGame = json['load_game'];
    if (json['game_results'] != null) {
      gameResults = <GameResults>[];
      json['game_results'].forEach((v) {
        gameResults!.add(new GameResults.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ids'] = this.ids;
    data['game_code'] = this.gameCode;
    data['title'] = this.title;
    data['alias_names'] = this.aliasNames;
    data['description'] = this.description;
    data['show_description_flag'] = this.showDescriptionFlag;
    data['game_level'] = this.gameLevel;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['sample_result'] = this.sampleResult;
    data['special_flag'] = this.specialFlag;
    data['holiday_flag'] = this.holidayFlag;
    data['charts_flag'] = this.chartsFlag;
    data['winners_list_flag'] = this.winnersListFlag;
    data['result_post_flag'] = this.resultPostFlag;
    data['online_play_flag'] = this.onlinePlayFlag;
    data['live_flag'] = this.liveFlag;
    data['game_owner_id'] = this.gameOwnerId;
    data['game_bookie_id'] = this.gameBookieId;
    data['free_guessing_flag'] = this.freeGuessingFlag;
    data['active'] = this.active;
    data['created_by'] = this.createdBy;
    data['modified_by'] = this.modifiedBy;
    data['created'] = this.created;
    data['modified'] = this.modified;
    data['weeks'] = this.weeks;
    data['id'] = this.id;
    if (this.gameDays != null) {
      data['game_days'] = this.gameDays!.toJson();
    }
    data['load_game'] = this.loadGame;
    if (this.gameResults != null) {
      data['game_results'] = this.gameResults!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GameDays {
  String? startTime;
  String? endTime;
  String? bookingEndBefore;
  String? gameId;
  String? status;

  GameDays(
      {this.startTime,
      this.endTime,
      this.bookingEndBefore,
      this.gameId,
      this.status});

  GameDays.fromJson(Map<String, dynamic> json) {
    startTime = json['start_time'];
    endTime = json['end_time'];
    bookingEndBefore = json['booking_end_before'];
    gameId = json['game_id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['booking_end_before'] = this.bookingEndBefore;
    data['game_id'] = this.gameId;
    data['status'] = this.status;
    return data;
  }
}

class GameResults {
  int? id;
  int? gameId;
  String? resultDate;
  bool? liveFlag;
  String? patti1;
  String? jodi;
  String? patti2;
  bool? publish;
  String? created;
  String? modified;

  GameResults(
      {this.id,
      this.gameId,
      this.resultDate,
      this.liveFlag,
      this.patti1,
      this.jodi,
      this.patti2,
      this.publish,
      this.created,
      this.modified});

  GameResults.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gameId = json['game_id'];
    resultDate = json['result_date'];
    liveFlag = json['live_flag'];
    patti1 = json['patti1'];
    jodi = json['jodi'];
    patti2 = json['patti2'];
    publish = json['publish'];
    created = json['created'];
    modified = json['modified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['game_id'] = this.gameId;
    data['result_date'] = this.resultDate;
    data['live_flag'] = this.liveFlag;
    data['patti1'] = this.patti1;
    data['jodi'] = this.jodi;
    data['patti2'] = this.patti2;
    data['publish'] = this.publish;
    data['created'] = this.created;
    data['modified'] = this.modified;
    return data;
  }
}
