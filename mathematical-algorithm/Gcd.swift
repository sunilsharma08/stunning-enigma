import Foundation

/// Returns the Greatest Common Factor of two numbers
///
/// - Parameters:
///   - a: First number
///   - b: Second number
/// - Returns: Greatest Common Factor
func gcd(of a: Int, and b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(of: b, and: a%b)
    }
}
