import 'dart:convert';

/// A model to represent API error responses.
class ErrorModel {
  /// List of error messages
  final List<String> message;

  /// Actual error message string (from the `error` field)
  final String error;

  /// API error status code
  final int statusCode;

  ErrorModel({
    required this.message,
    required this.error,
    required this.statusCode,
  });

  /// Convert model to a map
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'error': error,
      'statusCode': statusCode,
    };
  }

  /// Construct model from a map
  factory ErrorModel.fromMap(Map<String, dynamic> map) {
    final dynamic rawMessage = map['message'];

    List<String> parsedMessages;
    if (rawMessage is String) {
      parsedMessages = [rawMessage];
    } else if (rawMessage is List) {
      parsedMessages = rawMessage.map((e) => e.toString()).toList();
    } else {
      parsedMessages = ['Unknown error'];
    }

    return ErrorModel(
      message: parsedMessages,
      error: map['error'] as String? ?? 'Unknown error',
      statusCode: map['statusCode'] as int? ?? 500,
    );
  }

  /// Construct model from JSON string
  factory ErrorModel.fromJson(String source) =>
      ErrorModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
