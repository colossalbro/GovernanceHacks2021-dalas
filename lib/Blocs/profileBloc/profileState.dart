import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ProfileState extends Equatable {
  final String profile;

  ProfileState({required this.profile});

  @override
  List<Object> get props => [profile];
}

class ViewReviews extends ProfileState {
  ViewReviews() : super(profile: 'reviews');
}

class ViewProfile extends ProfileState {
  ViewProfile() : super(profile: 'profile');
}
