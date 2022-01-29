class EscapeException implements Exception {
  exceptionMessage() {
    print("Animal  escape exception");
  }
}

void checkEscape(bool isLuck) {
  if (isLuck == true) {
    throw EscapeException();
  }
}
