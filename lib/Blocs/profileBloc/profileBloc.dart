import 'package:Dalas/Ui/ReviewDetails.dart';
import 'package:bloc/bloc.dart';
import 'profileEvent.dart';
import 'profileState.dart';

export 'profileEvent.dart';
export 'profileState.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  String _appBarTitle = 'Profile';

  ProfileBloc() : super(ViewReviews());

  String get appBarTitle => _appBarTitle;

  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is SeeReviews)
      yield* _mapSeeReviewsToState();
    else if (event is SeeProfile) yield* _mapSeeProfileToState();
  }

  Stream<ProfileState> _mapSeeReviewsToState() async* {
    yield ViewReviews();
  }

  Stream<ProfileState> _mapSeeProfileToState() async* {
    yield ViewProfile();
  }
}
