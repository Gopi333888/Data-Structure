void main() {
  int result = sumofNaturalNumber(5);
  print("Sum of numbers up to 5 is: $result");
  int factorial = factorialofN(5);
  print("factorial of numbers is: $factorial");
}

int sumofNaturalNumber(int num) {
  if (num == 1) {
    return 1;
  } else {
    return num + (sumofNaturalNumber(num - 1));
  }
}

int factorialofN(int num) {
  if (num == 1) {
    return 1;
  } else {
    return num * (factorialofN(num - 1));
  }
}
