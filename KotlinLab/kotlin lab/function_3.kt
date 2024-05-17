fun main() {
    val str1 = "hello"
    val str2 = "world"
    
    println("Does \"$str1\" contain only unique characters? ${containsUniqueCharacters(str1)}")
    println("Does \"$str2\" contain only unique characters? ${containsUniqueCharacters(str2)}")
}

fun containsUniqueCharacters(str: String): Boolean {
    val charSet = HashSet<Char>()
    for (char in str) {
        if (!charSet.add(char)) {
            return false
        }
    }
    return true
}
