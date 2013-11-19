//
//  FBExerciseDetailsTableViewController.m
//  FitBody
//
//  Created by Manikanta.Sanisetty on 11/8/13.
//  Copyright (c) 2013 SD. All rights reserved.
//

#import "FBExerciseDetailsTableViewController.h"
#import "FBDataSource.h"
#import "FBConstants.h"
#import "Exercise.h"
#import "FBExerciseDetailsTableViewCustomCell.h"

@interface FBExerciseDetailsTableViewController ()
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultController;
@end

@implementation FBExerciseDetailsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSFetchedResultsController *)fetchedResultController {
    if (!_fetchedResultController) {
        _fetchedResultController = [[FBDataSource sharedManager] fetchExerciseDetailsForKey:self.exerciseDetailsKey];
    }
    return _fetchedResultController;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self.navigationController setTitle:kExercises];
    [self.tableView registerNib:[UINib nibWithNibName:kFBExerciseDetialsTableViewCustomCell bundle:nil] forCellReuseIdentifier:kFBExerciseDetialsCellIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat height = 0;
    Exercise *exercise = [[self.fetchedResultController fetchedObjects] objectAtIndex:indexPath.row];
    /*
     * exercise.name sizeWithFont:<#(UIFont *)#> forWidth:<#(CGFloat)#> lineBreakMode:<#(NSLineBreakMode)#> 
     * Deprecated in iOS7
     */
    CGRect rect = [exercise.name boundingRectWithSize:(CGSize){161, CGFLOAT_MAX} options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:17]} context:nil];
    if (ceil(rect.size.height) > 80) {
        height = ceil(rect.size.height) + 10;
    } else {
        height = 80;
    }
    return height;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [[self.fetchedResultController sections] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    id sectionInfo = [[self.fetchedResultController sections] objectAtIndex:section];
    return [sectionInfo numberOfObjects];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = kFBExerciseDetialsCellIdentifier;
    FBExerciseDetailsTableViewCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    Exercise *exercise = [[self.fetchedResultController fetchedObjects] objectAtIndex:indexPath.row];
    
    return cell;
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
