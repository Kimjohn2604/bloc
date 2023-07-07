class BlocState {
  final bool isLoading;
  final bool isSuccess;
  final bool isFailure;
  factory BlocState.initial() {
    return BlocState(isLoading: false, isSuccess: false, isFailure: true);
  }
  factory BlocState.loading() {
    return BlocState(isLoading: true, isSuccess: false, isFailure: false);
  }
  factory BlocState.success() {
    return BlocState(isLoading: false, isSuccess: true, isFailure: false);
  }
  factory BlocState.failure() {
    return BlocState(isLoading: false, isSuccess: false, isFailure: true);
  }
  BlocState({
    required this.isLoading,
    required this.isSuccess,
    required this.isFailure,
  });
}
