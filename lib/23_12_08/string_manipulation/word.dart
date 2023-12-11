class Word {
  String word = '';

  bool isVowel(int i) {
    final List<String> vowelList = ['a', 'e', 'i', 'o', 'u'];

    // 공백일시 false
    if (i < 0 || word.length <= i || word.substring(i, i + 1) == ' ') {
      print('예외');
      return false;
    }

    return vowelList.contains(word.substring(i, i + 1).toLowerCase());
  }

  bool isConsonant(int i) {
    // 공백일시 false, !isVowel(i)가 반대로 되므로 제약조건을 다시 걸어준다
    if (i < 0 || word.length <= i || word.substring(i, i + 1) == ' ') {
      print('예외');

      return false;
    }

    return !isVowel(i);
  }
}
