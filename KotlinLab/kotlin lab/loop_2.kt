fun main() {
    val start = 10
    val end = 30

    println("Prime numbers between $start and $end:")
    var number = start

    while (number <= end) {
        if (isPrime(number)) {
            println(number)
        }
        number++
    }
}

fun isPrime(num: Int): Boolean {
    if (num <= 1) {
        return false
    }
    var divisor = 2
    while (divisor * divisor <= num) {
        if (num % divisor == 0) {
            return false
        }
        divisor++
    }
    return true
}
