
//example(of: "Creating and linking nodes") {
//    let node1 = Node(value: 1)
//    let node2 = Node(value: 2)
//    let node3 = Node(value: 3)
//
//    node1.next = node2
//    node2.next = node3
//    print(node1)
//}

//example(of: "Push") {
//    var list = LinkedList<Int>()
//    list.push(3)
//    list.push(2)
//    list.push(1)
//    print(list)
//}

//example(of: "append") {
//    var list = LinkedList<Int>()
//    list.append(1)
//    list.append(2)
//    list.append(3)
//    print(list)
//
//}

//example(of: "inserting at a particular index") {
//    var list = LinkedList<Int>()
//    list.push(3)
//    list.push(2)
//    list.push(1)
//    print("Before inserting: \(list)")
//    guard var middleNode = list.node(at: 1) else { return }
//    for _ in 1...4 {
//        middleNode = list.insert(-1, after: middleNode)
//    }
//    print("After inserting: \(list)")
//
//}

//example(of: "pop") {
//    var list = LinkedList<Int>()
//    list.push(3)
//    list.push(2)
//    list.push(1)
//
//    print("Before popping list: \(list)")
//    let poppedValue = list.pop()
//    print("After popping list: \(list)")
//    print("Popped value: " + String(describing: poppedValue))
//}

//example(of: "removing the last node") {
//    var list = LinkedList<Int>()
//    list.push(3)
//    list.push(2)
//    list.push(1)
//    print("Before removing last node: \(list)")
//    let removedValue = list.removeLast()
//
//    print("After removing last node: \(list)")
//    print("Removed value: " + String(describing: removedValue))
//}

//example(of: "removing a node after a particular node") {
//    var list = LinkedList<Int>()
//    list.push(3)
//    list.push(2)
//    list.push(1)
//
//    print("Before removing at particular index: \(list)")
//    let index = 0
//    let node = list.node(at: index)!
//    let removedValue = list.remove(after: node)
//    print("After removing at index \(index): \(list)")
//    print("Removed value: " + String(describing: removedValue))
//
//}

//example(of: "using collection") {
//    var list = LinkedList<Int>()
//    for i in 0...9 {
//        list.append(i)
//    }
//
//    print("List: \(list)")
//    print("First element: \(list[list.startIndex])")
//    print("Array containing first 3 elements: \(Array(list.prefix(3)))")
//    print("Array containing last 3 elements: \(Array(list.suffix(3)))")
//
//    let sum = list.reduce(0, +)
//    print("Sum of all values: \(sum)")
//}

//example(of: "array copy on write") {
//    let array1 = [1, 2]
//    var array2 = array1
//
//    print("Array1: \(array1)")
//    print("Array2: \(array2)")
//
//    print("---After adding 3 to array 2---")
//    array2.append(3)
//    print("Array1: \(array1)")
//    print("Array2: \(array2)")
//
//}


//example(of: "linked list cow") {
//    var list1 = LinkedList<Int>()
//    list1.append(1)
//    list1.append(2)
//    var list2 = list1
//    print("List1: \(list1)")
//    print("List2: \(list2)")
//    print("After appending 3 to list 2")
//    list2.append(3)
//    print("List1: \(list1)")
//    print("List2: \(list2)")
//
//    print("Removing middle node on list 2")
//    if let node = list2.node(at: 0) {
//        list2.remove(after: node)
//    }
//    print("List2: \(list2)")
//}

//example(of: "print in reverse") {
//    var list = LinkedList<Int>()
//    list.push(3)
//    list.push(2)
//    list.push(1)
//    print(list)
//    var reverseList = list
//    while let last = reverseList.removeLast() {
//        print(last)
//    }
//    print(list)
//}

//example(of: "find the middle node") {
//    var list = LinkedList<Int>()
//   // list.push(4)
//    list.push(3)
//    list.push(2)
//    list.push(1)
//
//    var count = 0
//    var currentNode = list.head
//    if currentNode != nil {
//        count = 1
//    }
//    while let next = currentNode?.next {
//        currentNode = next
//        count += 1
//    }
//    let midleIndex = count / 2
//    print(midleIndex)
//    let node = list.node(at: midleIndex)
//    print(node?.value)
//
//}

example(of: "reverse linked list") {
    var list = LinkedList<Int>()
      list.push(4)
      list.push(3)
      list.push(2)
      list.push(1)
        
    list.reverse()
    
    print(list)
    
}


