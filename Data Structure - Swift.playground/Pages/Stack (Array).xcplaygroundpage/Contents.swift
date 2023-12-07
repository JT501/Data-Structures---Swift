class Stack<T> {
    private var elements: [T] = []
    var isEmpty: Bool {
        elements.isEmpty
    }

    init() {}
    
    func peek() -> T? {
        elements.last
    }
    
    func push(_ value: T) {
        elements.append(value)
    }
    
    func pop() -> T? {
        elements.removeLast()
    }
}
