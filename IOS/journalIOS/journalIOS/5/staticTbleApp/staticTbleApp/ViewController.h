//
//  ViewController.h
//  staticTbleApp
//
//  Created by APPLE on 01/01/16.
//  Copyright © 2016 MScIT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *st1;
- (IBAction)btninsert:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *t1;

@end

