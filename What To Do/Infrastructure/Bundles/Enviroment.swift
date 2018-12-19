//
//  Enviroment.swift
//  What To Do
//
//  Created by Aitor Pagán on 19/12/2018.
//  Copyright © 2018 Aitor Pagán. All rights reserved.
//

import Foundation
public enum PlistKey : String {
    case eventsDataFileName = "events_data_file_name"
}
public struct Environment {
    
    fileprivate static var infoDict: [String: Any]  {
        get {
            if let dict = Bundle.main.infoDictionary {
                return dict
            }else {
                fatalError("Plist file not found")
            }
        }
    }
    public static func configuration(_ key: PlistKey) -> String {
        switch key {
        case .eventsDataFileName:
            return infoDict[PlistKey.eventsDataFileName.rawValue] as! String
        }
    }
}
