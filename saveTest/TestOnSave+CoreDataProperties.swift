//
//  TestOnSave+CoreDataProperties.swift
//  saveTest
//
//  Created by 蔡顯達 on 2022/10/14.
//
//

import Foundation
import CoreData


extension TestOnSave {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TestOnSave> {
        return NSFetchRequest<TestOnSave>(entityName: "TestOnSave")
    }

    @NSManaged public var number: String?
    @NSManaged public var name: String?
}

extension TestOnSave : Identifiable {

}
