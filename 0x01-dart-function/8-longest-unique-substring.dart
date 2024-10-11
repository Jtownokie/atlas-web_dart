String longestUniqueSubstring(String str) {
  Map<String, int> charMap = {};
  int start = 0;
  int maxLength = 0;
  int maxStart = 0;

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    if (charMap.containsKey(currentChar) && charMap[currentChar]! >= start) {
      start = charMap[currentChar]! + 1;
    }

    charMap[currentChar] = end;

    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      maxStart = start;
    }
  }

  return str.substring(maxStart, maxStart + maxLength);
}
