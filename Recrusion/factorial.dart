int factorial(int num) {
  if (num == 0 || num == 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}

void main() {
  int num = 5;
  int result = factorial(num);
  print("Factorial of $num is: $result");
}
