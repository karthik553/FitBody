//
//  FBLibraryTableViewController.m
//  FitBody
//
//  Created by Manikanta.Sanisetty on 10/16/13.
//  Copyright (c) 2013 SD. All rights reserved.
//

#import "FBLibraryTableViewController.h"
#import "Exercise.h"
#import "FBDataSource.h"
#import "FBConstants.h"
#import "FBLibraryTableViewCustomCell.h"
#import "FBExerciseDetailsTableViewController.h"
#import "UIViewController+MMDrawerController.h"
#import <RestKit/RestKit.h>

@interface FBLibraryTableViewController ()
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@end

@implementation FBLibraryTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSFetchedResultsController *)fetchedResultsController {
    if (!_fetchedResultsController) {
        _fetchedResultsController = [[FBDataSource sharedManager] fetchUniqueMainMuscleWorkouts];
    }
    return _fetchedResultsController;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self setupLeftBarButtonItem];
    [self.navigationItem setTitle:kLibrary];
    [self.tableView registerNib:[UINib nibWithNibName:kFBLibraryTableViewCustomCell bundle:nil] forCellReuseIdentifier:kFBLibraryCellIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 65;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [[self.fetchedResultsController sections] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    id sectionInfo = [[self.fetchedResultsController sections] objectAtIndex:section];
    return [sectionInfo numberOfObjects];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = kFBLibraryCellIdentifier;
    FBLibraryTableViewCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.targetedMuscleName = [[[self.fetchedResultsController fetchedObjects] objectAtIndex:indexPath.row] objectForKey:kMainMuscleWorked];
    return cell;
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
    [self.tableView reloadData];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:kMainStoryboard bundle:nil];
    FBExerciseDetailsTableViewController *controller = [storyboard instantiateViewControllerWithIdentifier:kFBExerciseDetialsTableViewControllerId];
    [controller setExerciseDetailsKey:[[[self.fetchedResultsController fetchedObjects] objectAtIndex:indexPath.row] objectForKey:kMainMuscleWorked]];
    [self.navigationController pushViewController:controller animated:YES];
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

#pragma mark - Helper Methods
- (void)setupLeftBarButtonItem {
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc]init];
    leftBarButtonItem.title = @"|||";
    leftBarButtonItem.target = self;
    [leftBarButtonItem setAction:@selector(leftBarButtonTapped:)];
    [self.navigationItem setLeftBarButtonItem:leftBarButtonItem];
}

#pragma mark - BarButtonItem action
- (void)leftBarButtonTapped:(id)sender {
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}
@end
