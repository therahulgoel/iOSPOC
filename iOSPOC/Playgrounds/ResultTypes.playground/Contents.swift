import UIKit
import Foundation

var greeting = "Hello, playground for Result Types"

/*
 In Swift, the Result type is used to represent the result of a computation that can either succeed with a value or fail with an error. It's particularly useful in asynchronous or throwing functions where traditional return types might be insufficient to represent success and failure.
 */


//Definition of Creating Custom Result Type
enum CustomResult <Success, Failure:Error> {
    case success(Success)
    case failure(Failure)
}


//Divide two numbers and return success or failure using default Result type
func divideTwoNumbers(_ a:Int, _ b:Int) -> (Result<Int, Error>){
    if b == 0 {
        return .failure(NSError(domain: "DivisionError", code: 1))
    }else {
        return .success(a / b)
    }
}

divideTwoNumbers(8, 4)
divideTwoNumbers(8, 0)

//Handling success and failure cases
let result = divideTwoNumbers(400, 200)
switch result {
case .success(let value):
    print("Division is :", value)
    
case .failure(let error):
    print("Error is \(error)")
}


//Json parsing with Result
let jsonData = """
{
    "name": "therahulgoel",
    "branch":"computer science and engineering",
    "year":"2012"
}
""".data(using: .utf8)

struct UserModel:Codable{
    let name:String?
    let branch:String?
    let year:Int?
    let planet:String?
    
    // Define CodingKeys to customize the key mappings
    enum CodingKeys:String, CodingKey {
        case name
        case branch
        case year
        case planet = "planet_name"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try? container.decodeIfPresent(String.self, forKey: .name)
        self.branch = try? container.decodeIfPresent(String.self, forKey: .branch)
        self.year = try? container.decodeIfPresent(Int.self, forKey: .year)
        self.planet = try? container.decodeIfPresent(String.self, forKey: .planet)
    }
}

func parseUser(data:Data, completion: @escaping (Result<UserModel, Error>)->Void){
    do {
        let decoder = JSONDecoder()
        let user = try decoder.decode(UserModel.self, from: data)
        completion(.success(user))
    }catch {
        completion(.failure(error))
    }
}

parseUser(data: jsonData!) { result in
    switch result {
    case .success(let user):
        print("User name is \(user.name ?? "")")
    case .failure(let error):
        print("Error Parsing \(error.localizedDescription)")
        
    }
}



