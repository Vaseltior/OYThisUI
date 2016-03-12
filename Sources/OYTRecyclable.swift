/*
Copyright 2011-present Samuel GRAU

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import Foundation

public protocol OYTRecyclable {
  /**
   The identifier used to categorize views into buckets for reuse.
   Views will be reused when a new view is requested with a matching identifier.
   If the reuseIdentifier is nil then the class name will be used.
   */
  var oytReuseIdentifier: String? {get set}
  
  /// Called immediately after the view has been dequeued from the recycled view pool.
  func oytPrepareForReuse()
}
