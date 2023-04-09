
/// "https://www.youtube.com/shorts/hKwrn5-7FjQ"  youtube shorts


  // final _controller = YoutubePlayerController(
  //   params: const YoutubePlayerParams(
  //     mute: false,
  //     showControls: true,
  //     showFullscreenButton: true,
  //   ),
  // );

    // controller.cueVideoById(videoId: "Tp_YZNqNBhw");
    // controller.cueVideoById(videoId: videoId);


// &maxResults=30


/// videoCategoryId
// 27  Education
// 28 Science & Technology

// shorts "https://yt.lemnoslife.com/channels?part=shorts&id=UCX6OQ3DkcsbYNE6H8uQQuVA" channelId

//  static String channelId = "UCX6OQ3DkcsbYNE6H8uQQuVA";

  // static String searchEndPoint =
  //     "search?part=snippet&q=$serchQuery&key=$apiKey";



    // searchQuery = "$searchQuery #Shorts";
    // searchQuery = "$searchQuery Shorts";



    // String searchEndPoint = "search?part=snippet&q=$searchQuery&key=$apiKey";



// @LazySingleton(as: HomeFacade)
// class HomeRepository implements HomeFacade {
//   @override
//   dioGet() async {
//   final responsse = await Dio(
//     BaseOptions(
//       baseUrl: Api.baseUrl + Api.searchByCategoryIdEntPoint,
//     ),
//   ).get("");
//   print(responsse.data);
// }

// }



//"https://youtube.googleapis.com/youtube/v3/search?part=snippet&q=sun&regionCode=IN&key=[ApiKey]"


///  ---  channel  ---
/// 
/// https://developers.google.com/youtube/v3/docs/channels/list?apix_params=%7B%22part%22%3A%5B%22snippet%22%5D%2C%22id%22%3A%5B%22UCX6OQ3DkcsbYNE6H8uQQuVA%22%5D%7D



// dioGet() async {
//   final responsse = await Dio(
//     BaseOptions(
//       baseUrl: Api.baseUrl + Api.searchByCategoryIdEntPoint,
//     ),
//   ).get("");
//   print(responsse.data);
// }


// class MainPage extends StatelessWidget {
//   const MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // dioGet();
//     // GetApi();
//     print("qqqq");
//     // BlocProvider.of<ApiBlocBloc>(context).add(const ApiGet());
//     getIt<GetApi>();
//     print("wwwww");
//     return const Placeholder();
//   }
// }

// @injectable
// class GetApi {
//   final DioFacade dioFacade;
//   GetApi(this.dioFacade){
//     dioFacade.dioGet();
//   }
// }



/////////////////////////////////////////////////////
///



    // // You can get IDs from PlaylistItems or Search API
    // const IDs = ["videoID1", "videoID2", "videoID3"];

    // // Get the analytics data of selected videos based on their IDs
    // const { data: analyticsData } = await youtubeAnalytics.reports.query({
    //   ids: "channel==MINE",
    //   startDate: "2019-01-01",
    //   // Today's date
    //   endDate: new Date().toISOString().split("T")[0],
    //   metrics: "views",
    //   dimensions: "video,creatorContentType",
    //   filters: `video==${IDs.join(",")}`,
    //   access_token,
    // });

    
////   Tags--
///
///       // "power button",
          // "turn off",
          // "updates",
          // "update",
          // "pc",
          // "computer",
          // "mythbusters",
          // "mythbuster",
          // "ltt",
///  



/////////////
///
///  youtube api video category id list --
/// 
// 2 - Autos & Vehicles
// 1 -  Film & Animation
// 10 - Music
// 15 - Pets & Animals
// 17 - Sports
// 18 - Short Movies
// 19 - Travel & Events
// 20 - Gaming
// 21 - Videoblogging
// 22 - People & Blogs
// 23 - Comedy
// 24 - Entertainment
// 25 - News & Politics
// 26 - Howto & Style
// 27 - Education
// 28 - Science & Technology
// 29 - Nonprofits & Activism
// 30 - Movies
// 31 - Anime/Animation
// 32 - Action/Adventure
// 33 - Classics
// 34 - Comedy
// 35 - Documentary
// 36 - Drama
// 37 - Family
// 38 - Foreign
// 39 - Horror
// 40 - Sci-Fi/Fantasy
// 41 - Thriller
// 42 - Shorts
// 43 - Shows
// 44 - Trailers


