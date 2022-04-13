const weekdays = ["Lu", "Ma", "Me", "Je", "Ve", "Sa", "Di"];
const months = [
  "Janvier",
  "Février",
  "Mars",
  "Avril",
  "Mai",
  "Juin",
  "Juillet",
  "Aout",
  "Septembre",
  "Octobre",
  "Novembre",
  "Décembre"
];

String weekDayFromWeekIndex(weekIndex) {
  return weekdays[weekIndex - 1];
}

String monthFromMonthIndex(monthIndex) {
  return months[monthIndex - 1];
}
