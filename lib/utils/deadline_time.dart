/// Formats a duration for deadline labels in the app.
String formatRemainingTime(Duration remaining) {
  if (remaining.isNegative) return '已截止';

  final days = remaining.inDays;
  final hours = remaining.inHours % 24;
  final minutes = remaining.inMinutes % 60;
  final parts = <String>[
    if (days > 0) '$days 天',
    if (hours > 0) '$hours 小时',
    if (minutes > 0) '$minutes 分钟',
  ];

  return parts.isEmpty ? '< 1 分钟' : '${parts.join(' ')}内';
}
