import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var answer = r.nextInt(100) + 1;
  var count = 1;
  int? guess;
  print(answer);
  print('╔══════════════════════════════════════');
  print('║            GUESS THE NUMBER          ');
  print('║──────────────────────────────────────');
  do {
    stdout.write('║ Please guess the between 1 and 100:');
    var input = stdin.readLineSync();

    if (input == null) {
      return;
    }

    guess = int.tryParse(input);

    if (guess == null) {
      print('║ Input error, please enter numbers only');
      print('║──────────────────────────────────────');
      continue;
    }
    if (guess > 100) {
      print('║ Input error, Try agian');
      continue;
    }
    if (guess < 1) {
      print('║ Input error, Try agian');
      continue;
    }
    if (guess == answer) {
      print('║ ➜ $answer CORRECT 👌 Total GUESSES : $count ');
      print('║──────────────────────────────────────');
      print('║                 END                     ');
      print('╚══════════════════════════════════════');
      count++;
    }
    else if (guess > answer) {
      print('║ ➜ $guess is TOO HIGH ! ▲');
      print('║──────────────────────────────────────');
      count++;
    }
    else {
      print('║ ➜ $guess is TOO LOW ! ▼');
      print('║──────────────────────────────────────');
      count++;
    }
  }
  while (guess != answer);
}