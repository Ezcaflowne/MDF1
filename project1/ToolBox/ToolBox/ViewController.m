//
//  ViewController.m
//  ToolBox
//
//  Created by Willson Ayotte (NEW) on 5/8/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //hide done button at load
    doneBtn.hidden = true;
    toolBoxArray = [[NSMutableArray alloc] initWithObjects:
                    @"Philips screwdriver",
                    @"Flathead screwdriver",
                    @"Tape measure",
                    @"Level",
                    @"Utility knife",
                    @"Hammer",
                    @"Putty knife",
                    @"Nail set",
                    @"Combination square",
                    @"Pliers",
                    @"Crescent wrench",
                    @"Wire stripper",
                    @"Hex key tool or Allen key",
                    @"Power drill",
                    @"Electrical cord",
                    @"C-clamp",
                    @"Flashlight",
                    @"Ladder or step stool",
                    @"Broom and dustpan",
                    @"Music Box", nil];
    toolKindArray = [[NSMutableArray alloc] initWithObjects:
                     @"Hand",
                     @"Hand",
                     @"Hand",
                     @"Hand",
                     @"Hand",
                     @"Hand",
                     @"Hand",
                     @"Hand",
                     @"Hand",
                     @"Hand",
                     @"Hand",
                     @"Hand",
                     @"Hand",
                     @"Power",
                     @"Extension",
                     @"Hand",
                     @"Hand",
                     @"Extension",
                     @"Hand",
                     @"Atmospheric", nil];
    infoArray = [[NSMutableArray alloc] initWithObjects:
                 @"A Philips or X-shape screwdriver is probably one of the most common tools in any toolbox. If you have a have a handle that accepts interchangeable tips, you can cover a wide range of screw types and sizes.",
                 
                 @"A flathead or straight screwdriver is invaluable; most light switch plates use straight screws, for example. Having the right size flathead can make a difference, so start with at least a set of three (small, medium and large) to be able to handle most jobs.",
                 
                 @"Your tape measure is indispensable for estimating material quantities, figuring out placement of objects, and calculating floor plans and furniture sizes. It's always a good idea to measure more than once to make sure you've got it right.",
                 
                 @"Some people are good at eyeballing whether something is level or not, but this tool takes all the guesswork away. It takes only a slight error to make objects look off-kilter.",
                 
                 @"From cutting paint around windows that are stuck closed to opening boxes, scoring drywall or even trimming the edges of carpet, the uses are so many that you'll be surprised how you ever got by without one.",
                 
                 @"Pounding nails, pulling nails, crowbar action, tapping things into place — it almost goes without saying why you need hammer. An expensive hammer is long and lightweight; its leverage can assist you when you take that wall down.",
                 
                 @"A putty knife is great for scraping dry glues and paints and for spreading putty, paste and spackle. Having a 1½-inch size for scraping and a 5- or 6-inch one for spreading is helpful.",
                 
                 @"A nail set is used for sinking nail heads below the surface of the wood, so that you can then fill the hole with wood putty and sand it, to make the nail disappear. This way the hammer never has to make an ugly dent in the surface you are pounding.",
                 
                 @"This multiuse tool can verify 90- and 45-degree angles for miter cuts, measure depths and short distances, and is great for scribing a straight line. It also has a vial to make sure your project is level or plumb.",
                 
                 @"The serrated jaws of pliers assist with holding objects firmly, as well as with pulling, pinching or bending metal.",
                 
                 @"There is a screw built into the head of this wrench; turning it adjusts the size of the opening, so that it fits onto most any hexagonal nut. Turning a nut with pliers just strips the edges, making it harder and harder to get a good grip when tightening or loosening it.",
                 
                 @"This wire stripper has a blade for cutting wire to the proper length and several notches for scoring the insulation around wires of varying sizes, which can then be pulled off. Wire has to be exposed without the plastic coating to make electrical connections.",
                 
                 @"Some screws, especially bicycles and assemble-it-yourself furniture for which a flush screw is necessary, use hexagonal sockets. Multiple hex key sizes can be purchased separately and the leverage on these is better, but a jackknife-style set such as this provides everything you need in one tool.",
                 
                 @"Drilling implies creating holes, and a power drill is the ultimate luxury when tired hands have turned too many screws. It adapts not only to drill bits to bore holes, but also to every kind of screw-head bit, making larger projects go quickly and with less muscle. Just be careful to stop when the fastener is tight so you don't strip the screw head. Don't skimp on this tool — you will appreciate having a lot of power.",
                 
                 @"A rugged, well-insulated indoor-outdoor power cord for high-amp tools will help you extend the limited cord of your tools to your job site — and it's suitable for yard work too.",
                 
                 @"This tool can hold pieces of wood, metal, or plastic together when you need to glue, saw or file them. Use a thin shim between the clamp and the object you are working on so the clamp doesn't mar the surface.",
                 
                 @"Necessary repairs can happen in dark, cramped spaces and even when the power is out. Plus, everyone loves to help by holding the flashlight for you. They don't work without batteries, so have extras on hand.",
                 
                 @"Painting, reaching the lightbulb, changing fixtures, trimming the hedge, stringing lights, getting into the attic and many more activities require the aid of a ladder.",
                 
                 @"When projects get messy, save your household broom from harsh debris by having a dedicated set.",
                 
                 @"Every job is made easier with music or talk radio. This is why hardware stores sell radios, although those are more rugged, with rechargeable battery packs that can also be used in your cordless tools. More rugged means when you drop your hammer on it, you just pick it up and get back to work.", nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)viewDidAppear:(BOOL)animated
{
    
    [super viewDidAppear:animated];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [toolBoxArray count];
}

//on click of delete button
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    //if delete button is clicked
    if(button.tag == 0)
    {
        //display done button
        doneBtn.hidden = false;
        //in edit mode
        [toolTable setEditing:true];
        
    }
    //if done button is clicked
    else if(button.tag == 1)
    {
        //get out edit mode
        [toolTable setEditing:false];
        //hide done button
        doneBtn.hidden = true;
    }
    
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //In editing mode
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"we want to delete row= %d name= %@", indexPath.row, [toolBoxArray objectAtIndex:indexPath.row]);
        
        //Delete row from array
        [toolBoxArray removeObjectAtIndex:indexPath.row];
        //Delete row from tableView
        [toolTable deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
        
        NSLog(@"We have successfully deleted row = %d", indexPath.row);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    TableViewController *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    {
        
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"TableViewController" owner:nil options:nil];
        for(UIView *view in views)
        {
            if([view isKindOfClass:[TableViewController class]])
            {
                
                cell = (TableViewController*)view;
                //add arrays to rows
                cell.toolName.text = [toolBoxArray objectAtIndex:indexPath.row];
                cell.kindLabel.text = [toolKindArray objectAtIndex:indexPath.row];
            }
        }
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //catches what row is selected
    NSLog(@"row=%d name=%@", indexPath.row, [toolBoxArray objectAtIndex:indexPath.row]);
    
    //open second view
    DetailViewController *secondView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(secondView != nil)
    {
        //secondView.delegate = self;
        [self presentViewController:secondView animated:true completion:nil];
        secondView.toolLabel.text = [toolBoxArray objectAtIndex:indexPath.row];
        secondView.kind.text = [toolKindArray objectAtIndex:indexPath.row];
        secondView.info.text = [infoArray objectAtIndex:indexPath.row];
    }
    
    
}
- (void)dealloc {
    [toolTable release];
    [super dealloc];
}

@end
