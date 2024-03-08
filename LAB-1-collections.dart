void main() {
  List<String> favoriteHobbies = [];

  print('Is the list empty? ${favoriteHobbies.isEmpty}');

  favoriteHobbies.add('Reading');
  favoriteHobbies.addAll(['Coding', 'Traveling', 'Photography']);

  print('Favorite Hobbies: $favoriteHobbies');

  print('Is the list empty? ${favoriteHobbies.isEmpty}');

  favoriteHobbies.remove('Traveling');

  print('Updated Hobbies: $favoriteHobbies');
  favoriteHobbies.sort();
  print('Sorted Hobbies: $favoriteHobbies');
}
