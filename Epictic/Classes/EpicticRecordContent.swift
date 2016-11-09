//
//  EpicticRecordContent.swift
//  Pods
//
//  Created by Ammar Hadzic on 11/9/16.
//
//

public class EpicticRecordContent {
    public var identifier = ""
    public var name = ""
    public var properties = [String:Any]()
    public var base = [String:Any]()
    
    public init(){}
    
    public func getDict()->[String:Any]{
        var r = [String:Any]()
        r["identifier"] = identifier
        r["name"] = name
        r["properties"] = properties
        r["base"] = base
        return r
    }
    
}
