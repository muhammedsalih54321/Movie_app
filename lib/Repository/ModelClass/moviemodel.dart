
class MovieModel {
    List<Titles>? titles;
    List<Suggestions>? suggestions;

    MovieModel({this.titles, this.suggestions});

    MovieModel.fromJson(Map<String, dynamic> json) {
        if(json["titles"] is List) {
            titles = json["titles"] == null ? null : (json["titles"] as List).map((e) => Titles.fromJson(e)).toList();
        }
        if(json["suggestions"] is List) {
            suggestions = json["suggestions"] == null ? null : (json["suggestions"] as List).map((e) => Suggestions.fromJson(e)).toList();
        }
    }

    static List<MovieModel> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => MovieModel.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(titles != null) {
            _data["titles"] = titles?.map((e) => e.toJson()).toList();
        }
        if(suggestions != null) {
            _data["suggestions"] = suggestions?.map((e) => e.toJson()).toList();
        }
        return _data;
    }

    MovieModel copyWith({
        List<Titles>? titles,
        List<Suggestions>? suggestions,
    }) => MovieModel(
        titles: titles ?? this.titles,
        suggestions: suggestions ?? this.suggestions,
    );
}

class Suggestions {
    Summary1? summary;

    Suggestions({this.summary});

    Suggestions.fromJson(Map<String, dynamic> json) {
        if(json["summary"] is Map) {
            summary = json["summary"] == null ? null : Summary1.fromJson(json["summary"]);
        }
    }

    static List<Suggestions> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Suggestions.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(summary != null) {
            _data["summary"] = summary?.toJson();
        }
        return _data;
    }

    Suggestions copyWith({
        Summary1? summary,
    }) => Suggestions(
        summary: summary ?? this.summary,
    );
}

class Summary1 {
    String? unifiedEntityId;
    dynamic id;
    String? type;
    String? entityId;
    String? name;
    bool? isTitleGroup;
    dynamic matchedlocale;

    Summary1({this.unifiedEntityId, this.id, this.type, this.entityId, this.name, this.isTitleGroup, this.matchedlocale});

    Summary1.fromJson(Map<String, dynamic> json) {
        if(json["unifiedEntityId"] is String) {
            unifiedEntityId = json["unifiedEntityId"];
        }
        id = json["id"];
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["entityId"] is String) {
            entityId = json["entityId"];
        }
        if(json["name"] is String) {
            name = json["name"];
        }
        if(json["isTitleGroup"] is bool) {
            isTitleGroup = json["isTitleGroup"];
        }
        matchedlocale = json["matchedlocale"];
    }

    static List<Summary1> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Summary1.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["unifiedEntityId"] = unifiedEntityId;
        _data["id"] = id;
        _data["type"] = type;
        _data["entityId"] = entityId;
        _data["name"] = name;
        _data["isTitleGroup"] = isTitleGroup;
        _data["matchedlocale"] = matchedlocale;
        return _data;
    }

    Summary1 copyWith({
        String? unifiedEntityId,
        dynamic id,
        String? type,
        String? entityId,
        String? name,
        bool? isTitleGroup,
        dynamic matchedlocale,
    }) => Summary1(
        unifiedEntityId: unifiedEntityId ?? this.unifiedEntityId,
        id: id ?? this.id,
        type: type ?? this.type,
        entityId: entityId ?? this.entityId,
        name: name ?? this.name,
        isTitleGroup: isTitleGroup ?? this.isTitleGroup,
        matchedlocale: matchedlocale ?? this.matchedlocale,
    );
}

class Titles {
    Availability? availability;
    bool? inRemindMeList;
    Queue? queue;
    Summary? summary;
    int? episodeCount;
    JawSummary? jawSummary;

    Titles({this.availability, this.inRemindMeList, this.queue, this.summary, this.episodeCount, this.jawSummary});

    Titles.fromJson(Map<String, dynamic> json) {
        if(json["availability"] is Map) {
            availability = json["availability"] == null ? null : Availability.fromJson(json["availability"]);
        }
        if(json["inRemindMeList"] is bool) {
            inRemindMeList = json["inRemindMeList"];
        }
        if(json["queue"] is Map) {
            queue = json["queue"] == null ? null : Queue.fromJson(json["queue"]);
        }
        if(json["summary"] is Map) {
            summary = json["summary"] == null ? null : Summary.fromJson(json["summary"]);
        }
        if(json["episodeCount"] is num) {
            episodeCount = (json["episodeCount"] as num).toInt();
        }
        if(json["jawSummary"] is Map) {
            jawSummary = json["jawSummary"] == null ? null : JawSummary.fromJson(json["jawSummary"]);
        }
    }

    static List<Titles> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Titles.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(availability != null) {
            _data["availability"] = availability?.toJson();
        }
        _data["inRemindMeList"] = inRemindMeList;
        if(queue != null) {
            _data["queue"] = queue?.toJson();
        }
        if(summary != null) {
            _data["summary"] = summary?.toJson();
        }
        _data["episodeCount"] = episodeCount;
        if(jawSummary != null) {
            _data["jawSummary"] = jawSummary?.toJson();
        }
        return _data;
    }

    Titles copyWith({
        Availability? availability,
        bool? inRemindMeList,
        Queue? queue,
        Summary? summary,
        int? episodeCount,
        JawSummary? jawSummary,
    }) => Titles(
        availability: availability ?? this.availability,
        inRemindMeList: inRemindMeList ?? this.inRemindMeList,
        queue: queue ?? this.queue,
        summary: summary ?? this.summary,
        episodeCount: episodeCount ?? this.episodeCount,
        jawSummary: jawSummary ?? this.jawSummary,
    );
}

