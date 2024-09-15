
import Foundation

class User {
    var login : String
    var password : String
    var kolvoMonet : Int
    var isBlackList : Bool
    init(_ login: String, _ password: String,_ kolvoMonet : Int,_ isBlackList : Bool) {
        self.login = login
        self.password = password
        self.kolvoMonet = kolvoMonet
        self.isBlackList = isBlackList
    }
}

var user = User("", "", 0, false)


