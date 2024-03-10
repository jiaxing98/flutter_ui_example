import 'package:flutter_ui_example/movie/constants/images.dart';
import 'package:flutter_ui_example/movie/models/actor_model.dart';
import 'package:flutter_ui_example/movie/models/movie_model.dart';

class MovieData {
  static const List<MovieModel> movies = [
    MovieModel(
        movieName: 'Joker',
        stars: 4,
        director: 'Todd Phillips',
        imageUrl: MovieImages.imgJoker,
        rating: 9.0,
        genres: ['Crime', 'Drama'],
        cast: [
          ActorModel(name: 'Joaquin Pheonix', imageUrl: 'assets/user6.jpg'),
          ActorModel(name: 'Robert De Niro', imageUrl: 'assets/user5.jpg'),
          ActorModel(name: 'Zazie Beetz', imageUrl: 'assets/user3.jpg'),
          ActorModel(name: 'Frances Conroy', imageUrl: 'assets/user8.jpg')
        ],
        description:
            'Joker is a 2019 American psychological thriller film directed and produced by Todd Phillips, who co-wrote the screenplay with Scott Silver. The film, based on DC Comics characters, stars Joaquin Phoenix as the Joker and provides a possible origin story for the character. Set in 1981, it follows Arthur Fleck, a failed clown and stand-up comedian whose descent into insanity and nihilism inspires a violent counter-cultural revolution against the wealthy in a decaying Gotham City. Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Glenn Fleshler, Bill Camp, Shea Whigham, and Marc Maron appear in supporting roles. Joker was produced by Warner Bros. Pictures, DC Films, and Joint Effort, in association with Bron Creative and Village Roadshow Pictures, and distributed by Warner Bros.'),
    MovieModel(
        movieName: 'The Hustle',
        stars: 4,
        director: 'Chris Addison',
        imageUrl: MovieImages.imgHustle,
        rating: 9.0,
        genres: ['Crime', 'Thriller'],
        cast: [
          ActorModel(name: 'Rebel Wilson', imageUrl: 'assets/user1.jpg'),
          ActorModel(name: 'Anne Hathaway', imageUrl: 'assets/user2.jpg'),
          ActorModel(name: 'Alex Sharp', imageUrl: 'assets/user7.jpg'),
          ActorModel(name: 'Ingrid Oliver', imageUrl: 'assets/user4.jpg')
        ],
        description:
            'Josephine Chesterfield is a glamorous, seductive British woman who has a penchant for defrauding gullible men out of their money. Into her well-ordered, meticulous world comes Penny Rust, a cunning and fun-loving Australian woman who lives to swindle unsuspecting marks. Despite their different methods, the two grifters soon join forces for the ultimate score -- a young and naive tech billionaire in the South of France.'),
    MovieModel(
        movieName: 'Good Boys',
        stars: 4,
        director: 'Gene Stupnitsky',
        imageUrl: MovieImages.imgGoodBoys,
        rating: 9.0,
        genres: ['Adventure', 'Comedy'],
        cast: [
          ActorModel(name: 'Jacob Tremblay', imageUrl: 'assets/user5.jpg'),
          ActorModel(name: 'Keith L Williams', imageUrl: 'assets/user6.jpg'),
          ActorModel(name: 'Brady Noon', imageUrl: 'assets/user8.jpg'),
          ActorModel(name: 'Molly Gordon', imageUrl: 'assets/user4.jpg')
        ],
        description:
            "Invited to his first kissing party, 12-year-old Max asks his best friends Lucas and Thor for some much-needed help on how to pucker up. When they hit a dead end, Max decides to use his father's drone to spy on the teenage girls next door. When the boys lose the drone, they skip school and hatch a plan to retrieve it before Max's dad can figure out what happened."),
    MovieModel(
        movieName: 'Once Upon A Time in Hollywood',
        director: 'Quentin Tarantino',
        stars: 4,
        imageUrl: MovieImages.imgHollywood,
        rating: 9.0,
        genres: ['Comedy', 'Drama'],
        cast: [
          ActorModel(name: 'Brad Pitt', imageUrl: 'assets/user6.jpg'),
          ActorModel(name: 'Leonardo DiCaprio', imageUrl: 'assets/user7.jpg'),
          ActorModel(name: 'Margot Robbie', imageUrl: 'assets/user3.jpg'),
          ActorModel(name: 'Dakota Fanning', imageUrl: 'assets/user4.jpg')
        ],
        description:
            'Rick, a washed-out actor, and Cliff, his stunt double, struggle to recapture fame and success in 1960s Los Angeles. Meanwhile, living next door to Rick is Sharon Tate and her husband Roman Polanski.')
  ];
}