class JawSummary {
    TrackIds? trackIds;
    List<Tags>? tags;
    List<Cast>? cast;
    List<Creators>? creators;
    List<dynamic>? directors;
    List<dynamic>? writers;
    List<Genres>? genres;
    Availability1? availability;
    ContextualSynopsis? contextualSynopsis;
    CurrentContextualSynopsis? currentContextualSynopsis;
    Maturity? maturity;
    String? unifiedEntityId;
    int? id;
    String? type;
    bool? isOriginal;
    LiveEvent1? liveEvent;
    int? videoId;
    String? requestId;
    String? userRatingRequestId;
    String? title;
    dynamic copyright;
    int? releaseYear;
    bool? watched;
    bool? hasAudioDescription;
    String? synopsis;
    String? synopsisRegular;
    bool? hasSensitiveMetaData;
    Delivery? delivery;
    TitleMaturity? titleMaturity;
    Broadcaster? broadcaster;
    TrailerSummary? trailerSummary;
    String? supplementalMessageIcon;
    VideoMerch? videoMerch;
    String? seasonAbbr;
    int? seasonCount;
    String? numSeasonsLabel;
    int? episodeCount;
    String? episodeTitle;
    LogoImage? logoImage;
    BackgroundImage? backgroundImage;

    JawSummary({this.trackIds, this.tags, this.cast, this.creators, this.directors, this.writers, this.genres, this.availability, this.contextualSynopsis, this.currentContextualSynopsis, this.maturity, this.unifiedEntityId, this.id, this.type, this.isOriginal, this.liveEvent, this.videoId, this.requestId, this.userRatingRequestId, this.title, this.copyright, this.releaseYear, this.watched, this.hasAudioDescription, this.synopsis, this.synopsisRegular, this.hasSensitiveMetaData, this.delivery, this.titleMaturity, this.broadcaster, this.trailerSummary, this.supplementalMessageIcon, this.videoMerch, this.seasonAbbr, this.seasonCount, this.numSeasonsLabel, this.episodeCount, this.episodeTitle, this.logoImage, this.backgroundImage});

