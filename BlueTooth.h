//
//  BlueTooth.h
//  MervinBlueToothPrinter
//
//  Created by Mervin on 2017/7/10.
//  Copyright © 2017年 Mervin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import <UIKit/UIKit.h>

@interface BlueTooth : NSObject

+ (BlueTooth *)shareBlueTooth;

@property (strong, nonatomic) CBCharacteristic * characteristic;
@property (strong, nonatomic) CBPeripheral     * peripheral;
@property (strong, nonatomic) CBCentralManager * manager;

@property (assign, nonatomic) id               parentVC;

- (void)printStringWithContent:(NSString *)string;

@end
