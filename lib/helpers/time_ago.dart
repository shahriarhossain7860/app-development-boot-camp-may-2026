extension TimeStringExtension on String {
  String timeAgo() {
    try {
      final date = DateTime.parse(this);
      final now = DateTime.now();
      final difference = now.difference(date);

      // 👉 Ensure positive duration
      final diff = difference.isNegative ? Duration.zero : difference;

      if (diff.inSeconds < 60) {
        return diff.inSeconds <= 1
            ? '1 second'
            : '${diff.inSeconds} seconds';
      } else if (diff.inMinutes < 60) {
        return diff.inMinutes == 1
            ? '1 min'
            : '${diff.inMinutes} mins';
      } else if (diff.inHours < 24) {
        return diff.inHours == 1
            ? '1 hour'
            : '${diff.inHours} hours';
      } else if (diff.inDays < 30) {
        return diff.inDays == 1
            ? '1 day'
            : '${diff.inDays} days';
      } else if (diff.inDays < 365) {
        final months = (diff.inDays / 30).floor();
        return months == 1 ? '1 month' : '$months months';
      } else {
        final years = (diff.inDays / 365).floor();
        return years == 1 ? '1 year' : '$years years';
      }
    } catch (_) {
      return 'Invalid date';
    }
  }
}
