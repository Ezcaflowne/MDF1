//
//  SecondViewController.m
//  project2
//
//  Created by Willson Ayotte (NEW) on 5/13/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "SecondViewController.h"
#import "DetailViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"2012 Top 5", @"2012 Top 5");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //table array
    movieTitleArray = [[NSMutableArray alloc] initWithObjects:
                       @"Iron Man 3",
                       @"The Fast and The Furious 6",
                       @"Man of Steel",
                       @"Thor 2: The Dark Worlds",
                       @"The Hunger Games: Catching Fire", nil];
    //info array
    infoArray = [[NSMutableArray alloc] initWithObjects:
                 @"Robert Downey Jr. will be back for the third and probably the final installment of 'Iron Man.' After the success of the two previous movies, the producers and actors are expecting the same feedback from the moviegoers. 'Iron Man 3' will be released on May 3 in the US and on April 25 in Australia.",
                 @"The action packed movie is back for their sixth movie. The movie will once again thrill their fans with adrenaline pumping action as well as jaw-dropping race cars. 'The Fast and The Furious 6' will have a star studded cast which includes Vin Diesel, Paul Walker, Dwayne Johnson, Luke Evans, Michelle Rodriguez and many more. It will be released on May 24 in the US and in June 6 in Australia.",
                 @"'Superman' is back on screen and his fans are thrilled. Henry Cavill will portray the coveted role of 'Superman' and along with him stars Russell Crowe, Amy Adams and Kevin Costner. It will hit the cinemas on June 14 in the US and in June 13 in Australia",
                 @"Chris Hemsworth and Natalie Portman will be reunited on screen in the second installment of 'Thor.' The geeky scientist will once again reunite with the God of Thunder in the action-fantasy film. However, fans need to wait a little bit longer since the movie will be released in November 8 in the US.",
                 @"Hunger Games, fans will have their Christmas present before 2013 ends. 'Hunger Games: Catching Fire' will finally be back with its original casts, Jennifer Lawrence, Josh Hutcherson and Liam Hemsworth. The anticipated movie is set for release in November 21 in Australia and November 22 in the US.", nil];
    //database URL as string
    databaseURL = @"Database URL:\nhttp://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=bwh&AN=407478.20121122&site=ehost-live";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//add rows to table view
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [movieTitleArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //create cell identifier
    static NSString *CellIdentifier = @"Cell";
    
    //create instance of tableView
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        //create instance of tableView cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    //add text to cell
    cell.textLabel.text = (NSString *)[movieTitleArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //catches what row is selected
    NSLog(@"row=%d name=%@", indexPath.row, [movieTitleArray objectAtIndex:indexPath.row]);

    //open second view
    DetailViewController *secondTableView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(secondTableView != nil)
    {
        [self presentViewController:secondTableView animated:true completion:nil];
        //add movie title to detail view
        secondTableView.movieTitleLabel.text = [movieTitleArray objectAtIndex:indexPath.row];
        //added this to shorten the long title names. (smaller font actaully)
        secondTableView.movieTitleLabel.font = [UIFont systemFontOfSize:14];
        //add info to detail view
        secondTableView.reviewLabel.text = [infoArray objectAtIndex:indexPath.row];
        //add database URL to detail view
        secondTableView.databaseLabel.text = databaseURL;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