    JawSummary.fromJson(Map<String, dynamic> json) {
        if(json["trackIds"] is Map) {
            trackIds = json["trackIds"] == null ? null : TrackIds.fromJson(json["trackIds"]);
        }
        if(json["tags"] is List) {
            tags = json["tags"] == null ? null : (json["tags"] as List).map((e) => Tags.fromJson(e)).toList();
        }
        if(json["cast"] is List) {
            cast = json["cast"] == null ? null : (json["cast"] as List).map((e) => Cast.fromJson(e)).toList();
        }
        if(json["creators"] is List) {
            creators = json["creators"] == null ? null : (json["creators"] as List).map((e) => Creators.fromJson(e)).toList();
        }
        if(json["directors"] is List) {
            directors = json["directors"] ?? [];
        }
        if(json["writers"] is List) {
            writers = json["writers"] ?? [];
        }
        if(json["genres"] is List) {
            genres = json["genres"] == null ? null : (json["genres"] as List).map((e) => Genres.fromJson(e)).toList();
        }
        if(json["availability"] is Map) {
            availability = json["availability"] == null ? null : Availability1.fromJson(json["availability"]);
        }
        if(json["contextualSynopsis"] is Map) {
            contextualSynopsis = json["contextualSynopsis"] == null ? null : ContextualSynopsis.fromJson(json["contextualSynopsis"]);
        }
        if(json["currentContextualSynopsis"] is Map) {
            currentContextualSynopsis = json["currentContextualSynopsis"] == null ? null : CurrentContextualSynopsis.fromJson(json["currentContextualSynopsis"]);
        }
        if(json["maturity"] is Map) {
            maturity = json["maturity"] == null ? null : Maturity.fromJson(json["maturity"]);
        }
        if(json["unifiedEntityId"] is String) {
            unifiedEntityId = json["unifiedEntityId"];
        }
        if(json["id"] is num) {
            id = (json["id"] as num).toInt();
        }
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["isOriginal"] is bool) {
            isOriginal = json["isOriginal"];
        }
        if(json["liveEvent"] is Map) {
            liveEvent = json["liveEvent"] == null ? null : LiveEvent1.fromJson(json["liveEvent"]);
        }
        if(json["videoId"] is num) {
            videoId = (json["videoId"] as num).toInt();
        }
        if(json["requestId"] is String) {
            requestId = json["requestId"];
        }
        if(json["userRatingRequestId"] is String) {
            userRatingRequestId = json["userRatingRequestId"];
        }
        if(json["title"] is String) {
            title = json["title"];
        }
        copyright = json["copyright"];
        if(json["releaseYear"] is num) {
            releaseYear = (json["releaseYear"] as num).toInt();
        }
        if(json["watched"] is bool) {
            watched = json["watched"];
        }
        if(json["hasAudioDescription"] is bool) {
            hasAudioDescription = json["hasAudioDescription"];
        }
        if(json["synopsis"] is String) {
            synopsis = json["synopsis"];
        }
        if(json["synopsisRegular"] is String) {
            synopsisRegular = json["synopsisRegular"];
        }
        if(json["hasSensitiveMetaData"] is bool) {
            hasSensitiveMetaData = json["hasSensitiveMetaData"];
        }
        if(json["delivery"] is Map) {
            delivery = json["delivery"] == null ? null : Delivery.fromJson(json["delivery"]);
        }
        if(json["titleMaturity"] is Map) {
            titleMaturity = json["titleMaturity"] == null ? null : TitleMaturity.fromJson(json["titleMaturity"]);
        }
        if(json["broadcaster"] is Map) {
            broadcaster = json["broadcaster"] == null ? null : Broadcaster.fromJson(json["broadcaster"]);
        }
        if(json["trailerSummary"] is Map) {
            trailerSummary = json["trailerSummary"] == null ? null : TrailerSummary.fromJson(json["trailerSummary"]);
        }
        if(json["supplementalMessageIcon"] is String) {
            supplementalMessageIcon = json["supplementalMessageIcon"];
        }
        if(json["videoMerch"] is Map) {
            videoMerch = json["videoMerch"] == null ? null : VideoMerch.fromJson(json["videoMerch"]);
        }
        if(json["seasonAbbr"] is String) {
            seasonAbbr = json["seasonAbbr"];
        }
        if(json["seasonCount"] is num) {
            seasonCount = (json["seasonCount"] as num).toInt();
        }
        if(json["numSeasonsLabel"] is String) {
            numSeasonsLabel = json["numSeasonsLabel"];
        }
        if(json["episodeCount"] is num) {
            episodeCount = (json["episodeCount"] as num).toInt();
        }
        if(json["episodeTitle"] is String) {
            episodeTitle = json["episodeTitle"];
        }
        if(json["logoImage"] is Map) {
            logoImage = json["logoImage"] == null ? null : LogoImage.fromJson(json["logoImage"]);
        }
        if(json["backgroundImage"] is Map) {
            backgroundImage = json["backgroundImage"] == null ? null : BackgroundImage.fromJson(json["backgroundImage"]);
        }
    }

    static List<JawSummary> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => JawSummary.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(trackIds != null) {
            _data["trackIds"] = trackIds?.toJson();
        }
        if(tags != null) {
            _data["tags"] = tags?.map((e) => e.toJson()).toList();
        }
        if(cast != null) {
            _data["cast"] = cast?.map((e) => e.toJson()).toList();
        }
        if(creators != null) {
            _data["creators"] = creators?.map((e) => e.toJson()).toList();
        }
        if(directors != null) {
            _data["directors"] = directors;
        }
        if(writers != null) {
            _data["writers"] = writers;
        }
        if(genres != null) {
            _data["genres"] = genres?.map((e) => e.toJson()).toList();
        }
        if(availability != null) {
            _data["availability"] = availability?.toJson();
        }
        if(contextualSynopsis != null) {
            _data["contextualSynopsis"] = contextualSynopsis?.toJson();
        }
        if(currentContextualSynopsis != null) {
            _data["currentContextualSynopsis"] = currentContextualSynopsis?.toJson();
        }
        if(maturity != null) {
            _data["maturity"] = maturity?.toJson();
        }
        _data["unifiedEntityId"] = unifiedEntityId;
        _data["id"] = id;
        _data["type"] = type;
        _data["isOriginal"] = isOriginal;
        if(liveEvent != null) {
            _data["liveEvent"] = liveEvent?.toJson();
        }
        _data["videoId"] = videoId;
        _data["requestId"] = requestId;
        _data["userRatingRequestId"] = userRatingRequestId;
        _data["title"] = title;
        _data["copyright"] = copyright;
        _data["releaseYear"] = releaseYear;
        _data["watched"] = watched;
        _data["hasAudioDescription"] = hasAudioDescription;
        _data["synopsis"] = synopsis;
        _data["synopsisRegular"] = synopsisRegular;
        _data["hasSensitiveMetaData"] = hasSensitiveMetaData;
        if(delivery != null) {
            _data["delivery"] = delivery?.toJson();
        }
        if(titleMaturity != null) {
            _data["titleMaturity"] = titleMaturity?.toJson();
        }
        if(broadcaster != null) {
            _data["broadcaster"] = broadcaster?.toJson();
        }
        if(trailerSummary != null) {
            _data["trailerSummary"] = trailerSummary?.toJson();
        }
        _data["supplementalMessageIcon"] = supplementalMessageIcon;
        if(videoMerch != null) {
            _data["videoMerch"] = videoMerch?.toJson();
        }
        _data["seasonAbbr"] = seasonAbbr;
        _data["seasonCount"] = seasonCount;
        _data["numSeasonsLabel"] = numSeasonsLabel;
        _data["episodeCount"] = episodeCount;
        _data["episodeTitle"] = episodeTitle;
        if(logoImage != null) {
            _data["logoImage"] = logoImage?.toJson();
        }
        if(backgroundImage != null) {
            _data["backgroundImage"] = backgroundImage?.toJson();
        }
        return _data;
    }

    JawSummary copyWith({
        TrackIds? trackIds,
        List<Tags>? tags,
        List<Cast>? cast,
        List<Creators>? creators,
        List<dynamic>? directors,
        List<dynamic>? writers,
        List<Genres>? genres,
        Availability1? availability,
        ContextualSynopsis? contextualSynopsis,
        CurrentContextualSynopsis? currentContextualSynopsis,
        Maturity? maturity,
        String? unifiedEntityId,
        int? id,
        String? type,
        bool? isOriginal,
        LiveEvent1? liveEvent,
        int? videoId,
        String? requestId,
        String? userRatingRequestId,
        String? title,
        dynamic copyright,
        int? releaseYear,
        bool? watched,
        bool? hasAudioDescription,
        String? synopsis,
        String? synopsisRegular,
        bool? hasSensitiveMetaData,
        Delivery? delivery,
        TitleMaturity? titleMaturity,
        Broadcaster? broadcaster,
        TrailerSummary? trailerSummary,
        String? supplementalMessageIcon,
        VideoMerch? videoMerch,
        String? seasonAbbr,
        int? seasonCount,
        String? numSeasonsLabel,
        int? episodeCount,
        String? episodeTitle,
        LogoImage? logoImage,
        BackgroundImage? backgroundImage,
    }) => JawSummary(
        trackIds: trackIds ?? this.trackIds,
        tags: tags ?? this.tags,
        cast: cast ?? this.cast,
        creators: creators ?? this.creators,
        directors: directors ?? this.directors,
        writers: writers ?? this.writers,
        genres: genres ?? this.genres,
        availability: availability ?? this.availability,
        contextualSynopsis: contextualSynopsis ?? this.contextualSynopsis,
        currentContextualSynopsis: currentContextualSynopsis ?? this.currentContextualSynopsis,
        maturity: maturity ?? this.maturity,
        unifiedEntityId: unifiedEntityId ?? this.unifiedEntityId,
        id: id ?? this.id,
        type: type ?? this.type,
        isOriginal: isOriginal ?? this.isOriginal,
        liveEvent: liveEvent ?? this.liveEvent,
        videoId: videoId ?? this.videoId,
        requestId: requestId ?? this.requestId,
        userRatingRequestId: userRatingRequestId ?? this.userRatingRequestId,
        title: title ?? this.title,
        copyright: copyright ?? this.copyright,
        releaseYear: releaseYear ?? this.releaseYear,
        watched: watched ?? this.watched,
        hasAudioDescription: hasAudioDescription ?? this.hasAudioDescription,
        synopsis: synopsis ?? this.synopsis,
        synopsisRegular: synopsisRegular ?? this.synopsisRegular,
        hasSensitiveMetaData: hasSensitiveMetaData ?? this.hasSensitiveMetaData,
        delivery: delivery ?? this.delivery,
        titleMaturity: titleMaturity ?? this.titleMaturity,
        broadcaster: broadcaster ?? this.broadcaster,
        trailerSummary: trailerSummary ?? this.trailerSummary,
        supplementalMessageIcon: supplementalMessageIcon ?? this.supplementalMessageIcon,
        videoMerch: videoMerch ?? this.videoMerch,
        seasonAbbr: seasonAbbr ?? this.seasonAbbr,
        seasonCount: seasonCount ?? this.seasonCount,
        numSeasonsLabel: numSeasonsLabel ?? this.numSeasonsLabel,
        episodeCount: episodeCount ?? this.episodeCount,
        episodeTitle: episodeTitle ?? this.episodeTitle,
        logoImage: logoImage ?? this.logoImage,
        backgroundImage: backgroundImage ?? this.backgroundImage,
    );
}

