import 'package:Dalas/Ui/watchlist.dart';
import 'package:bloc/bloc.dart';
import 'navigationEvent.dart';
import 'navigationState.dart';

export 'navigationState.dart';
export 'navigationEvent.dart';

class NavigationBloc extends Bloc<PageEvent, CurrentPage> {
  String _appBarTitle = 'Home';

  NavigationBloc() : super(HomePage());

  String get appBarTitle => _appBarTitle;

  @override
  Stream<CurrentPage> mapEventToState(PageEvent event) async* {
    if (event is GoHome)
      yield* _mapHomePageToState(event);
    else if (event is GoFeed)
      yield* _mapFeedsPageToState(event);
    else if (event is GoWatchList) yield* _mapWatchListToState(event);
  }

  Stream<CurrentPage> _mapHomePageToState(GoHome event) async* {
    _appBarTitle = 'Home';
    yield HomePage();
  }

  Stream<CurrentPage> _mapFeedsPageToState(GoFeed event) async* {
    _appBarTitle = 'Feeds';
    yield FeedsPage();
  }

  Stream<CurrentPage> _mapWatchListToState(GoWatchList event) async* {
    _appBarTitle = 'Watchlist';
    yield WatchListPage();
  }
}
