String maskEmail(String email) {
  if (!email.contains('@')) return email; // fallback if invalid

  final parts = email.split('@');
  final username = parts[0];
  final domain = parts[1];

  if (username.length <= 2) {
    // very short username
    return '${username[0]}*****@$domain';
  } else {
    // show first 3 chars, then stars
    final visible = username.substring(0, 3);
    return '$visible*****@$domain';
  }
}
