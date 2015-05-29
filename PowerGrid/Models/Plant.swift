//
//  Plant.swift
//  PowerGrid
//
//  Created by Linda Nguyen on 5/28/15.
//  Copyright (c) 2015 Linda Nguyen. All rights reserved.
//

import Foundation

class Plant {

  static let Phase3Number = 0

  let numResources: Int
  let number: Int
  let resources: [Resource]
  let supply: Int

  init(number: Int, resources: [Resource], numResources: Int, supply: Int) {
    self.numResources = numResources
    self.number = number
    self.resources = resources
    self.supply = supply
  }

  var isPhase3: Bool {
    return number == Plant.Phase3Number
  }

}
