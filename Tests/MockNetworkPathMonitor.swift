//
//  MockNetworkPathMonitor.swift
//  NetworkMonitoringServiceTests
//
//  Created by Josh Robbins on 1/24/24.
//

import Combine
import Foundation
import NetworkMonitoringService

// MARK: - MockNetworkPathMonitor

final class MockNetworkPathMonitor: NetworkPathMonitorProtocol {

  var networkPathPublisher: AnyPublisher<NetworkPath, Never>?
  private let subject = PassthroughSubject<NetworkPath, Never>()

  // MARK: - Initialization

  init() {
    self.networkPathPublisher = subject.eraseToAnyPublisher()
  }

  // MARK: - Callbacks

  func start() {}

  func stop() {}

  func send(networkPath: NetworkPath) {
    subject.send(networkPath)
  }
}
