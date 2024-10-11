String longestPalindrome(String s) {
  if (s.isEmpty) return "";

  if (s.length < 3) return 'none';

  int start = 0;
  int maxLength = 1;

  String expandAroundCenter(String s, int left, int right) {
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      left--;
      right++;
    }
    return s.substring(left + 1, right);
  }

  for (int i = 0; i < s.length; i++) {
    String oddPalindrome = expandAroundCenter(s, i, i);
    if (oddPalindrome.length > maxLength) {
      maxLength = oddPalindrome.length;
      start = i - (maxLength - 1) ~/ 2;
    }

    String evenPalindrome = expandAroundCenter(s, i, i + 1);
    if (evenPalindrome.length > maxLength) {
      maxLength = evenPalindrome.length;
      start = i - (maxLength ~/ 2) + 1;
    }
  }

  if (s.substring(start, start + maxLength).length < 3) return 'none';

  return s.substring(start, start + maxLength);
}
