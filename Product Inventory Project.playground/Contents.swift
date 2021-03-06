import UIKit

struct Categories {

    static var lastId = 0
    var categoryId = Categories.createNewId()
    var categoryName :String
    var c = [Categories]()
    
    static func createNewId() -> Int {
        self.lastId += 1
        return (self.lastId)
    }
    mutating func addCategory(c1 : Categories){
        c.append(c1)
        print("The category \(c1.categoryName) is added sucsessfully")
    }

    func showCategories (){
        for element in c {
            print(element.categoryId)
            print(element.categoryName)
            
        }
    }
    mutating func deleteCategories(Index: Int){
        
        c.remove(at: Index)
        print("Successfully Removed")
    }
    
}
struct Supplier{
    
    static var lastId = 0
    var supplierId = Supplier.createNewId()
    var supplierName : String
    var supplierPhone : Int
    var s = [Supplier]()

     static func createNewId() -> Int {
        self.lastId += 1
        return (self.lastId)
    }
    mutating func addSupplier(s1 : Supplier){
        s.append(s1)
        print("The Supplier \(supplierName ) is added sucsessfully")
    }

    func showSuppliers(){
        for element in s {
            print(element.supplierId)
            print(element.supplierName)
            print(element.supplierPhone)

            
        }
    }
    mutating func deleteSuppliers(Index: Int){
        
        s.remove(at: Index)
        print("Successfully Removed")
    }
    
    

}
struct Order{
    //class member
    static var lastId = 0
    var orderId = Order.createNewId()
    var orderDate : Date
    var supplierName : String
    var proudectName : String
    var orderQuantity : Int
    var o = [Order]()

    mutating func addOrdery(o1 : Order){
        o.append(o1)
        print("The order is added sucsessfully")
    }

     static func createNewId() -> Int {
        self.lastId += 1
        return (self.lastId)
    }
    
    func showOrders (){
        for element in o {
            print(element.orderId)
            print(element.orderDate)
            print(element.proudectName)
            print(element.orderQuantity)
            print(element.supplierName)
            
        }
    }
    mutating func deleteOrder(Index: Int){
        
        o.remove(at: Index)
        print("The order is removed sucsessfully")
    }
    

}

class Products {
    //class member
    var productId = Products.createNewId()
    var productName :String
    var productPrice :Int
    var productQuantity :Int
    var category : String
    var p = [Products]()
    static var lastId = 0

    static func createNewId() -> Int {
        self.lastId += 1
        return (self.lastId)
    }
    init( productName: String,productPrice : Int, productQuantity: Int, categoryName :String){
     
        self.productName = productName
        self.productPrice = productPrice
        self.productQuantity = productQuantity
        self.category = categoryName
        
    }

        
    func addProduct(p1: Products){
        p.append(p1)
        print("the product \(p1.productName) is added sucsessfully")
        
    }
    
    
    func showProducts (){
        for element in p {
            print(element.productId)
            print(element.productName)
            print(element.productPrice)
            print(element.productQuantity)
            print(element.category)

            
        }
    }
    func showOutOfstuckProducts(){
        for element in p {
            if(element.productQuantity <= 0){
                print(element.productId)
                print(element.productName)
                print(element.productPrice)
                print(element.productQuantity)
                print(element.category)
            }
        }
    }
    
    func modifyProduct(index: Int, spesifiedOption : String, newValue :String){
        let myInt1 = Int(newValue) ?? 0
        
        if(spesifiedOption == "productId"){
            p[index].productId = myInt1
            print("Successfully Updated")
            
        }
        else if(spesifiedOption == "productName"){
            p[index].productName = newValue
            print("Successfully Updated")
            
            
        }
        else if(spesifiedOption == "productPrice"){
            p[index].productPrice = myInt1
            
        }
        else if(spesifiedOption == "productQuantity"){
            p[index].productQuantity = myInt1
            
        }
        else{
            print("nothing selected to update")
        }
        
    }
    
    func deleteProudet(Index: Int){
        
        p.remove(at: Index)
        print("Successfully Removed")
    }
    
}

enum options : String{
    
    case productId = "productId"
    case productName = "productName"
    case productPrice = "productPrice"
    case productQuantity = "productQuantity"
    
}

//Categories
var c = Categories(categoryName: "Clothes")
c.addCategory(c1: c)
c.showCategories()

//Supplier
var s = Supplier(supplierName: "Ahmed", supplierPhone: 0554444333)
s.addSupplier(s1: s)
s.showSuppliers()


//Products
var p1 = Products(productName: "T-shirt", productPrice: 200, productQuantity: 40, categoryName: "Clothes")

p1.addProduct(p1: p1)
p1.showProducts()
print("out of stuck")
p1.showOutOfstuckProducts()
p1.modifyProduct(index: 0, spesifiedOption: options.productName.rawValue, newValue: "Tshirt")
p1.showProducts()

//Order
var o = Order(orderDate: Date(), supplierName: "Ahmed", proudectName: "Shose" ,orderQuantity:80)
o.addOrdery(o1: o)
o.showOrders()

var o1 = Order(orderDate: Date(), supplierName: "Ahmed", proudectName: "bag" ,orderQuantity:10)
o1.addOrdery(o1: o1)
o1.showOrders()

