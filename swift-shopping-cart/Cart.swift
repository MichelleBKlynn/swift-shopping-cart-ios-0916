//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items = [Item]()
    
  //  init(items:[Item]) {
  //      self.items = items
//    }
    
    func totalPriceInCents() -> Int {
        var price = 0
        
        for item in items {
            price += item.priceInCents
        }
        
        return price
    }
    
    func add(item: Item) {
        items.append(item)
    }
    
    func remove(item: Item) {
        if let delete = items.index(of: item) {
            items.remove(at: delete)
        }
    }
    
    func items(withName name: String) -> [Item] {
        var matchesString = [Item]()
        
        for item in items {
            if item.name == name {
                matchesString.append(item)
            }
        }
        
        return matchesString
    }
    
    func items(withMinPrice price: Int) -> [Item] {
        var isGreaterThan = [Item]()
        
        for item in items {
            if item.priceInCents >= price {
                isGreaterThan.append(item)
            }
        }
        
        return isGreaterThan
        
    }
    
    func items(withMaxPrice price: Int) -> [Item] {
        var isLessThan = [Item]()
        
        for item in items {
            if item.priceInCents <= price {
                isLessThan.append(item)
            }
        }
        
        return isLessThan
        
    }
    
    
}