class BackgroundImage {
    String? videoId;
    String? url;
    int? width;
    int? height;
    String? imageKey;

    BackgroundImage({this.videoId, this.url, this.width, this.height, this.imageKey});

    BackgroundImage.fromJson(Map<String, dynamic> json) {
        if(json["videoId"] is String) {
            videoId = json["videoId"];
        }
        if(json["url"] is String) {
            url = json["url"];
        }
        if(json["width"] is num) {
            width = (json["width"] as num).toInt();
        }
        if(json["height"] is num) {
            height = (json["height"] as num).toInt();
        }
        if(json["image_key"] is String) {
            imageKey = json["image_key"];
        }
    }

    static List<BackgroundImage> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => BackgroundImage.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["videoId"] = videoId;
        _data["url"] = url;
        _data["width"] = width;
        _data["height"] = height;
        _data["image_key"] = imageKey;
        return _data;
    }

    BackgroundImage copyWith({
        String? videoId,
        String? url,
        int? width,
        int? height,
        String? imageKey,
    }) => BackgroundImage(
        videoId: videoId ?? this.videoId,
        url: url ?? this.url,
        width: width ?? this.width,
        height: height ?? this.height,
        imageKey: imageKey ?? this.imageKey,
    );
}

class LogoImage {
    int? videoId;
    String? url;
    String? type;
    int? width;
    int? height;
    String? extension;
    String? size;
    String? imageKey;

    LogoImage({this.videoId, this.url, this.type, this.width, this.height, this.extension, this.size, this.imageKey});

    LogoImage.fromJson(Map<String, dynamic> json) {
        if(json["videoId"] is num) {
            videoId = (json["videoId"] as num).toInt();
        }
        if(json["url"] is String) {
            url = json["url"];
        }
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["width"] is num) {
            width = (json["width"] as num).toInt();
        }
        if(json["height"] is num) {
            height = (json["height"] as num).toInt();
        }
        if(json["extension"] is String) {
            extension = json["extension"];
        }
        if(json["size"] is String) {
            size = json["size"];
        }
        if(json["imageKey"] is String) {
            imageKey = json["imageKey"];
        }
    }

    static List<LogoImage> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => LogoImage.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["videoId"] = videoId;
        _data["url"] = url;
        _data["type"] = type;
        _data["width"] = width;
        _data["height"] = height;
        _data["extension"] = extension;
        _data["size"] = size;
        _data["imageKey"] = imageKey;
        return _data;
    }

    LogoImage copyWith({
        int? videoId,
        String? url,
        String? type,
        int? width,
        int? height,
        String? extension,
        String? size,
        String? imageKey,
    }) => LogoImage(
        videoId: videoId ?? this.videoId,
        url: url ?? this.url,
        type: type ?? this.type,
        width: width ?? this.width,
        height: height ?? this.height,
        extension: extension ?? this.extension,
        size: size ?? this.size,
        imageKey: imageKey ?? this.imageKey,
    );
}

