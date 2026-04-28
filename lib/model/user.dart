class User {
  final String imagePath;
  final String name;
  final String username;
  final int level;
  final int lessonsCompleted;
  final double balance;

  const User({
    required this.imagePath,
    required this.name,
    required this.username,
    required this.level,
    required this.lessonsCompleted,
    required this.balance,
  });
}
