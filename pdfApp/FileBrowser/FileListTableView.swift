//
//  FlieListTableView.swift
//  FileBrowser
//
//  Created by Roy Marmelstein on 14/02/2016.
//  Copyright © 2016 Roy Marmelstein. All rights reserved.
//

import Foundation
import UIKit

extension FileListViewController: UITableViewDataSource, UITableViewDelegate {
    
    //MARK: UITableViewDataSource, UITableViewDelegate
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if searchController.active {
            return 1
        }
        return sections.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.active {
            return filteredFiles.count
        }
        return sections[section].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "FileCell"
        var cell = UITableViewCell(style: .Subtitle, reuseIdentifier: cellIdentifier)
        if let reuseCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) {
            cell = reuseCell
        }
        cell.selectionStyle = .Blue
        let selectedFile = fileForIndexPath(indexPath)
        cell.textLabel?.text = selectedFile.displayName
        cell.imageView?.image = selectedFile.type.image()
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedFile = fileForIndexPath(indexPath)
        searchController.active = false
        if selectedFile.isDirectory {
            let fileListViewController = FileListViewController(initialPath: selectedFile.filePath)
            fileListViewController.didSelectFile = didSelectFile
            self.navigationController?.pushViewController(fileListViewController, animated: true)
        }
        else {
            if let didSelectFile = didSelectFile {
                self.dismiss()
                didSelectFile(selectedFile)
            }
            else {
                let filePreview = previewManager.previewViewControllerForFile(selectedFile, fromNavigation: true)
                self.navigationController?.pushViewController(filePreview, animated: true)
            }
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if searchController.active {
            return nil
        }
        if sections[section].count > 0 {
            return collation.sectionTitles[section]
        }
        else {
            return nil
        }
    }
    
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        if searchController.active {
            return nil
        }
        return collation.sectionIndexTitles
    }
    
    func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
        if searchController.active {
            return 0
        }
        return collation.sectionForSectionIndexTitleAtIndex(index)
    }
    
//    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        return true
//    }
//    
//    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if (editingStyle == UITableViewCellEditingStyle.Delete) {
//            // handle delete (by removing the data from your array and updating the tableview)
//            removeFileForIndexPath(indexPath)
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//        }
//    }
//    
//     func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//       // let the controller to know that able to edit tableView's row
//       return true
//    }
//
//     func tableView(tableView: UITableView, commitEdittingStyle editingStyle UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)  {
//       // if you want to apply with iOS 8 or earlier version you must add this function too. (just left in blank code)
//    }
//
// func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]?  {
//   // add the action button you want to show when swiping on tableView's cell , in this case add the delete button.
//   let deleteAction = UITableViewRowAction(style: .Default, title: "Delete", handler: { (action , indexPath) -> Void in
//
//   // Your delete code here.....
//   
//   })
//
//   // You can set its properties like normal button
//   deleteAction.backgroundColor = UIColor.redColor()
//
//   return [deleteAction]
//}
    
}