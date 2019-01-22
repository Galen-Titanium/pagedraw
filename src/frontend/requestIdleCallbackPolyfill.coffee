# from https://gist.github.com/paullewis/55efe5d6f05434a96c36

###!
# Copyright 2015 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
# or implied. See the License for the specific language governing
# permissions and limitations under the License.
###

###
# @see https://developers.google.com/web/updates/2015/08/using-requestidlecallback
###

window.requestIdleCallback ?= (cb) ->
  setTimeout (->
    start = Date.now()
    cb({
      didTimeout: false
      timeRemaining: -> Math.max 0, 50 - (Date.now() - start)
    })
    return
  ), 1

window.cancelIdleCallback ?= (id) ->
  clearTimeout(id)
  return

# ---
# generated by js2coffee 2.2.0