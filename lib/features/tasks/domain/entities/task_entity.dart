class Task {
  final String title;
  final String description;
  final DateTime date;
  final DateTime timeStart;
  final DateTime timeEnd;
  final bool repeat;
  final List<String> repeatDays;
  final bool lastsAllDay;
  final bool isCompleted;

  // Constructor
  Task({
    required this.title,
    this.description = "",
    required this.date,
    required this.timeStart,
    required this.timeEnd,
    this.repeat = false,
    this.repeatDays = const [],
    this.lastsAllDay = false,
    this.isCompleted = false,
  }) {
    final now = DateTime.now();
    // Logic
    if (date.isBefore(now)) {
      throw FormatException("Please enter a valid date.");
    }
    if (timeStart.isBefore(now) || timeEnd.isBefore(now)) {
      throw FormatException("Please enter a valid time.");
    }
    if (timeStart.isAtSameMomentAs(timeEnd)) {
      throw FormatException(
        "Start time and end time cannot be the same value.",
      );
    }
    if (timeEnd.isBefore(timeStart)) {
      throw FormatException(
        "End time cannot start before start time.",
      );
    }
  }
}
