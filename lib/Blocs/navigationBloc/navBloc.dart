import 'package:Dalas/Ui/watchlist.dart';
import 'package:bloc/bloc.dart';
import 'navigationEvent.dart';
import 'navigationState.dart';

export 'navigationState.dart';
export 'navigationEvent.dart';

class NavigationBloc extends Bloc<PageEvent, CurrentPage> {
  String _appBarTitle = 'Home';
  bool _showBars = false;

  NavigationBloc() : super(OnBoardingPage());

  String get appBarTitle => _appBarTitle;

  bool get showBars => _showBars;

  @override
  Stream<CurrentPage> mapEventToState(PageEvent event) async* {
    if (event is GoHome)
      yield* _mapHomePageToState(event);
    else if (event is GoFeed)
      yield* _mapFeedsPageToState(event);
    else if (event is GoWatchList)
      yield* _mapWatchListToState(event);
    else if (event is PostReview)
      yield* _mapPostReviewToState(event);
    else if (event is LaunchOnboarding)
      yield* _mapOnBoardingToState(event);
    else if (event is GoLogin)
      yield* _mapLoginToState(event);
    else if (event is GoPersonalProfile)
      yield* _mapPersonalProfileToState(event);
  }

  Stream<CurrentPage> _mapHomePageToState(GoHome event) async* {
    _showBars = true;
    _appBarTitle = 'Home';
    yield HomePage();
  }

  Stream<CurrentPage> _mapFeedsPageToState(GoFeed event) async* {
    _showBars = true;
    _appBarTitle = 'Feeds';
    yield FeedsPage();
  }

  Stream<CurrentPage> _mapWatchListToState(GoWatchList event) async* {
    _showBars = true;
    _appBarTitle = 'Watchlist';
    yield WatchListPage();
  }

  Stream<CurrentPage> _mapPostReviewToState(PostReview event) async* {
    _appBarTitle = 'Post Review';
    yield PostReviewPage();
  }

  Stream<CurrentPage> _mapOnBoardingToState(LaunchOnboarding event) async* {
    _showBars = false;
    yield OnBoardingPage();
  }

  Stream<CurrentPage> _mapLoginToState(GoLogin event) async* {
    _showBars = false;
    yield LoginPage();
  }

  Stream<CurrentPage> _mapPersonalProfileToState(
      GoPersonalProfile event) async* {
    _showBars = true;
    _appBarTitle = 'Profile Page';
    yield PersonalProfilePage();
  }
}
