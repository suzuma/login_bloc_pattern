part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

//SE DISPARA ANTES DE QUE LA APP SE LANZA
class AppLoaded extends AuthenticationEvent {}

//SE DISPARA CUANDO EL USUARIO SE LOGUEA
class UserLoggedIn extends AuthenticationEvent {
  final User user;
  UserLoggedIn({@required this.user});

  @override
  List<Object> get props => [user];
}

//SE DISPARA CUANDO EL USUARIO CIERRA SESION
class UserLoggedOut extends AuthenticationEvent {}
