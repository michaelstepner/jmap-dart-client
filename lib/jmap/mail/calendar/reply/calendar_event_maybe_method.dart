import 'package:jmap_dart_client/http/converter/account_id_converter.dart';
import 'package:jmap_dart_client/http/converter/id_converter.dart';
import 'package:jmap_dart_client/jmap/core/capability/capability_identifier.dart';
import 'package:jmap_dart_client/jmap/core/method/request/calendar_event_reply_method.dart';
import 'package:jmap_dart_client/jmap/core/request/request_invocation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'calendar_event_maybe_method.g.dart';

@JsonSerializable(converters: [
  AccountIdConverter(),
  IdConverter(),
])
class CalendarEventMaybeMethod extends CalendarEventReplyMethod {
  CalendarEventMaybeMethod(super.accountId, {required super.blobIds});

  @override
  MethodName get methodName => MethodName('CalendarEvent/maybe');

  @override
  Set<CapabilityIdentifier> get requiredCapabilities => {
    CapabilityIdentifier.jmapCore,
    CapabilityIdentifier.jamesCalendarEvent
  };

  @override
  Map<String, dynamic> toJson() => _$CalendarEventMaybeMethodToJson(this);
}