import Foundation

/// Returns Fibonacci of a number
///
/// - Parameter num: The number Int
/// - Returns: The Fibonacci Int
func fibonacci(of num: Int) -> Int {
    if num <= 1 {
        return num
    } else {
        return fibonacci(of: num - 1) + fibonacci(of: num - 2)
    }
}
