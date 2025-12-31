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

    final nums = body.split(RegExp(delimiterPattern)).map(int.parse).toList();

    final negatives = nums.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negatives not allowed: ${negatives.join(",")}');
    }

    return nums.reduce((a, b) => a + b);
  }
}
