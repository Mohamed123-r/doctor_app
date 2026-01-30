import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../home/data/models/specializations_response_model.dart';
part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = Loading;
  const factory SearchState.loaded({required List<Doctors?>? doctors}) = Loaded;
  const factory SearchState.error({required String message}) = Error;

}