//
//  DataSource.swift
//  TimerCollapsibleList-Swift
//
//  Created by Evan Wang on 2022/3/10.
//

import Foundation

class CellItem {
    let date: Date
    
    init(date: Date) {
        self.date = date
    }
}

class SectionItem {
    let items: [CellItem]
    let date: Date
    init(date: Date, items: [CellItem]) {
        self.items = items
        self.date = date
    }
}

class DataSource {
    let sections: [SectionItem]
    
    init() {
        let date = Date()
        let hour:TimeInterval = 60 * 60
        let day:TimeInterval = 60 * 60 * 24
        var _sections:[SectionItem] = []
        for i in 1...10 {
            var items: [CellItem] = []
            for j in 1...10 {
                let item = CellItem(date: date.addingTimeInterval( Double(i) * day + Double(j) * hour))
                items.append(item)
            }
            let section = SectionItem(date: date.addingTimeInterval(Double(i) * day),items: items)
            _sections.append(section)
        }
        self.sections = _sections
    }
}
