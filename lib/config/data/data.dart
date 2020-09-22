import 'package:twitter_ui_clone/models/Post.dart';
import 'package:twitter_ui_clone/models/User.dart';

final User currentUser = User(
    name: 'Theressa Emmerich',
    imageUrl:
        'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    userName: '@TheressaEmmerich');
final List<Post> posts = [
  Post(
    user: User(
      name: 'John Wick',
      userName: '@john.wick',
      imageUrl:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      isVerified: true,
    ),
    imageUrl:
        'https://images.unsplash.com/photo-1600676897506-f1035d0371f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    comments: 100,
    likes: 250,
    description:
        'Beauty of nature ❤️️',
    retweets: 1000,
  ),
  Post(
    user: User(
      name: 'Huzaifa Ahmed',
      userName: '@Huzaifaahmed19',
      imageUrl:
          'https://avatars0.githubusercontent.com/u/26674425?s=460&u=ce9011781362c7bea0e4b1f8950d47eab7235158&v=4',
      isVerified: false,
    ),
    imageUrl:
        'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    comments: 100,
    likes: 250,
    description:
        'Experience is the name everyone gives to their mistakes.',
    retweets: 1000,
  ),
  Post(
    user: User(
      name: 'George Martin',
      userName: '@george.martin',
      imageUrl:
          'https://www.gstatic.com/tv/thumb/persons/396502/396502_v9_ba.jpg',
      isVerified: true,
    ),
    imageUrl:
        'https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    comments: 100,
    likes: 250,
    description:
        'A reader lives a thousand lives before he dies',
    retweets: 1000,
  ),
  Post(
    user: User(
      name: 'Steve Jobs',
      userName: '@steve.jobs',
      imageUrl:
          'https://cdn.vox-cdn.com/thumbor/rES5fxTJl-z014NcJV7Rradtxrc=/0x86:706x557/1400x1400/filters:focal(0x86:706x557):format(png)/cdn.vox-cdn.com/imported_assets/847184/stevejobs.png',
      isVerified: true,
    ),
    imageUrl:
        'https://images.unsplash.com/photo-1485988412941-77a35537dae4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1372&q=80',
    comments: 100,
    likes: 250,
    description:
        'Be Productive 😎',
    retweets: 1000,
  ),
];
