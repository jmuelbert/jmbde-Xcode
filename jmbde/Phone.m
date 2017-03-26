//
//  Phone.m
//  jmbde
//
//  Created by Jürgen Mülbert on 24.03.14.
//  Copyright (c) 2014 Jürgen Mülbert. All rights reserved.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the European Union Public License (EUPL),
// version 1.1.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// European Union Public License for more details.
//
// You should have received a copy of the European Union Public Licence
// along with this program. If not, see
// http://www.osor.eu/eupl/european-union-public-licence-eupl-v.1.1
//


#import "Phone.h"
#import "Employee.h"


@implementation Phone

@dynamic number;
@dynamic pin;
@dynamic department;
@dynamic devicename;
@dynamic devicetype;
@dynamic employee;
@dynamic inventory;
@dynamic manufacturer;
@dynamic place;

- (void)awakeFromInsert {
    [super awakeFromInsert];
    
    self.number = NSLocalizedString(@"001", @"The Phone Number");
}
@end