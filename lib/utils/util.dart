
String timeAgo(String createdAt) {
  if(createdAt == "") return "Today";
  final createdDate = DateTime.parse(createdAt);
  final currentDate = DateTime.now();
  final difference = currentDate.difference(createdDate);

  if (difference.inDays > 1) {
    return "${difference.inDays} days ago";
  } else if (difference.inDays == 1) {
    return "1 day ago";
  } else {
    return "Today";
  }
}
