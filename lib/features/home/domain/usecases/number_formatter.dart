String customNumberFormat(int number) {
  if (number >= 1000000000) {
    return '${(number / 1000000000).toStringAsFixed(1)}B';
  } else if (number >= 1000000) {
    return '${(number / 1000000).toStringAsFixed(0)}M';
  } else if (number >= 1000) {
    return '${(number / 1000).toStringAsFixed(0)}K';
  } else {
    return number.toString();
  }
}
