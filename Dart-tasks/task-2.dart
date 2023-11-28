int findMaximum(List<int> numbers) {
  int max = numbers[0];
  for (int number in numbers) {
    if (number > max) {
      max = number;
    }
  }
  return max;
}

int findMinimum(List<int> numbers) {
  int min = numbers[0];
  for (int number in numbers) {
    if (number < min) {
      min = number;
    }
  }
  return min;
}

int calculateSUM(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

void calculateAverage(Function sum, List<int> numbers) {
  if (numbers.length > 0) {
    double vav = sum(numbers) / numbers.length;
    print('The average value is $vav');
  }
}

void main() {
  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  print(' Question From  listed numbers : $numbers \n'
      '1.Find the largest number \n'
      '2.Find smallest number\n'
      '3.Find the sum \n '
      '4. find the average \n');
  print('ANswers');
  int maxvalue = findMaximum(numbers);
  print('The largest number is: $maxvalue ');
  int minvalue = findMinimum(numbers);
  print('The smallest number is: $minvalue ');
  int sum = calculateSUM(numbers);
  print('The sum is: $sum');
  calculateAverage(calculateSUM, numbers);
}

