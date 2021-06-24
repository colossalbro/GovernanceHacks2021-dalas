import 'package:flutter_bloc/flutter_bloc.dart';

import '../Blocs/navigationBloc/navBloc.dart';
export '../Blocs/navigationBloc/navigationEvent.dart';
export '../Blocs/navigationBloc/navigationState.dart';

import '../Blocs/profileBloc/profileBloc.dart';
import '../Blocs/profileBloc/profileEvent.dart';
import '../Blocs/profileBloc/profileState.dart';

export '../Blocs/profileBloc/profileEvent.dart';
export '../Blocs/profileBloc/profileState.dart';

NavigationBloc kNavBloc = NavigationBloc();
ProfileBloc kProfileBloc = ProfileBloc();
