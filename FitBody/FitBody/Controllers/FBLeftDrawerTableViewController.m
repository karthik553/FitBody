//
//  FBLeftDrawerTableViewController.m
//  FitBody
//
//  Created by Manikanta.Sanisetty on 10/15/13.
//  Copyright (c) 2013 SD. All rights reserved.
//

#import "FBLeftDrawerTableViewController.h"
#import "UIViewController+MMDrawerController.h"
#import "FBLibraryTableViewController.h"
#import "FBHomeTableViewController.h"

@interface FBLeftDrawerTableViewController (){
    NSArray *featureTitles;
}

@end

@implementation FBLeftDrawerTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    featureTitles = @[@"Home", @"Library"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return featureTitles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    // Configure the cell...
    if (self.currentSelectedIndex == indexPath.row) {
        [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    }
    cell.textLabel.text = [featureTitles objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *previouslySelectedCell = [tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:self.previousSelectedIndex inSection:0]];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [previouslySelectedCell setAccessoryType:UITableViewCellAccessoryNone];
    [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    if (indexPath.row == 0 && self.previousSelectedIndex != indexPath.row) {
        self.previousSelectedIndex = 0;
        self.currentSelectedIndex = 0; //Current selected index == indexpath.row
        FBHomeTableViewController *homeTableViewController = [[FBHomeTableViewController alloc] init];
        UINavigationController *homeNavigationController = [ [UINavigationController alloc] initWithRootViewController:homeTableViewController];
        [self.mm_drawerController setCenterViewController:homeNavigationController withCloseAnimation:YES completion:nil];
    } else if (indexPath.row == 1 && self.previousSelectedIndex != indexPath.row) {
        self.previousSelectedIndex = 1;
        self.currentSelectedIndex = 1;//Current selected index == indexpath.row
        FBLibraryTableViewController *libraryTableViewController = [[FBLibraryTableViewController alloc] init];
        UINavigationController *libraryNavigationController = [ [UINavigationController alloc] initWithRootViewController:libraryTableViewController];
        [self.mm_drawerController setCenterViewController:libraryNavigationController withCloseAnimation:YES completion:nil];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
