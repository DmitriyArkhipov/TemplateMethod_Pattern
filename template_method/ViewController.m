//
//  ViewController.m
//  template_method
//
//  Created by Dmitriy Arkhipov on 02.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ViewController.h"

#import "TemplateMethod.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    PotatoMeal* cookerPotato = [[PotatoMeal alloc] init];
//    
//    SaladMeal* cookerSalad = [[SaladMeal alloc] init];
    
    MealBase* cookerPotato = [[PotatoMeal alloc] init];

    MealBase* cookerSalad = [[SaladMeal alloc] init];
    
    
    [cookerPotato make];
    
    NSLog(@"********************************************************");
    
    [cookerSalad make];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