// From  youtube upload page
//     2 - Cars & Vehicles
//     23 - Comedy
//     27 - Education
//     24 - Entertainment
//     1 - Film & Animation
//     20 - Gaming
//     26 - How-to & Style
//     10 - Music
//     25 - News & Politics
//     29 - Non-profits & Activism
//     22 - People & Blogs
//     15 - Pets & Animals
//     28 - Science & Technology
//     17 - Sport
//     19 - Travel & Events



// Edited
//  on Sep 24, 2018 • 
// 1 Film & Animation
// 2 Autos & Vehicles
// 10 Music
// 15 Pets & Animals
// 17 Sports
// 18 Short Movies
// 19 Travel & Events
// 20 Gaming
// 21 Videoblogging
// 22 People & Blogs
// 23 Comedy
// 24 Entertainment
// 25 News & Politics
// 26 Howto & Style
// 27 Education
// 28 Science & Technology
// 29 Nonprofits & Activism
// 30 Movies
// 31 Anime/Animation
// 32 Action/Adventure
// 33 Classics
// 34 Comedy
// 35 Documentary
// 36 Drama
// 37 Family
// 38 Foreign
// 39 Horror
// 40 Sci-Fi/Fantasy
// 41 Thriller
// 42 Shorts
// 43 Shows
// 44 Trailers

// And this is array for query:

// let cats = ['', 'Film & Animation', 'Autos & Vehicles', '', '', '', '', '', '', '', 'Music', '', '', '', '', 'Pets & Animals', '', 'Sports', 'Short Movies', 'Travel & Events', 'Gaming', 'Videoblogging', 'People & Blogs', 'Comedy', 'Entertainment', 'News & Politics', 'Howto & Style', 'Education', 'Science & Technology', 'Nonprofits & Activism', 'Movies', 'Anime/Animation', 'Action/Adventure', 'Classics', 'Comedy', 'Documentary', 'Drama', 'Family', 'Foreign', 'Horror', 'Sci-Fi/Fantasy', 'Thriller', 'Shorts', 'Shows', 'Trailers']

// console.log(cats[10]); // Music

// https://www.googleapis.com/youtube/v3/videoCategories?part=snippet&regionCode=IN&key=[apiKey]



///  Search By videoCategoryId
/// https://youtube.googleapis.com/youtube/v3/search?part=snippet&type=video&videoCategoryId=1&key=[YOUR_API_KEY]


/// Videos By videoCategoryId
/// https://youtube.googleapis.com/youtube/v3/videos?part=snippet&chart=mostPopular&videoCategoryId=28&key=[YOUR_API_KEY]


///  get Tags from videos
/// https://www.googleapis.com/youtube/v3/videos?key=[ApiKey]&fields=items(snippet(tags))&part=snippet&chart=mostPopular

/// get Tags ans Description from videos
/// https://www.googleapis.com/youtube/v3/videos?key=[ApiKey]&fields=items(snippet(description,tags))&part=snippet&chart=mostPopular


///  videos videoategeryId, pageToken, maxResult
/// https://youtube.googleapis.com/youtube/v3/videos?part=snippet&chart=mostPopular&maxResults=30&pageToken=CAUQAA&videoCategoryId=28&key=[YOUR_API_KEY]


/////  https://yt.lemnoslife.com/
///
///   upcoming, community, status By channelId
/// Channels: list: https://yt.lemnoslife.com/channels?part=status,upcomingEvents,shorts,community,channels,about,approval,playlists&cId=C_ID&id=CHANNEL_ID&handle=HANDLE

/// search 
///  https://yt.lemnoslife.com/search?part=id,snippet&q=QUERY&channelId=CHANNEL_ID&eventType=upcoming&hashtag=HASH_TAG&type=video&order=viewCount,relevance(&pageToken=PAGE_TOKEN)

/// coment thread 
///  CommentThreads: list: https://yt.lemnoslife.com/commentThreads?part=snippet,replies&videoId=VIDEO_ID&order=relevance,time(&pageToken=PAGE_TOKEN)

/// videos 
/// https://yt.lemnoslife.com/videos?part=id,status,contentDetails,music,short,impressions,musics,isPaidPromotion,isPremium,isMemberOnly,mostReplayed,qualities,chapters,isOriginal,isRestricted&id=VIDEO_ID&clipId=CLIP_ID&SAPISIDHASH=YOUR_SAPISIDHASH



























































































