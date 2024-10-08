// Copyright 2024 The Google AI Edge Authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// =============================================================================

import Foundation

// MARK: - Data
extension Data {
  /// Creates a new buffer by copying the buffer pointer of the given array.
  ///
  /// - Warning: The given array's element type `T` must be trivial in that it can be copied bit
  ///     for bit with no indirection or reference-counting operations; otherwise, reinterpreting
  ///     data from the resulting buffer has undefined behavior.
  /// - Parameter array: An array with elements of type `T`.

/// Creates a new instance by copying the buffer of the input array.
///
/// - Parameters:
///   - array: The array from which the buffer will be copied.
/// - Returns: A new instance created by copying the buffer of the input array.
  init<T>(copyingBufferOf array: [T]) {
    self = array.withUnsafeBufferPointer(Data.init)
  }

/// Converts the elements of a collection to an array of a specified type that conforms to the ExpressibleByIntegerLiteral protocol.

/// - Parameters:
///   - type: The type to convert the elements to.
///
/// - Returns: An array of elements of the specified type.
  func toArray<T>(type: T.Type) -> [T] where T: ExpressibleByIntegerLiteral {
    var array = Array<T>(repeating: 0, count: self.count/MemoryLayout<T>.stride)
    _ = array.withUnsafeMutableBytes { copyBytes(to: $0) }
    return array
  }
}