class VideoMerch {
    String? unifiedEntityId;
    int? videoId;
    int? id;
    int? start;
    String? computeId;

    VideoMerch({this.unifiedEntityId, this.videoId, this.id, this.start, this.computeId});

    VideoMerch.fromJson(Map<String, dynamic> json) {
        if(json["unifiedEntityId"] is String) {
            unifiedEntityId = json["unifiedEntityId"];
        }
        if(json["videoId"] is num) {
            videoId = (json["videoId"] as num).toInt();
        }
        if(json["id"] is num) {
            id = (json["id"] as num).toInt();
        }
        if(json["start"] is num) {
            start = (json["start"] as num).toInt();
        }
        if(json["computeId"] is String) {
            computeId = json["computeId"];
        }
    }

    static List<VideoMerch> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => VideoMerch.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["unifiedEntityId"] = unifiedEntityId;
        _data["videoId"] = videoId;
        _data["id"] = id;
        _data["start"] = start;
        _data["computeId"] = computeId;
        return _data;
    }

    VideoMerch copyWith({
        String? unifiedEntityId,
        int? videoId,
        int? id,
        int? start,
        String? computeId,
    }) => VideoMerch(
        unifiedEntityId: unifiedEntityId ?? this.unifiedEntityId,
        videoId: videoId ?? this.videoId,
        id: id ?? this.id,
        start: start ?? this.start,
        computeId: computeId ?? this.computeId,
    );
}

class TrailerSummary {
    int? length;

    TrailerSummary({this.length});

    TrailerSummary.fromJson(Map<String, dynamic> json) {
        if(json["length"] is num) {
            length = (json["length"] as num).toInt();
        }
    }

    static List<TrailerSummary> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => TrailerSummary.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["length"] = length;
        return _data;
    }

    TrailerSummary copyWith({
        int? length,
    }) => TrailerSummary(
        length: length ?? this.length,
    );
}

class Broadcaster {
    dynamic broadcasterName;

    Broadcaster({this.broadcasterName});

    Broadcaster.fromJson(Map<String, dynamic> json) {
        broadcasterName = json["broadcasterName"];
    }

    static List<Broadcaster> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Broadcaster.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["broadcasterName"] = broadcasterName;
        return _data;
    }

    Broadcaster copyWith({
        dynamic broadcasterName,
    }) => Broadcaster(
        broadcasterName: broadcasterName ?? this.broadcasterName,
    );
}

class TitleMaturity {
    int? level;

    TitleMaturity({this.level});

    TitleMaturity.fromJson(Map<String, dynamic> json) {
        if(json["level"] is num) {
            level = (json["level"] as num).toInt();
        }
    }

    static List<TitleMaturity> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => TitleMaturity.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["level"] = level;
        return _data;
    }

    TitleMaturity copyWith({
        int? level,
    }) => TitleMaturity(
        level: level ?? this.level,
    );
}

class Delivery {
    bool? has3D;
    bool? hasHd;
    bool? hasUltraHd;
    bool? hasHdr;
    bool? hasDolbyVision;
    bool? hasDolbyAtmos;
    bool? has51Audio;
    String? quality;
    bool? hasAudioAssistive;
    bool? hasTextClosedCaptions;
    bool? hasAudioSpatial;

    Delivery({this.has3D, this.hasHd, this.hasUltraHd, this.hasHdr, this.hasDolbyVision, this.hasDolbyAtmos, this.has51Audio, this.quality, this.hasAudioAssistive, this.hasTextClosedCaptions, this.hasAudioSpatial});

    Delivery.fromJson(Map<String, dynamic> json) {
        if(json["has3D"] is bool) {
            has3D = json["has3D"];
        }
        if(json["hasHD"] is bool) {
            hasHd = json["hasHD"];
        }
        if(json["hasUltraHD"] is bool) {
            hasUltraHd = json["hasUltraHD"];
        }
        if(json["hasHDR"] is bool) {
            hasHdr = json["hasHDR"];
        }
        if(json["hasDolbyVision"] is bool) {
            hasDolbyVision = json["hasDolbyVision"];
        }
        if(json["hasDolbyAtmos"] is bool) {
            hasDolbyAtmos = json["hasDolbyAtmos"];
        }
        if(json["has51Audio"] is bool) {
            has51Audio = json["has51Audio"];
        }
        if(json["quality"] is String) {
            quality = json["quality"];
        }
        if(json["hasAudioAssistive"] is bool) {
            hasAudioAssistive = json["hasAudioAssistive"];
        }
        if(json["hasTextClosedCaptions"] is bool) {
            hasTextClosedCaptions = json["hasTextClosedCaptions"];
        }
        if(json["hasAudioSpatial"] is bool) {
            hasAudioSpatial = json["hasAudioSpatial"];
        }
    }

