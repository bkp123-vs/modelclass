class Welcome {
  int total;
    int totalHits;
    List<Hit> hits;
    Welcome({
          required this.total,
          required this.totalHits,
          required this.hits,
    });

    
    static Welcome convertToWelcome(Map json) {
    return Welcome(
       total: json['total'],
        totalHits: json['totalHits'],
        hits: json['hits']
    );
  }
  

}


class Hit {

   int id;
    String pageUrl;
    Type type;
    String tags;
    int duration;
    String pictureId;
    Videos videos;
    int views;
    int downloads;
    int likes;
    int comments;
    int userId;
    String user;
    String userImageUrl;
    Hit({
         required this.id,
         required this.pageUrl,
         required this.type,
         required this.tags,
         required this.duration,
         required this.pictureId,
         required this.videos,
         required this.views,
         required this.downloads,
         required this.likes,
         required this.comments,
         required this.userId,
         required this.user,
         required this.userImageUrl,
    });

   

     static Hit convertToHit(Map json)
     {
        return Hit(
            id: json['id'],
            pageUrl: json['pageURL'],
            type: json['type'],
            tags: json['tags'],
            duration: json['duration'],
            pictureId: json['picture_id'],
            videos: json['videos'],
            views: json['views'],
            downloads: json['downloads'],
            likes: json['likes'],
            comments: json['comments'],
            userId: json['user_id'],
            user: json['user'],
            userImageUrl: json['userImageURL'],
        );
    }
   
   

    Map<String, dynamic> toJson() => {
        "id": id,
        "pageURL": pageUrl,
        "type": type,
        "tags": tags,
        "duration": duration,
        "picture_id": pictureId,
        "videos": videos.toJson(),
        "views": views,
        "downloads": downloads,
        "likes": likes,
        "comments": comments,
        "user_id": userId,
        "user": user,
        "userImageURL": userImageUrl,
    };
}


class Videos {

     Large large;
    Large medium;
    Large small;
    Large tiny;
    Videos({
        required this.large,
        required this.medium,
        required this.small,
        required this.tiny,
    });

     static Videos convertToVideos(Map json)
     {
      return Videos(
        large : json['large'],
        medium : json['medium'],
        small: json['small'],
        tiny: json['tiny']
      );
    }

    Map<String, dynamic> toJson() => {
        "large": large,
        "medium": medium,
        "small": small,
        "tiny": tiny,
    };
}

class Large {
    
    String url;
    int width;
    int height;
    int size;
    Large({
        required this.url,
        required this.width,
        required this.height,
        required this.size,
    });

    static Large convertToLarge(Map json){
      return Large(
        url: json['url'], 
        width: json['width'], 
        height: json['height'], 
        size: json['size']
        );
    }

  

    Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
        "size": size,
    };
}


