fun main() {
    // Input month and day
    val month = 3
    val day = 21

    // Determine the season
    val season = getSeason(month, day)
    println("The season for $month/$day is $season")
}

fun getSeason(month: Int, day: Int): String {
    return when (month) {
        1, 2, 3 -> if (month == 3 && day >= 20) "Spring" else "Winter"
        4, 5, 6 -> if (month == 6 && day >= 21) "Summer" else "Spring"
        7, 8, 9 -> if (month == 9 && day >= 22) "Fall" else "Summer"
        10, 11, 12 -> if (month == 12 && day >= 21) "Winter" else "Fall"
        else -> "Invalid month"
    }
}
