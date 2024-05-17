import Atomics

@objc(MultiplyInSwift)
public class MultiplyInSwift: NSObject {
  @objc
  public func multiply(_ a: Int, b: Int) -> Int {
    let counter = ManagedAtomic<Int>(0)
    
    for _ in 0..<b {
      counter.wrappingIncrement(ordering: .relaxed)
    }
    
    return a * counter.load(ordering: .relaxed)
  }
}
