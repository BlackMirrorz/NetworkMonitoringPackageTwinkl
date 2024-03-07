//
//  NetworkPath.swift
//  NetworkMonitoringService
//
//  Created by Josh Robbins on 1/24/24.
//

import Network

/// Struct representing a network path with its status
public struct NetworkPath {

  var status: NWPath.Status
}

// Extension to create a NetworkPath from an NWPath
extension NetworkPath {

  public init(rawValue: NWPath) {
    self.status = rawValue.status
  }
}
