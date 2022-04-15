part of 'wakatime_bloc.dart';

enum WakatimeStatus {
  initial,
  success,
  failure,
  inProgress,
}

extension WakatimeStatusX on WakatimeStatus {
  bool get initial => this == WakatimeStatus.initial;
  bool get success => this == WakatimeStatus.success;
  bool get failure => this == WakatimeStatus.failure;
  bool get inProgress => this == WakatimeStatus.inProgress;
}

class WakatimeState extends Equatable {
  const WakatimeState(
      {this.status = WakatimeStatus.initial,
      this.message = '',
      this.wakatimeCodeActivities = const [],
      this.wakatimeLanguages = const []});

  final WakatimeStatus status;
  final String message;
  final List<WakatimeCodeActivity>? wakatimeCodeActivities;
  final List<Language>? wakatimeLanguages;

  @override
  List<Object> get props => [status, message];

  WakatimeState copyWith({
    WakatimeStatus? status,
    String? message,
    List<WakatimeCodeActivity>? wakatimeCodeActivities,
    List<Language>? wakatimeLanguages,
  }) {
    return WakatimeState(
      status: status ?? this.status,
      message: message ?? this.message,
      wakatimeCodeActivities:
          wakatimeCodeActivities ?? this.wakatimeCodeActivities,
      wakatimeLanguages: wakatimeLanguages ?? this.wakatimeLanguages,
    );
  }
}
