//
//  Game.swift
//  PowerGrid
//
//  Created by Linda Nguyen on 5/28/15.
//  Copyright (c) 2015 Linda Nguyen. All rights reserved.
//

import Foundation

class Game {

  init() {
    setUp()
  }

  /* Private */

  private var deck = [Plant]()
  private var market = [Plant]()

  private func setUp() {
    setUpDeck()
    setUpMarket()
  }

  private func setUpDeck() {
    deck.append(Plant(number: 11, resources: [.Uranium], numResources: 1, supply: 2))
    deck.append(Plant(number: 12, resources: [.Coal, .Oil], numResources: 2, supply: 2))
    deck.append(Plant(number: 14, resources: [.Garbage], numResources: 2, supply: 2))
    deck.append(Plant(number: 15, resources: [.Coal], numResources: 2, supply: 3))
    deck.append(Plant(number: 16, resources: [.Oil], numResources: 2, supply: 3))
    deck.append(Plant(number: 17, resources: [.Uranium], numResources: 1, supply: 2))
    deck.append(Plant(number: 18, resources: [], numResources: 0, supply: 2))
    deck.append(Plant(number: 19, resources: [.Garbage], numResources: 2, supply: 3))
    deck.append(Plant(number: 20, resources: [.Coal], numResources: 3, supply: 5))
    deck.append(Plant(number: 21, resources: [.Coal, .Oil], numResources: 2, supply: 4))
    deck.append(Plant(number: 22, resources: [], numResources: 0, supply: 2))
    deck.append(Plant(number: 23, resources: [.Uranium], numResources: 1, supply: 3))
    deck.append(Plant(number: 24, resources: [.Garbage], numResources: 2, supply: 4))
    deck.append(Plant(number: 25, resources: [.Coal], numResources: 2, supply: 5))
    deck.append(Plant(number: 26, resources: [.Oil], numResources: 2, supply: 5))
    deck.append(Plant(number: 27, resources: [], numResources: 0, supply: 3))
    deck.append(Plant(number: 28, resources: [.Uranium], numResources: 1, supply: 4))
    deck.append(Plant(number: 29, resources: [.Coal, .Oil], numResources: 1, supply: 4))
    deck.append(Plant(number: 30, resources: [.Garbage], numResources: 3, supply: 6))
    deck.append(Plant(number: 31, resources: [.Coal], numResources: 3, supply: 6))
    deck.append(Plant(number: 32, resources: [.Oil], numResources: 3, supply: 6))
    deck.append(Plant(number: 33, resources: [], numResources: 0, supply: 4))
    deck.append(Plant(number: 34, resources: [.Uranium], numResources: 1, supply: 5))
    deck.append(Plant(number: 35, resources: [.Oil], numResources: 1, supply: 5))
    deck.append(Plant(number: 36, resources: [.Coal], numResources: 3, supply: 7))
    deck.append(Plant(number: 37, resources: [], numResources: 0, supply: 4))
    deck.append(Plant(number: 38, resources: [.Garbage], numResources: 3, supply: 7))
    deck.append(Plant(number: 39, resources: [.Uranium], numResources: 1, supply: 6))
    deck.append(Plant(number: 40, resources: [.Oil], numResources: 2, supply: 6))
    deck.append(Plant(number: 42, resources: [.Coal], numResources: 2, supply: 6))
    deck.append(Plant(number: 44, resources: [], numResources: 0, supply: 5))
    deck.append(Plant(number: 46, resources: [.Coal, .Oil], numResources: 3, supply: 7))
    deck.append(Plant(number: 50, resources: [], numResources: 0, supply: 6))

    deck = shuffle(deck)

    deck.insert(Plant(number: 13, resources: [], numResources: 0, supply: 1), atIndex: 0)
    deck.append(Plant(number: Plant.Phase3Number, resources: [], numResources: 0, supply: 0))
  }

  private func setUpMarket() {
    market.append(Plant(number: 3, resources: [.Oil], numResources: 2, supply: 1))
    market.append(Plant(number: 4, resources: [.Coal], numResources: 2, supply: 1))
    market.append(Plant(number: 5, resources: [.Coal, .Oil], numResources: 2, supply: 1))
    market.append(Plant(number: 6, resources: [.Garbage], numResources: 1, supply: 1))
    market.append(Plant(number: 7, resources: [.Oil], numResources: 3, supply: 2))
    market.append(Plant(number: 8, resources: [.Coal], numResources: 3, supply: 2))
    market.append(Plant(number: 9, resources: [.Oil], numResources: 1, supply: 1))
    market.append(Plant(number: 10, resources: [.Coal], numResources: 2, supply: 2))
  }

  private func shuffle<T: MutableCollectionType where T.Index == Int>(var array: T) -> T {
    let length = count(array)

    for i in 0..<(length - 1) {
      let j = Int(arc4random_uniform(UInt32(length - i))) + i
      swap(&array[i], &array[j])
    }

    return array
  }

}
