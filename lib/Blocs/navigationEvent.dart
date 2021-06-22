import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class PageEvent extends Equatable {
  final int pageIndex;

  PageEvent({required this.pageIndex});

  @override
  List<Object> get props => [pageIndex];
}

class GoHome extends PageEvent {
  GoHome() : super(pageIndex: 0);
}

class GoWatchList extends PageEvent {
  GoWatchList() : super(pageIndex: 1);
}

class GoFeed extends PageEvent {
  GoFeed() : super(pageIndex: 2);
}