    static List<Delivery> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Delivery.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["has3D"] = has3D;
        _data["hasHD"] = hasHd;
        _data["hasUltraHD"] = hasUltraHd;
        _data["hasHDR"] = hasHdr;
        _data["hasDolbyVision"] = hasDolbyVision;
        _data["hasDolbyAtmos"] = hasDolbyAtmos;
        _data["has51Audio"] = has51Audio;
        _data["quality"] = quality;
        _data["hasAudioAssistive"] = hasAudioAssistive;
        _data["hasTextClosedCaptions"] = hasTextClosedCaptions;
        _data["hasAudioSpatial"] = hasAudioSpatial;
        return _data;
    }

    Delivery copyWith({
        bool? has3D,
        bool? hasHd,
        bool? hasUltraHd,
        bool? hasHdr,
        bool? hasDolbyVision,
        bool? hasDolbyAtmos,
        bool? has51Audio,
        String? quality,
        bool? hasAudioAssistive,
        bool? hasTextClosedCaptions,
        bool? hasAudioSpatial,
    }) => Delivery(
        has3D: has3D ?? this.has3D,
        hasHd: hasHd ?? this.hasHd,
        hasUltraHd: hasUltraHd ?? this.hasUltraHd,
        hasHdr: hasHdr ?? this.hasHdr,
        hasDolbyVision: hasDolbyVision ?? this.hasDolbyVision,
        hasDolbyAtmos: hasDolbyAtmos ?? this.hasDolbyAtmos,
        has51Audio: has51Audio ?? this.has51Audio,
        quality: quality ?? this.quality,
        hasAudioAssistive: hasAudioAssistive ?? this.hasAudioAssistive,
        hasTextClosedCaptions: hasTextClosedCaptions ?? this.hasTextClosedCaptions,
        hasAudioSpatial: hasAudioSpatial ?? this.hasAudioSpatial,
    );
}

class LiveEvent1 {
    LiveEvent1();

    LiveEvent1.fromJson(Map<String, dynamic> json) {

    }

    static List<LiveEvent1> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => LiveEvent1.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};

        return _data;
    }

    
}

class Maturity {
    Rating? rating;

    Maturity({this.rating});

    Maturity.fromJson(Map<String, dynamic> json) {
        if(json["rating"] is Map) {
            rating = json["rating"] == null ? null : Rating.fromJson(json["rating"]);
        }
    }

    static List<Maturity> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Maturity.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(rating != null) {
            _data["rating"] = rating?.toJson();
        }
        return _data;
    }

    Maturity copyWith({
        Rating? rating,
    }) => Maturity(
        rating: rating ?? this.rating,
    );
}

class Rating {
    String? value;
    String? maturityDescription;
    String? specificRatingReason;
    int? maturityLevel;
    String? board;
    int? boardId;
    int? ratingId;
    List<Reasons>? reasons;

    Rating({this.value, this.maturityDescription, this.specificRatingReason, this.maturityLevel, this.board, this.boardId, this.ratingId, this.reasons});

    Rating.fromJson(Map<String, dynamic> json) {
        if(json["value"] is String) {
            value = json["value"];
        }
        if(json["maturityDescription"] is String) {
            maturityDescription = json["maturityDescription"];
        }
        if(json["specificRatingReason"] is String) {
            specificRatingReason = json["specificRatingReason"];
        }
        if(json["maturityLevel"] is num) {
            maturityLevel = (json["maturityLevel"] as num).toInt();
        }
        if(json["board"] is String) {
            board = json["board"];
        }
        if(json["boardId"] is num) {
            boardId = (json["boardId"] as num).toInt();
        }
        if(json["ratingId"] is num) {
            ratingId = (json["ratingId"] as num).toInt();
        }
        if(json["reasons"] is List) {
            reasons = json["reasons"] == null ? null : (json["reasons"] as List).map((e) => Reasons.fromJson(e)).toList();
        }
    }

    static List<Rating> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Rating.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["value"] = value;
        _data["maturityDescription"] = maturityDescription;
        _data["specificRatingReason"] = specificRatingReason;
        _data["maturityLevel"] = maturityLevel;
        _data["board"] = board;
        _data["boardId"] = boardId;
        _data["ratingId"] = ratingId;
        if(reasons != null) {
            _data["reasons"] = reasons?.map((e) => e.toJson()).toList();
        }
        return _data;
    }

    Rating copyWith({
        String? value,
        String? maturityDescription,
        String? specificRatingReason,
        int? maturityLevel,
        String? board,
        int? boardId,
        int? ratingId,
        List<Reasons>? reasons,
    }) => Rating(
        value: value ?? this.value,
        maturityDescription: maturityDescription ?? this.maturityDescription,
        specificRatingReason: specificRatingReason ?? this.specificRatingReason,
        maturityLevel: maturityLevel ?? this.maturityLevel,
        board: board ?? this.board,
        boardId: boardId ?? this.boardId,
        ratingId: ratingId ?? this.ratingId,
        reasons: reasons ?? this.reasons,
    );
}

class Reasons {
    int? id;
    dynamic levelDescription;
    String? reasonDescription;

    Reasons({this.id, this.levelDescription, this.reasonDescription});

    Reasons.fromJson(Map<String, dynamic> json) {
        if(json["id"] is num) {
            id = (json["id"] as num).toInt();
        }
        levelDescription = json["levelDescription"];
        if(json["reasonDescription"] is String) {
            reasonDescription = json["reasonDescription"];
        }
    }

    static List<Reasons> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Reasons.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["levelDescription"] = levelDescription;
        _data["reasonDescription"] = reasonDescription;
        return _data;
    }

    Reasons copyWith({
        int? id,
        dynamic levelDescription,
        String? reasonDescription,
    }) => Reasons(
        id: id ?? this.id,
        levelDescription: levelDescription ?? this.levelDescription,
        reasonDescription: reasonDescription ?? this.reasonDescription,
    );
}

class CurrentContextualSynopsis {
    String? text;
    String? evidenceKey;

    CurrentContextualSynopsis({this.text, this.evidenceKey});

