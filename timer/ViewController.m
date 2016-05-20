//
//  ViewController.m
//  timer
//
//  Created by Mac on 19/05/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

int timercount;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    timercount=0;
display.text=[NSString stringWithFormat:@"0"];// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)start:(id)sender{
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(count) userInfo:nil repeats:YES];
}
-(IBAction)stop:(id)sender{
    [timer invalidate];
}
-(IBAction)restart:(id)sender{
    timercount=0;
    [timer invalidate];
    display.text=[NSString stringWithFormat:@"0"];
}

-(void)count{
    timercount++;
    display.text=[NSString stringWithFormat:@"%i",timercount];
}

@end
