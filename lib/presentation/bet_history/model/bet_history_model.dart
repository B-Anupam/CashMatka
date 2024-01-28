class GameHistoryModel {
  List<History>? history;
  Pages? pages;

  GameHistoryModel({this.history, this.pages});

  GameHistoryModel.fromJson(Map<String, dynamic> json) {
    if (json['history'] != null) {
      history = <History>[];
      json['history'].forEach((v) {
        history!.add(new History.fromJson(v));
      });
    }
    pages = json['pages'] != null ? new Pages.fromJson(json['pages']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.history != null) {
      data['history'] = this.history!.map((v) => v.toJson()).toList();
    }
    if (this.pages != null) {
      data['pages'] = this.pages!.toJson();
    }
    return data;
  }
}

class History {
  int? id;
  int? userId;
  int? gameId;
  String? gameDate;
  String? gameOpenType;
  String? gameResultLevel;
  String? gameDigit;
  int? points;
  int? unitMark;
  String? unitPoints;
  bool? passed;
  bool? pointsTransfered;
  bool? cancelled;
  String? created;
  String? modified;
  Game? game;

  History(
      {this.id,
      this.userId,
      this.gameId,
      this.gameDate,
      this.gameOpenType,
      this.gameResultLevel,
      this.gameDigit,
      this.points,
      this.unitMark,
      this.unitPoints,
      this.passed,
      this.pointsTransfered,
      this.cancelled,
      this.created,
      this.modified,
      this.game});

  History.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    gameId = json['game_id'];
    gameDate = json['game_date'];
    gameOpenType = json['game_open_type'];
    gameResultLevel = json['game_result_level'];
    gameDigit = json['game_digit'];
    points = json['points'];
    unitMark = json['unit_mark'];
    unitPoints = json['unit_points'].toString();
    passed = json['passed'];
    pointsTransfered = json['points_transfered'];
    cancelled = json['cancelled'];
    created = json['created'];
    modified = json['modified'];
    game = json['game'] != null ? new Game.fromJson(json['game']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['game_id'] = this.gameId;
    data['game_date'] = this.gameDate;
    data['game_open_type'] = this.gameOpenType;
    data['game_result_level'] = this.gameResultLevel;
    data['game_digit'] = this.gameDigit;
    data['points'] = this.points;
    data['unit_mark'] = this.unitMark;
    data['unit_points'] = this.unitPoints;
    data['passed'] = this.passed;
    data['points_transfered'] = this.pointsTransfered;
    data['cancelled'] = this.cancelled;
    data['created'] = this.created;
    data['modified'] = this.modified;
    if (this.game != null) {
      data['game'] = this.game!.toJson();
    }
    return data;
  }
}

class Game {
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
  String? gameBookieId;
  bool? freeGuessingFlag;
  int? active;
  String? createdBy;
  String? modifiedBy;
  String? created;
  String? modified;
  String? weeks;
  int? id;

  Game(
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
      this.id});

  Game.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class Pages {
  String? finder;
  int? page;
  int? current;
  int? count;
  int? perPage;
  bool? prevPage;
  bool? nextPage;
  int? pageCount;
  String? sort;
  String? direction;
  String? limit;
  String? sortDefault;
  String? directionDefault;
  String? scope;
  CompleteSort? completeSort;

  Pages(
      {this.finder,
      this.page,
      this.current,
      this.count,
      this.perPage,
      this.prevPage,
      this.nextPage,
      this.pageCount,
      this.sort,
      this.direction,
      this.limit,
      this.sortDefault,
      this.directionDefault,
      this.scope,
      this.completeSort});

  Pages.fromJson(Map<String, dynamic> json) {
    finder = json['finder'];
    page = json['page'];
    current = json['current'];
    count = json['count'];
    perPage = json['perPage'];
    prevPage = json['prevPage'];
    nextPage = json['nextPage'];
    pageCount = json['pageCount'];
    sort = json['sort'];
    direction = json['direction'];
    limit = json['limit'];
    sortDefault = json['sortDefault'];
    directionDefault = json['directionDefault'];
    scope = json['scope'];
    completeSort = json['completeSort'] != null
        ? new CompleteSort.fromJson(json['completeSort'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['finder'] = this.finder;
    data['page'] = this.page;
    data['current'] = this.current;
    data['count'] = this.count;
    data['perPage'] = this.perPage;
    data['prevPage'] = this.prevPage;
    data['nextPage'] = this.nextPage;
    data['pageCount'] = this.pageCount;
    data['sort'] = this.sort;
    data['direction'] = this.direction;
    data['limit'] = this.limit;
    data['sortDefault'] = this.sortDefault;
    data['directionDefault'] = this.directionDefault;
    data['scope'] = this.scope;
    if (this.completeSort != null) {
      data['completeSort'] = this.completeSort!.toJson();
    }
    return data;
  }
}

class CompleteSort {
  String? userGamesId;

  CompleteSort({this.userGamesId});

  CompleteSort.fromJson(Map<String, dynamic> json) {
    userGamesId = json['UserGames.id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserGames.id'] = this.userGamesId;
    return data;
  }
}
