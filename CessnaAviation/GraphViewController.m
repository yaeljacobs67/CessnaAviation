//
//  GraphViewController.m
//  CessnaAviation
//
//  Created by Michael Baptist on 9/24/14.
//  Copyright (c) 2014 Michael Baptist. All rights reserved.
//

#import "CorePlot-CocoaTouch.h"
#import "GraphViewController.h"

@interface GraphViewController () <CPTPlotDataSource>
@property (nonatomic, strong) CPTGraphHostingView *graphView;

- (void)setupGraph;

- (CGRect)getInterfaceCoords:(UIScreen *)screen;

@end

@implementation GraphViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupGraph];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupGraph {
    self.graphView = [[CPTGraphHostingView alloc] initWithFrame:[self getInterfaceCoords:[UIScreen mainScreen]]];
    CPTXYGraph *graph = [[CPTXYGraph alloc] initWithFrame:self.graphView.frame];
    self.graphView.hostedGraph = graph;
    
}

- (CGRect)getInterfaceCoords:(UIScreen *)screen {
    if ([self respondsToSelector:@selector(fixedCoordinateSpace)]) {
        return [screen.coordinateSpace convertRect:screen.bounds toCoordinateSpace:screen.fixedCoordinateSpace];
    } else {
        return screen.bounds;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end



