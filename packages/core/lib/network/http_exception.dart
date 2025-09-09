import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:localization/localization.dart';

part 'http_exception.freezed.dart';

@freezed
sealed class HttpException with _$HttpException implements Exception {
  const factory HttpException.notFound([String? message]) = NotFoundException;
  const factory HttpException.noData(int code, [String? message]) =
      NoDataException;
  const factory HttpException.typeMismatch([String? message]) =
      TypeMismatchException;
  const factory HttpException.server(int code, [String? message]) =
      ServerException;
  const factory HttpException.noInternet() = NoInternetException;
  const factory HttpException.badRequest([String? message]) =
      BadRequestException;
  const factory HttpException.unauthorised(int code, [String? message]) =
      UnauthorisedException;
  const factory HttpException.timeout() = TimeoutException;
  const factory HttpException.cancel() = CancelException;
  const factory HttpException.unknown([int? code, String? message]) =
      UnknownException;
}

extension HttpMessage on HttpException {
  String message(AppLocalization l10n) =>
      whenOrNull(
        notFound: (msg) => msg ?? l10n.notFoundException,
        noData: (_, msg) => msg ?? l10n.noDataException,
        typeMismatch: (msg) => msg ?? l10n.typeMismatchException,
        server: (_, msg) => msg ?? l10n.serverException,
        noInternet: () => l10n.noInternetException,
        badRequest: (msg) => msg ?? l10n.badRequestException,
        unauthorised: (_, msg) => msg ?? l10n.unauthorisedException,
        timeout: () => l10n.timeoutException,
        cancel: () => l10n.cancelException,
        unknown: (_, msg) => msg ?? l10n.unknownException,
      ) ??
      l10n.unknownException;

  int? get code => whenOrNull(
        notFound: (_) => 404,
        noData: (code, _) => code,
        typeMismatch: (_) => 200,
        server: (code, _) => code,
        badRequest: (_) => 400,
        unauthorised: (code, _) => code,
        unknown: (code, _) => code,
        // noInternet, timeout, cancel: no code
      );
}
