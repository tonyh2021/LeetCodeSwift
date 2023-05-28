## Time Complexity

### O(1)

`Constant`

- Basic common operators
- Look-up table/dictionary (on average)

```siwft
var x = 0
var y = 1
var temp = x
x = y
y = temp
```

### O(log n)

`Logarithmic`

- Finding element on sorted array with binary search

```swift
var i = 1
while(i < n) {
    i = i * 2
}
```

### O(n)

`Linear`

- Find max element in unsorted array
- Duplicate elements in array with Hash Map

```siwft
for i in 0...n {
    // do constant time stuff
    print(i)
}
```

### O(n log n)

`Linearithmic`

- Sorting elements in array with merge sort

```swift
for i in 0...n {
    var x = 1
    while(x < n) {
        x = x * 2
    }
}
```

### O($n^2$)

`Quadratic`

- Duplicate elements in array
- Bubble sort

```siwft
for i in 0...n {
    print(i)
    for j in 0...n {
        print(j)
    }
}
```

### O($n^3$)

`Cubic`

### O($2^n$)

`Exponential`

### O(n!)

`Factorial`

## Space Complexity

### O(1)

```siwft
var x = 0
var y = 1
var temp = x
x = y
y = temp
```

### O(n)

```siwft
var array: [Int] = []
for i in 0...n {
    array.append(i)
}
```
