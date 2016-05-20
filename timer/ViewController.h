//
//  ViewController.h
//  timer
//
//  Created by Mac on 19/05/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *display;
    NSTimer *timer;
    
    
}


-(IBAction)start:(id)sender;
-(IBAction)stop:(id)sender;
-(IBAction)restart:(id)sender;

@end

