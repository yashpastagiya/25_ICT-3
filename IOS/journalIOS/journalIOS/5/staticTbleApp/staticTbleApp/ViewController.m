//
//  ViewController.m
//  staticTbleApp
//
//  Created by APPLE on 01/01/16.
//  Copyright © 2016 MScIT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *city;
   // NSArray *img;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    city=[[NSMutableArray alloc] initWithObjects:@"surat",@"Mumbai",@"Navsari", nil];
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [city count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *sid=@"static id";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:sid];
    
    if(cell==nil)
    {
         cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
               reuseIdentifier:sid] ;
        
    }
    
    cell.textLabel.text=[city objectAtIndex:indexPath.row];
    
//    img = [[NSArray alloc]initWithObjects:@"1.jpeg",@"2.jpeg",@"3.jpg" ,nil];

   // cell.imageView.image=[UIImage imageNamed:[img objectAtIndex:indexPath.row]];

    
    return cell;

}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if(indexPath==0)
//    {
//        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Alert Dialog" message:@"Surat selected" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
//        
//        [alert show];
//    }
    
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    
    cell.accessoryType=UITableViewCellAccessoryCheckmark;
    cell.accessoryType=UITableViewCellAccessoryDetailButton;
}


- (IBAction)btninsert:(id)sender {
    
    [city addObject:_t1.text];
    NSArray *paths=[NSArray arrayWithObject:[NSIndexPath indexPathForRow:[city count]-1 inSection:0]];
    
    [_st1 insertRowsAtIndexPaths:paths withRowAnimation:UITableViewRowAnimationTop];
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [city removeObjectAtIndex:indexPath.row];
    [tableView reloadData];
}
@end
