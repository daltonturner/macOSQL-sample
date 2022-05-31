//
//  TextEditView.swift
//  macOSQL
//
//  Created by Dalton Turner on 5/30/22.
//

import Foundation
import SwiftUI

struct TextEditView: View {
    @State private var fullText: String = """
    SELECT *
    FROM this_perfect_table
    """

    var body: some View {
        TextEditor(text: $fullText)
            .foregroundColor(Color.gray)
            .font(.custom("Courier", size: 13))
            .lineSpacing(5)
    }
}
