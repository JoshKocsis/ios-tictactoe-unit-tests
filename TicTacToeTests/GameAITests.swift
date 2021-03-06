//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Josh Kocsis on 7/27/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe
class GameAITests: XCTestCase {

    func testWinCheckingVertical1() {
        var board = GameBoard()

        XCTAssertNoThrow(try board.place(mark: .x, on: (0,0)))
        XCTAssertNoThrow(try board.place(mark: .o, on: (1,0)))
        XCTAssertNoThrow(try board.place(mark: .x, on: (0,1)))
        XCTAssertNoThrow(try board.place(mark: .o, on: (1,1)))
        XCTAssertNoThrow(try board.place(mark: .x, on: (0,2)))

        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
}
