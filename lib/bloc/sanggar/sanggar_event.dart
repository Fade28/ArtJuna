part of 'sanggar_bloc.dart';

@freezed
class SanggarEvent with _$SanggarEvent {
  const factory SanggarEvent.started() = _Started;
  const factory SanggarEvent.getSanggar() = _GetSanggar;
}
