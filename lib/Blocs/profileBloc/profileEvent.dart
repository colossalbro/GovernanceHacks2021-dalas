import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ProfileEvent extends Equatable {
  final String attr;

  ProfileEvent({required this.attr});

  @override
  List<Object> get props => [attr];
}

class SeeReviews extends ProfileEvent {
  SeeReviews() : super(attr: 'reviews');
}

class SeeProfile extends ProfileEvent {
  SeeProfile() : super(attr: 'profile');
}
