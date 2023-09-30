part of 'authentication_cubit.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();


}

final class AuthenticationInitial extends AuthenticationState {
   @override
  List<Object> get props => [];
  
}

final class AuthenticationLoading extends AuthenticationState {
   @override
  List<Object> get props => [];
  
}

final class AuthenticationSuccess extends AuthenticationState {
   @override
  List<Object> get props => [];
  
}

final class AuthenticationError extends AuthenticationState {
   @override
  List<Object> get props => [];
  
}
