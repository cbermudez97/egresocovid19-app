part of 'patient_egreso_edit_bloc.dart';

@freezed
class PatientEgresoEditEvent with _$PatientEgresoEditEvent {
  const factory PatientEgresoEditEvent.fetch(String patientId) = _Fetch;
}
