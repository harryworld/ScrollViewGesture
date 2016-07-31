//
//  MyScrollView.swift
//  ScrollViewGesture
//
//  Created by Harry Ng on 31/7/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa

class MyScrollView: NSScrollView {
    
    var pan: NSPanGestureRecognizer!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        pan = NSPanGestureRecognizer(target: self, action: #selector(MyScrollView.panned(_:)))
        addGestureRecognizer(pan)
    }
    
    func panned(pan: NSPanGestureRecognizer) {
        Swift.print("pan")
    }

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
    
    override func scrollWheel(theEvent: NSEvent) {
        
        Swift.print(theEvent.scrollingDeltaY)
        var newFrame = self.frame
        newFrame.origin.y -= theEvent.scrollingDeltaY
        self.frame = newFrame
        
        super.scrollWheel(theEvent)
    }
}
