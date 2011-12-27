SBStackedBarChart
============

An iOS UIView subclass that displays a stacked bar chart either horizontally or vertically (default).


Screenshots
-----------

|iphone_demo_1|

.. |iphone_demo_1| image:: http://scottbossak.com/img/SBStackedBarChart.png


Usage
-----

The sample code below creates two charts, one vertical and one horizontal with 4 values randomly generated

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


License
-------

SBStackedBarChart is released under the MIT license.

SBStackedBarChart is copyright (c) Scott Bossak 2011.
