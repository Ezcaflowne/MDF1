//
//  FirstViewController.m
//  project4
//
//  Created by Willson Ayotte (NEW) on 5/28/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

// pulling in all the files needed to process code
#import "FirstViewController.h"
#import "DataManager.h"
#import "Movie.h"
#import "DetailViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Top 10 Movies of 2013", @"Top 10 Movies of 2013");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    
    // creating the from the web service url
    url = [[NSURL alloc] initWithString:@"http://imdbapi.org/?ids=tt1905041%2Ctt1951261%2Ctt1408101%2Ctt0848537%2Ctt1300854%2Ctt1343092%2Ctt1935179%2Ctt0453562%2Ctt0481499%2Ctt1483013&type=xml&plot=simple&episode=1&lang=en-US&aka=simple&release=simple&business=0&tech=0"];
    
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}
// Making the url connection
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    // check if data is valid
    if (data != nil)
    {
        // add this to existing requestData
        DataManager *manager = [DataManager shareDataManager];
        NSMutableData *someData = manager.dataStore;
        [someData appendData:data];
    }
}

// this function is called once all data is loaded from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    DataManager *manager = [DataManager shareDataManager];
    NSMutableData *someData = manager.dataStore;
    
    xmlParser= [[NSXMLParser alloc] initWithData:someData];
    if (xmlParser != nil)
    {
        [xmlParser setDelegate:self];
        [xmlParser parse];
    }
}
// identifying the contents to be parsed and string
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if (!currentValue)
    {
        currentValue = [[NSMutableString alloc] initWithString:string];
    } else {
        [currentValue appendString:string];
    }
}
// Starting the parse procedure
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if (counterInt <= 10)
    {
        if ([elementName isEqualToString:@"item"])
        {
            myMovie = [[Movie alloc] init];
        }
    } else
    {
        [xmlParser abortParsing];
        [myTableView reloadData];
    }
    
}
// implementing and pulling the parsed info
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if (counterInt <= 10)
    {
        DataManager *manager = [DataManager shareDataManager];
        NSMutableArray *array = manager.myArray;
        
        if ([elementName isEqualToString:@"title"])
        {
            [myMovie setValue:currentValue forKey:@"titleName"];
            //currentValue = nil;
        }
        if ([elementName isEqualToString:@"item"])
        {
            [myMovie setValue:currentValue forKey:@"directors"];
            currentValue = nil;
        }
        if ([elementName isEqualToString:@"item"])
        {
            [myMovie setValue:currentValue forKey:@"genres"];
            currentValue = nil;
        }
        if ([elementName isEqualToString:@"imdb_url"])
        {
            [myMovie setValue:currentValue forKey:elementName];
            currentValue = nil;
            
            
        }
        if ([elementName isEqualToString:@"title"])
        {
            [array addObject:myMovie];
            NSLog(@"%d", array.count);
            counterInt ++;
        }
        currentValue = nil;
    }
    
}

-(void)parserDidEndDocument:(NSXMLParser *)parser
{
    
    //Reloads table so it shows updated information
    [myTableView reloadData];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// tableview - number of rows in section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    DataManager *manager = [DataManager shareDataManager];
    NSMutableArray *array = manager.myArray;
    return [array count];
}

// tableview - indexpath to which cell path
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    DataManager *manager = [DataManager shareDataManager];
    NSMutableArray *array = manager.myArray;
    cell.textLabel.text = [[array objectAtIndex:indexPath.row] titleName];
    cell.textLabel.highlightedTextColor = [UIColor redColor];
    cell.textLabel.font = [UIFont systemFontOfSize:16.0f];
    
    return cell;
    
}
// one of the cells on tableview is selected
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DataManager *manager = [DataManager shareDataManager];
    NSMutableArray *array = manager.myArray;
    
    DetailViewController *myView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if (myView != nil)
    {
        myView.theDirectors = [[array objectAtIndex:indexPath.row] directors];
        myView.theGenres = [[array objectAtIndex:indexPath.row] genres];
        myView.theUrl = [[array objectAtIndex:indexPath.row] imdb_url];
        
        [self.navigationController pushViewController:myView animated:true];
    }
    
    
}



@end
