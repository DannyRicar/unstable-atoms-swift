//
// Created by Samuel Kodytek on 29/09/2019.
// Copyright (c) 2019 Educanet. All rights reserved.
//

import Foundation

class UnstableAtomsGame: UnstableAtoms {

    private(set) var winner: Player = .none

    private(set) var playerOnMove: Player = .none

    private(set) var fields: [[Field]] = []

    private(set) var redProgress: Float = 0

    private(set) var blueProgress: Float = 0

    func makeMove(coordinate: Coordinate) {
    }
}