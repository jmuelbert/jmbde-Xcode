//
//  Outine.swift
//  jmbde
//
//  Created by Jürgen Mülbert on 14.07.17.
//  Copyright (c) 2014-2017 Jürgen Mülbert. All rights reserved.
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

import Foundation

class Outline : NSObject {
    var name = ""
    var desc = ""
    var viewControllerIdentifier = ""
    
    init(name: String, description: String, viewControllerIdentifier: String) {
        self.name = name
        self.desc = description
        self.viewControllerIdentifier = viewControllerIdentifier
    }
}
