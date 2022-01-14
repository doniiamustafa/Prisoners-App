abstract class PrisonStates{}
class InitialState extends PrisonStates{}
class LoadingState extends PrisonStates{}
class SuccessState extends PrisonStates{}
class ErrorState extends PrisonStates{ String? error; ErrorState({this.error});}


