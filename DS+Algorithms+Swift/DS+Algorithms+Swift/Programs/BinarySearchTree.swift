//
//  BinarySearchTree.swift
//  AllTheAlgos
//
//  Created by kiranjith on 20/08/2022.
//

import Foundation





 class BST {
    var value: Int
    var left: BST?
    var right: BST?
    
    init(value: Int) {
          self.value = value
          left = nil
          right = nil
    }
    
    func insert(value: Int) -> BST {
        if self.value <= value   {
            if let right = right {
                return right.insert(value: value)
            } else {
              right =  BST(value: value)
              
            }
        } else {
            if let left = left {
                return   left.insert(value: value)
            } else {
             left =  BST(value: value)
              
            }
        }
        return self
    }
    
    
    func contains(value: Int) -> Bool {
        if self.value == value {
            return true
        } else if self.value < value {
            if let right = right {
                return right.contains(value: value)
            } else {
                return false
            }
        } else {
            if let left = left {
                return left.contains(value: value)
            }
            else {
                return false
            }
        }
       
    }

    
    func remove(value: Int?, parentNode: BST?) -> BST {
  
            if let valueToRemove = value, self.value < valueToRemove {
                right?.remove(value: valueToRemove, parentNode: self)
            } else if let valueToRemove = value, self.value > valueToRemove {
                left?.remove(value: valueToRemove, parentNode: self)
            } else {
                if let right = right, let left = left {
                    self.value = right.findMinInTree()
                    self.right?.remove(value: self.value, parentNode: self)
                }  else if let parent = parentNode, let left = parent.left, left === self {
                    
                    if let left = self.left {
                        parentNode?.left = left
                    } else if let right = self.right {
                        parentNode?.left = right
                    } else {
                        parentNode?.left = nil
                    }
                    
                } else if let parent = parentNode, let right = parent.right, right === self  {
                    if let left = self.left {
                        parentNode?.right = left
                    } else if let right = self.right {
                        parentNode?.right = right
                    } else {
                        parentNode?.right = nil
                    }
                   
                }  else if parentNode == nil {
                    if let left = self.left {
                        self.value = left.value
                        self.left = left.left
                        self.right = left.right
                    } else if let right = self.right {
                        self.value = right.value
                        self.right = right.right
                        self.left = right.left
                    }
                }
            }
          return self
    }
    
    private func findMinInTree() -> Int {
        if let left = self.left {
            return  left.findMinInTree()
        } else {
            return value
        }
    }
     
//     func validateBst(tree: BST) -> Bool {
//         if tree.left == nil, tree.right == nil {
//             return true
//         }
//         if let leftChild = tree.left, leftChild.value < tree.value, tree.right == nil {
//             return validateBst(tree: leftChild)
//         }
//         if let rightChild = tree.right, rightChild.value >= tree.value, tree.left == nil {
//             return validateBst(tree: rightChild)
//
//         } else  if let rightChild = tree.right, rightChild.value >= tree.value ,  let leftChild = tree.left, leftChild.value < tree.value {
//             return validateBst(tree: leftChild) && validateBst(tree: rightChild)
//         }
//         return false
//       }
     
     func traverseBreadth() {
         if self.left == nil, self.right == nil {
             print(self.value)
            return
         }
         if let leftChild = self.left{
             leftChild.traverseBreadth()
         }
         print(self.value)
         if let rightChild = self.right {
             rightChild.traverseBreadth()
            
         }
        
     }
     
//     func validateBst(tree: BST) -> Bool {
//         ValidateNodeWithMinAndMax(tree: tree, min: Int.min, max: Int.max)
//     }
     
     private func ValidateNodeWithMinAndMax(tree: BST?, min: Int, max: Int) -> Bool {
         if tree == nil {
             return true
         }
         if  let value = tree?.value , value < min || value >= max {
             return false
         }
         if  let treeValue =  tree?.value, treeValue < max, treeValue > min {
                     if  tree?.left == nil, tree?.right == nil {
                          return true
                      }
                     
                          let leftValid = ValidateNodeWithMinAndMax(tree: tree?.left, min: min, max: treeValue)
                      
                      
                      
                          let rightValid =  ValidateNodeWithMinAndMax(tree: tree?.right, min: treeValue, max: max)
                      return leftValid && rightValid
                      
                  } else  {
                     return false
                  }
                 
             }
     func inorderTraversal() {
         var array = [Int]()
         
           let traversal  =   inOrderTraversal(tree: self, array: &array)
         
        
     }
            
     private func inOrderTraversal(tree: BST?, array: inout [Int]) -> [Int] {
         
         if let tree = tree, tree.left == nil , tree.right == nil {
             array.append(tree.value)
             return array
         }
         if let leftNode = tree?.left {
             inOrderTraversal(tree: leftNode, array: &array)
         }
         if let value = tree?.value {
             array.append(value)
         }
         if let rightNode = tree?.right {
             inOrderTraversal(tree: rightNode, array: &array)
         }
         return array
         
     }
     
    
    
}