    CurrentContextualSynopsis.fromJson(Map<String, dynamic> json) {
        if(json["text"] is String) {
            text = json["text"];
        }
        if(json["evidenceKey"] is String) {
            evidenceKey = json["evidenceKey"];
        }
    }

    static List<CurrentContextualSynopsis> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => CurrentContextualSynopsis.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["text"] = text;
        _data["evidenceKey"] = evidenceKey;
        return _data;
    }

    CurrentContextualSynopsis copyWith({
        String? text,
        String? evidenceKey,
    }) => CurrentContextualSynopsis(
        text: text ?? this.text,
        evidenceKey: evidenceKey ?? this.evidenceKey,
    );
}

class ContextualSynopsis {
    String? text;
    String? evidenceKey;

    ContextualSynopsis({this.text, this.evidenceKey});

    ContextualSynopsis.fromJson(Map<String, dynamic> json) {
        if(json["text"] is String) {
            text = json["text"];
        }
        if(json["evidenceKey"] is String) {
            evidenceKey = json["evidenceKey"];
        }
    }

    static List<ContextualSynopsis> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => ContextualSynopsis.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["text"] = text;
        _data["evidenceKey"] = evidenceKey;
        return _data;
    }

    ContextualSynopsis copyWith({
        String? text,
        String? evidenceKey,
    }) => ContextualSynopsis(
        text: text ?? this.text,
        evidenceKey: evidenceKey ?? this.evidenceKey,
    );
}

class Availability1 {
    bool? isPlayable;
    String? availabilityDate;
    int? availabilityStartTime;
    dynamic unplayableCause;

    Availability1({this.isPlayable, this.availabilityDate, this.availabilityStartTime, this.unplayableCause});

    Availability1.fromJson(Map<String, dynamic> json) {
        if(json["isPlayable"] is bool) {
            isPlayable = json["isPlayable"];
        }
        if(json["availabilityDate"] is String) {
            availabilityDate = json["availabilityDate"];
        }
        if(json["availabilityStartTime"] is num) {
            availabilityStartTime = (json["availabilityStartTime"] as num).toInt();
        }
        unplayableCause = json["unplayableCause"];
    }

    static List<Availability1> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Availability1.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["isPlayable"] = isPlayable;
        _data["availabilityDate"] = availabilityDate;
        _data["availabilityStartTime"] = availabilityStartTime;
        _data["unplayableCause"] = unplayableCause;
        return _data;
    }

    Availability1 copyWith({
        bool? isPlayable,
        String? availabilityDate,
        int? availabilityStartTime,
        dynamic unplayableCause,
    }) => Availability1(
        isPlayable: isPlayable ?? this.isPlayable,
        availabilityDate: availabilityDate ?? this.availabilityDate,
        availabilityStartTime: availabilityStartTime ?? this.availabilityStartTime,
        unplayableCause: unplayableCause ?? this.unplayableCause,
    );
}

class Genres {
    int? id;
    String? name;

    Genres({this.id, this.name});

    Genres.fromJson(Map<String, dynamic> json) {
        if(json["id"] is num) {
            id = (json["id"] as num).toInt();
        }
        if(json["name"] is String) {
            name = json["name"];
        }
    }

    static List<Genres> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Genres.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["name"] = name;
        return _data;
    }

    Genres copyWith({
        int? id,
        String? name,
    }) => Genres(
        id: id ?? this.id,
        name: name ?? this.name,
    );
}

class Creators {
    int? id;
    String? name;

    Creators({this.id, this.name});

    Creators.fromJson(Map<String, dynamic> json) {
        if(json["id"] is num) {
            id = (json["id"] as num).toInt();
        }
        if(json["name"] is String) {
            name = json["name"];
        }
    }

    static List<Creators> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Creators.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["name"] = name;
        return _data;
    }

    Creators copyWith({
        int? id,
        String? name,
    }) => Creators(
        id: id ?? this.id,
        name: name ?? this.name,
    );
}

class Cast {
    int? id;
    String? name;

    Cast({this.id, this.name});

    Cast.fromJson(Map<String, dynamic> json) {
        if(json["id"] is num) {
            id = (json["id"] as num).toInt();
        }
        if(json["name"] is String) {
            name = json["name"];
        }
    }

    static List<Cast> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Cast.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["name"] = name;
        return _data;
    }

    Cast copyWith({
        int? id,
        String? name,
    }) => Cast(
        id: id ?? this.id,
        name: name ?? this.name,
    );
}

class Tags {
    int? id;
    String? name;

    Tags({this.id, this.name});

    Tags.fromJson(Map<String, dynamic> json) {
        if(json["id"] is num) {
            id = (json["id"] as num).toInt();
        }
        if(json["name"] is String) {
            name = json["name"];
        }
    }

    static List<Tags> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Tags.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["name"] = name;
        return _data;
    }

    Tags copyWith({
        int? id,
        String? name,
    }) => Tags(
        id: id ?? this.id,
        name: name ?? this.name,
    );
}

class TrackIds {
    int? videoId;
    int? trackIdJaw;
    int? trackIdJawEpisode;
    int? trackIdJawTrailer;
    int? trackId;

    TrackIds({this.videoId, this.trackIdJaw, this.trackIdJawEpisode, this.trackIdJawTrailer, this.trackId});

