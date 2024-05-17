fun main() {
    // Example side lengths
    val side1 = 5.0
    val side2 = 5.0
    val side3 = 5.0
    
    // Function to determine the type of triangle
    fun determineTriangleType(side1: Double, side2: Double, side3: Double): String {
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral"
            side1 == side2 || side1 == side3 || side2 == side3 -> "Isosceles"
            else -> "Scalene"
        }
    }
    
    // Determine and print the type of triangle
    val triangleType = determineTriangleType(side1, side2, side3)
    println("The triangle is $triangleType")
}
