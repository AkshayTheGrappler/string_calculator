class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiterPattern = r'[,\n]';
    String body = numbers;

    if (numbers.startsWith('//')) {
      final newlineIndex = numbers.indexOf('\n');
      final delimiter = numbers.substring(2, newlineIndex);
      body = numbers.substring(newlineIndex + 1);
      delimiterPattern = RegExp.escape(delimiter);
    }

    final parts = body.split(RegExp(delimiterPattern));
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
