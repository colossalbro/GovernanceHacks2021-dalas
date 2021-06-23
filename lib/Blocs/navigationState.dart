import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CurrentPage extends Equatable {
  final int pageNum;

  CurrentPage({required this.pageNum});

  @override
  List<Object> get props => [pageNum];

  int get PageNumber => pageNum;
}

class HomePage extends CurrentPage {
  HomePage() : super(pageNum: 0);
}

class WatchListPage extends CurrentPage {
  WatchListPage() : super(pageNum: 1);
}

class FeedsPage extends CurrentPage {
  FeedsPage() : super(pageNum: 2);
}

class PostReviewPage extends CurrentPage {
  PostReviewPage() : super(pageNum: 3);
}
