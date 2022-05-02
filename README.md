# programmersAlgorithm
programmers의 알고리즘 문제를 해결합니다.
## Swift Basic
[키보드 입력받기]
 * String 값 입력받기
   ```swift
   let value = readLine() // readLine()의 리턴값은 Optional String이다.
   ```
 * Int 값 입력받기
   ```swift
   let value = Int(readLine()!)!
   ```
[배열]
* 빈 배열 생성 
   ```swift
   var emptyArray : [Int] = []
   var emptyArray = [Int]()
   var emptyArray : Array<Int> = []
   ```
* 임의의 데이터 넣어서 생성
   ```swift
   var array = Array(1...5) // array = [1,2,3,4,5]
   ```
* 크기가 정해진 배열 생성
   ```swift
   var array = Array(repeating: 0, count: 3) // array = [0,0,0]
   ```
* 2차원 배열 생성
   ```swift
   let matrixArray = [[Int]]() // 빈 배열
   let matrixArray: [[Int]] = Array(repeating:Array(repeating:1, count: 5), count: 3) // 안쪽 count가 행, 바깥 count가 열 (3x5 배열)
   ```
* 배열 거꾸로 출력
   ```swift
   let reversedArray = array.reverse()
   ```
* 배열 정렬
   ```swift
   let ascArray = array.sorted() // 기본은 오름차순 정렬
   let descArray = array.sorted(by: >) // 내림차순 정렬
   ```
[Higher order function] 
* 고차함수. 전달인자로 함수를 전달받거나, 함수 실행의 결과로 함수를 리턴하는 함수이다.
* **map**
  * 컨테이너 내부의 기존 데이터를 변형(transform)하여 새로운 컨테이너를 생성한다.
  * String을 Int로 맵핑
     ```swift
     var string = ["1","2","3","4"]
     string.map { Int($0)! } // 각 원소를 전부 Int로 맵핑
     ```
* **filter**
  * 컨테이너 내부의 값을 걸러서 새로운 컨테이너로 추출한다.
  * 즉, 조건에 맞는 값을 리턴한다.
    ```swift
    var array = [1,2,3,4]
    array.filter { $0 % 2 == 0 } // 짝수인 값만 리턴 => [2,4] 
    ``` 
* **reduce**
  * 컨테이너 내부에서 원소들의 사칙연산을 수행한다.
    ```swift
    var array = [1,2,3,4]
    array.reduce(0) { $0 + $1 } // 초깃값이 0이고 모든 원소르 더함 => 10
    ``` 