    TrackIds.fromJson(Map<String, dynamic> json) {
        if(json["videoId"] is num) {
            videoId = (json["videoId"] as num).toInt();
        }
        if(json["trackId_jaw"] is num) {
            trackIdJaw = (json["trackId_jaw"] as num).toInt();
        }
        if(json["trackId_jawEpisode"] is num) {
            trackIdJawEpisode = (json["trackId_jawEpisode"] as num).toInt();
        }
        if(json["trackId_jawTrailer"] is num) {
            trackIdJawTrailer = (json["trackId_jawTrailer"] as num).toInt();
        }
        if(json["trackId"] is num) {
            trackId = (json["trackId"] as num).toInt();
        }
    }

    static List<TrackIds> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => TrackIds.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["videoId"] = videoId;
        _data["trackId_jaw"] = trackIdJaw;
        _data["trackId_jawEpisode"] = trackIdJawEpisode;
        _data["trackId_jawTrailer"] = trackIdJawTrailer;
        _data["trackId"] = trackId;
        return _data;
    }

    TrackIds copyWith({
        int? videoId,
        int? trackIdJaw,
        int? trackIdJawEpisode,
        int? trackIdJawTrailer,
        int? trackId,
    }) => TrackIds(
        videoId: videoId ?? this.videoId,
        trackIdJaw: trackIdJaw ?? this.trackIdJaw,
        trackIdJawEpisode: trackIdJawEpisode ?? this.trackIdJawEpisode,
        trackIdJawTrailer: trackIdJawTrailer ?? this.trackIdJawTrailer,
        trackId: trackId ?? this.trackId,
    );
}

class Summary {
    String? type;
    String? unifiedEntityId;
    int? id;
    bool? isOriginal;
    LiveEvent? liveEvent;

    Summary({this.type, this.unifiedEntityId, this.id, this.isOriginal, this.liveEvent});

    Summary.fromJson(Map<String, dynamic> json) {
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["unifiedEntityId"] is String) {
            unifiedEntityId = json["unifiedEntityId"];
        }
        if(json["id"] is num) {
            id = (json["id"] as num).toInt();
        }
        if(json["isOriginal"] is bool) {
            isOriginal = json["isOriginal"];
        }
        if(json["liveEvent"] is Map) {
            liveEvent = json["liveEvent"] == null ? null : LiveEvent.fromJson(json["liveEvent"]);
        }
    }

    static List<Summary> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Summary.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["type"] = type;
        _data["unifiedEntityId"] = unifiedEntityId;
        _data["id"] = id;
        _data["isOriginal"] = isOriginal;
        if(liveEvent != null) {
            _data["liveEvent"] = liveEvent?.toJson();
        }
        return _data;
    }

    Summary copyWith({
        String? type,
        String? unifiedEntityId,
        int? id,
        bool? isOriginal,
        LiveEvent? liveEvent,
    }) => Summary(
        type: type ?? this.type,
        unifiedEntityId: unifiedEntityId ?? this.unifiedEntityId,
        id: id ?? this.id,
        isOriginal: isOriginal ?? this.isOriginal,
        liveEvent: liveEvent ?? this.liveEvent,
    );
}

class LiveEvent {
    bool? hasLiveEvent;

    LiveEvent({this.hasLiveEvent});

    LiveEvent.fromJson(Map<String, dynamic> json) {
        if(json["hasLiveEvent"] is bool) {
            hasLiveEvent = json["hasLiveEvent"];
        }
    }

    static List<LiveEvent> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => LiveEvent.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["hasLiveEvent"] = hasLiveEvent;
        return _data;
    }

    LiveEvent copyWith({
        bool? hasLiveEvent,
    }) => LiveEvent(
        hasLiveEvent: hasLiveEvent ?? this.hasLiveEvent,
    );
}

class Queue {
    bool? available;
    bool? inQueue;

    Queue({this.available, this.inQueue});

    Queue.fromJson(Map<String, dynamic> json) {
        if(json["available"] is bool) {
            available = json["available"];
        }
        if(json["inQueue"] is bool) {
            inQueue = json["inQueue"];
        }
    }

    static List<Queue> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Queue.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["available"] = available;
        _data["inQueue"] = inQueue;
        return _data;
    }

    Queue copyWith({
        bool? available,
        bool? inQueue,
    }) => Queue(
        available: available ?? this.available,
        inQueue: inQueue ?? this.inQueue,
    );
}

class Availability {
    bool? isPlayable;
    String? availabilityDate;
    int? availabilityStartTime;
    dynamic unplayableCause;

    Availability({this.isPlayable, this.availabilityDate, this.availabilityStartTime, this.unplayableCause});

    Availability.fromJson(Map<String, dynamic> json) {
        if(json["isPlayable"] is bool) {
            isPlayable = json["isPlayable"];
        }
        if(json["availabilityDate"] is String) {
            availabilityDate = json["availabilityDate"];
        }
        if(json["availabilityStartTime"] is num) {
            availabilityStartTime = (json["availabilityStartTime"] as num).toInt();
        }
        unplayableCause = json["unplayableCause"];
    }

    static List<Availability> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Availability.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["isPlayable"] = isPlayable;
        _data["availabilityDate"] = availabilityDate;
        _data["availabilityStartTime"] = availabilityStartTime;
        _data["unplayableCause"] = unplayableCause;
        return _data;
    }

    Availability copyWith({
        bool? isPlayable,
        String? availabilityDate,
        int? availabilityStartTime,
        dynamic unplayableCause,
    }) => Availability(
        isPlayable: isPlayable ?? this.isPlayable,
        availabilityDate: availabilityDate ?? this.availabilityDate,
        availabilityStartTime: availabilityStartTime ?? this.availabilityStartTime,
        unplayableCause: unplayableCause ?? this.unplayableCause,
    );
}