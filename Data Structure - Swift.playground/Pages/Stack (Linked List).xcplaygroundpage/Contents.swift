class Stack<T> {
    private var top: Node<T>?
    var size = 0

    init() {}

    func peek() -> T? {
        top?.value
    }

    func isEmpty() -> Bool {
        size == 0
    }

    func push(_ value: T) {
        top = Node(value, top)
        size += 1
    }

    func pop() -> T? {
        if isEmpty() { return nil }

        let value = top?.value
        top = top?.next
        size -= 1

        return value
    }
}

class Node<T> {
    var value: T
    var next: Node?

    init(_ value: T, _ next: Node? = nil) {
        self.value = value
        self.next = next
    }
}
