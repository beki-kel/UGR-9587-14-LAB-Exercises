fun main() {
    // Define the hourly rate and number of hours worked
    val hourlyRate = 20.0
    val hoursWorked = 45.0

    // Define the threshold for regular hours and the overtime multiplier
    val regularHours = 40.0
    val overtimeMultiplier = 1.5

    // Function to calculate total salary
    fun calculateTotalSalary(hourlyRate: Double, hoursWorked: Double, regularHours: Double, overtimeMultiplier: Double): Double {
        return if (hoursWorked <= regularHours) {
            // No overtime
            hoursWorked * hourlyRate
        } else {
            // Calculate overtime
            val regularSalary = regularHours * hourlyRate
            val overtimeHours = hoursWorked - regularHours
            val overtimeSalary = overtimeHours * hourlyRate * overtimeMultiplier
            regularSalary + overtimeSalary
        }
    }

    // Calculate and print the total salary
    val totalSalary = calculateTotalSalary(hourlyRate, hoursWorked, regularHours, overtimeMultiplier)
    println("Total salary: $totalSalary")
}
