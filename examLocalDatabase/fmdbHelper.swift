//
//  fmdbHelper.swift
//  examLocalDatabase
//
//  Created by R93 on 12/04/23.
//

import Foundation
import CoreData

struct Model
{
    var id: Int
    var name: String
}
class fmdb
{
   static var file:FMDatabase!
    
    static func createFile()
    {
        var a = FileManager.default.urls(for:.documentDirectory, in: .userDomainMask)[0]
        a.appendPathComponent("MyFile.db")
        file = FMDatabase(url: a)
        file.open()
        print(a.path)
        createTable()
        
    }
    static func createTable()
    {
        let q = "Create Table if not exists Students (id integer,name text)"
        try? file.executeUpdate(q, values: nil)
        print("Create Table")
        
    }
    static func addData(id:Int,name:String)
    {
        let q = "insert into Students values (\(id),'\(name)')"
        try? file.executeUpdate(q, values: [id,name])
        print("Add Data")
    }
    static func getData()->[Model]
    {
        var array = [Model]()
        let  query = "select * from Students"
        if let data = try? file.executeQuery(query, values: nil)
        {
             while data.next()
            {
                let name = data.object(forColumnName: "name") as? String ?? ""
                let id = data.object(forColumnName: "id") as? Int ?? 0
                let object = Model (id: id, name: name)
                array.append(object)
            }
        }
       return array
    }
    static func DeleteData(id:Int,name: String)
    {
        let q = "DELETE FROM Students WHERE id = \(id.self)"
        try? file.executeUpdate(q, values: nil)
        print("Delete Data")
    }
    
}
