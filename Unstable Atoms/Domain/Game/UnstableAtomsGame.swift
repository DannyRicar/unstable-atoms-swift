//
// Created by Samuel Kodytek on 29/09/2019.
// Copyright (c) 2019 Educanet. All rights reserved.
//

import Foundation

class UnstableAtomsGame: UnstableAtoms {

    // TODO: Implement
    private(set) var winner: Player = .none

    // TODO: Implement
    private(set) var playerOnMove: Player = .red

    // TODO: Implement
    private(set) var fields: [[Field]] = []

    private (set) var rows: Int
    
    private (set) var columns: Int
    
    init(rows: Int, columns: Int) {
        fields = Array(repeating: Array(repeating: Field(owner: .none, amountOfAtoms: 0), count: rows), count: columns)
        self.rows = rows
        self.columns = columns
    }
    
    // TODO: Implement
    func makeMove(coordinate: Coordinate) {
      
        let x = fields[coordinate.x][coordinate.y].amountOfAtoms
        
        if(x == 0) {
            fields[coordinate.x][coordinate.y] = Field(owner: .red, amountOfAtoms: 1)
        }
        if(x == 1) {
            fields[coordinate.x][coordinate.y] = Field(owner: .red, amountOfAtoms: 2)
        }
        if(x == 2) {
            fields[coordinate.x][coordinate.y] = Field(owner: .red, amountOfAtoms: 3)
        }
        if(x == 3) {
            fields[coordinate.x][coordinate.y] = Field(owner: .red, amountOfAtoms: 0)
            fields[coordinate.x - 1][coordinate.y] = Field(owner: playerOnMove, amountOfAtoms: 1)
            fields[coordinate.x + 1][coordinate.y] = Field(owner: playerOnMove, amountOfAtoms: 1)
            fields[coordinate.x][coordinate.y - 1] = Field(owner: playerOnMove, amountOfAtoms: 1)
            fields[coordinate.x][coordinate.y + 1] = Field(owner: playerOnMove, amountOfAtoms: 1)
        }
        
    }
}
