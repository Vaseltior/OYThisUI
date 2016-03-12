//
//  UITableView+Height.swift
//  OYThisUI
//
//  Created by Samuel Grau on 12/03/2016.
//  Copyright © 2016 Samuel GRAU. All rights reserved.
//

import UIKit


extension UITableView {
  /**
   This returns the height of the tableview
   
   - returns: The full height of the table view considering the data that it displays
   */
  public func oytTableViewHeight() -> CGFloat {
    self.setNeedsLayout()
    self.layoutIfNeeded()
    let height = self.contentSize.height
    return height
  }
  
  /**
   Tell if the table view has at least one row selected or not
   - returns: `true`if at least one row is selected, otherwise, returns `false`
   */
  public func oytHasAtLeastOneRowSelected() -> Bool {
    return self.indexPathsForSelectedRows != nil
  }
}
