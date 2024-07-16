```dart
//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY 🇽🇾🇿 GEN - DO NOT MODIFY BY HAND
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

// ignore_for_file: annotate_overrides
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: invalid_null_aware_operator
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_non_null_assertion
// ignore_for_file: unnecessary_null_comparison
// ignore_for_file: unnecessary_this

part of '___CLASS_FILE_NAME___';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ___CLASS___ extends ___SUPER_CLASS___ {
  //
  //
  //

  ___STATIC_KEY_NAMES___

  static const CLASS = '___CLASS___';

  @override
  String get $class => CLASS;

  ___FIELD_DECLARATIONS_A___

  //
  //
  //

  const ___CLASS___({
    ___PARAMS_A1___
  }) ___SUPER_CONSTRUCTOR___;

  //
  //
  //

  factory ___CLASS___.b({
    ___PARAMS_A2___
  }) {
    ___FIELD_ASSERTIONS___
    return ___CLASS___(
      ___ARGS_A___
    );
  }

  //
  //
  //

  factory ___CLASS___.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, '___CLASS___.from: $e');
      rethrow;
    }
  }

  static ___CLASS___? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory ___CLASS___.of(
    ___CLASS___ other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, '___CLASS___.of: $e');
      rethrow;
    }
  }

  static ___CLASS___? ofOrNull(
    ___CLASS___? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }



  //
  //
  //

  factory ___CLASS___.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
     assert(false, '___CLASS___.fromJsonString: $e');
      rethrow;
    }
  }

  static ___CLASS___? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return ___CLASS___.fromJson(decoded);
      } else {
        return ___CLASS___.b();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory ___CLASS___.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, '___CLASS___.fromJson: $e');
      rethrow;
    }
  }

  static ___CLASS___? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      ___FROM_JSON_A1___
      return ___CLASS___(
        ___FROM_JSON_A2___
      );
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory ___CLASS___.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, '___CLASS___.fromUri: $e');
      rethrow;
    }
  }

  static ___CLASS___? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return ___CLASS___.fromJson(uri.queryParameters);
      } else {
        return ___CLASS___.b();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  @override
  Map<String, dynamic> toJson({
    dynamic defaultValue,
    bool includeNulls = false,
  }) {
    try {
      ___TO_JSON_A1___
      final withNulls = <String, dynamic>{
        ___TO_JSON_A2___
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, '___CLASS___.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  ___CLASS___ copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return ___CLASS___.fromJson(c);
  }

  //
  //
  //

  ___GETTERS_A___
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

enum ___CLASS___Fields {
  //
  //
  //

  ___FIELDS___;

  //
  //
  //

  final Field field;

  //
  //
  //

  const ___CLASS___Fields(this.field);
}
```