class Triangle(private val side1: Double, private val side2: Double, private val side3: Double) {

    fun determineType(): String {
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral"
            side1 == side2 || side1 == side3 || side2 == side3 -> "Isosceles"
            else -> "Scalene"
        }
    }
}

fun main() {
    val triangle1 = Triangle(5.0, 5.0, 5.0)
    println("Triangle 1 type: ${triangle1.determineType()}") // Equilateral

    val triangle2 = Triangle(4.0, 4.0, 6.0)
    println("Triangle 2 type: ${triangle2.determineType()}") // Isosceles

    val triangle3 = Triangle(3.0, 4.0, 5.0)
    println("Triangle 3 type: ${triangle3.determineType()}") // Scalene
}
