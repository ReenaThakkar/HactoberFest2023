// The Product protocol (the type of objects created by the factory)
protocol Product {
    var name: String { get }
    func getDescription() -> String
}

// Concrete implementations of the Product
struct ConcreteProductA: Product {
    var name: String { return "Product A" }
    func getDescription() -> String {
        return "This is Product A"
    }
}

struct ConcreteProductB: Product {
    var name: String { return "Product B" }
    func getDescription() -> String {
        return "This is Product B"
    }
}

// The Factory protocol
protocol Factory {
    func createProduct() -> Product
}

// Concrete factories for each product
struct ConcreteFactoryA: Factory {
    func createProduct() -> Product {
        return ConcreteProductA()
    }
}

struct ConcreteFactoryB: Factory {
    func createProduct() -> Product {
        return ConcreteProductB()
    }
}

// Client code
let factoryA: Factory = ConcreteFactoryA()
let productA = factoryA.createProduct()
print("Product: \(productA.name), Description: \(productA.getDescription())")

let factoryB: Factory = ConcreteFactoryB()
let productB = factoryB.createProduct()
print("Product: \(productB.name), Description: \(productB.getDescription())")
