import 'package:equatable/equatable.dart';

class IndividualHeaderIdentifier with EquatableMixin {
  static final headerUserAgent = IndividualHeaderIdentifier('header:User-Agent:asText');
  static final headerMdn = IndividualHeaderIdentifier('header:Disposition-Notification-To:asText');
  static final headerCalendarEvent = IndividualHeaderIdentifier('header:X-MEETING-UID:asText');
  static final acceptLanguageHeader = IndividualHeaderIdentifier('header:Accept-Language:asText');
  static final contentLanguageHeader = IndividualHeaderIdentifier('header:Content-Language:asText');

  final String value;

  IndividualHeaderIdentifier(this.value);

  @override
  List<Object> get props => [value];
}