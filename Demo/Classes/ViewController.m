//
//  ViewController.m
//  SBStackedBarChart
//
//  Created by Scott Bossak on 12/26/11.
//  Copyright (c) 2011 Scott Bossak. All rights reserved.
//

#import "ViewController.h"
#import "SBStackedBarChart.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create a horizontal chart
    SBBarChart *horizontal = [[SBBarChart alloc] initWithFrame:CGRectMake(10, 20, 300, 40)];
    [horizontal setHorizontal:YES];
    [self.view addSubview:horizontal];
    
    SBBarChart *vertical = [[SBBarChart alloc] initWithFrame:CGRectMake(10, 80, 50, 320)];
    [vertical setHorizontal:NO];
    [self.view addSubview:vertical];
    
    // Create 4 segments for chart
    NSMutableArray *segments = [[NSMutableArray alloc] initWithCapacity:4];
    
    for (int i = 0; i <= 4; i++) {
        
                                                                    // Value randomly generated for demo
        SBBarSegment *segment = [SBBarSegment barComponentWithValue:(arc4random() % 10) + 1];
                
        switch (i) {
            case 0:
                segment.color = UIColorFromRGB(0x202B30);   // Segment color
                break;
            case 1:
                segment.color = UIColorFromRGB(0x4E7178);
                break;
            case 2:
                segment.color = UIColorFromRGB(0x4FA9B8);
                break;
            case 3:
                segment.color = UIColorFromRGB(0x74C0CF);
                break;   
            case 4:
                segment.color = UIColorFromRGB(0xF1F7E2);
                break;
            default:
                segment.color = UIColorFromRGB(0xF1F7E2);
                break;
        }
        
        [segments addObject:segment];

    }
    
    
    [horizontal setSegments:segments];  // Set segments for horizontal chart
    [vertical setSegments:segments];    // Set segments for vertical chart
    [segments release];
    
    [horizontal release];
    [vertical release];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

@end
