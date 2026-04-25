# QSJsonParser

QSJsonParser 是一个基于 `JSONSerialization` 封装的 Swift JSON 解析工具，提供 JSON 字符串、`Data`、字典、数组之间的常用转换方法。

## 环境要求

- iOS 15.0+
- watchOS 8.0+
- Swift 5.0+

## 安装

通过 CocoaPods 安装：

```ruby
pod 'QSJsonParser'
```

然后执行：

```bash
pod install
```

## 使用方法

在需要使用的文件中导入：

```swift
import QSJsonParser
```

### JSON 字符串转字典

```swift
let jsonString = """
{
    "name": "QSJsonParser",
    "version": "1.0.2"
}
"""

let dictionary = JsonParser.jsonStringToDictionary(with: jsonString)
print(dictionary?["name"] ?? "")
```

### JSON 字符串转数组

```swift
let jsonString = """
[
    {"name": "Tom"},
    {"name": "Jerry"}
]
"""

let array = JsonParser.jsonStringToArray(with: jsonString)
print(array ?? [])
```

### Data 转 JSON 对象

```swift
if let data = jsonString.data(using: .utf8) {
    let object = JsonParser.dataToJsonObject(data: data)
    print(object ?? "")
}
```

### 对象转 Data

```swift
let object: [String: Any] = [
    "name": "QSJsonParser",
    "version": "1.0.2"
]

let data = JsonParser.objectToData(with: object)
```

### 对象转 JSON 字符串

```swift
let object: [String: Any] = [
    "name": "QSJsonParser",
    "version": "1.0.2"
]

let jsonString = JsonParser.objectToString(with: object)
print(jsonString ?? "")
```

## API 简介

| 方法 | 说明 |
| --- | --- |
| `dataToJsonObject(data:)` | 将 JSON `Data` 转换为字典或数组对象 |
| `jsonStringToDictionary(with:)` | 将 JSON 字符串转换为字典 |
| `jsonStringToArray(with:)` | 将 JSON 字符串转换为数组 |
| `objectToData(with:)` | 将字典或数组对象转换为 JSON `Data` |
| `objectToString(with:)` | 将字典或数组对象转换为 JSON 字符串 |

## License

QSJsonParser 基于 MIT License 开源，详情见 [LICENSE](LICENSE)。
