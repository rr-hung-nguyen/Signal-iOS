//
// Copyright 2024 Signal Messenger, LLC
// SPDX-License-Identifier: AGPL-3.0-only
//

// Code generated by Wire protocol buffer compiler, do not edit.
// Source: BackupProto.BackupProtoGroupMemberJoinedUpdate in Backup.proto
import Foundation
import Wire

public struct BackupProtoGroupMemberJoinedUpdate {

    public var newMemberAci: Foundation.Data
    public var unknownFields: UnknownFields = .init()

    public init(newMemberAci: Foundation.Data) {
        self.newMemberAci = newMemberAci
    }

}

#if !WIRE_REMOVE_EQUATABLE
extension BackupProtoGroupMemberJoinedUpdate : Equatable {
}
#endif

#if !WIRE_REMOVE_HASHABLE
extension BackupProtoGroupMemberJoinedUpdate : Hashable {
}
#endif

extension BackupProtoGroupMemberJoinedUpdate : Sendable {
}

extension BackupProtoGroupMemberJoinedUpdate : ProtoMessage {

    public static func protoMessageTypeURL() -> String {
        return "type.googleapis.com/BackupProto.BackupProtoGroupMemberJoinedUpdate"
    }

}

extension BackupProtoGroupMemberJoinedUpdate : Proto3Codable {

    public init(from protoReader: ProtoReader) throws {
        var newMemberAci: Foundation.Data = .init()

        let token = try protoReader.beginMessage()
        while let tag = try protoReader.nextTag(token: token) {
            switch tag {
            case 1: newMemberAci = try protoReader.decode(Foundation.Data.self)
            default: try protoReader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try protoReader.endMessage(token: token)

        self.newMemberAci = newMemberAci
    }

    public func encode(to protoWriter: ProtoWriter) throws {
        try protoWriter.encode(tag: 1, value: self.newMemberAci)
        try protoWriter.writeUnknownFields(unknownFields)
    }

}

#if !WIRE_REMOVE_CODABLE
extension BackupProtoGroupMemberJoinedUpdate : Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringLiteralCodingKeys.self)
        self.newMemberAci = try container.decode(stringEncoded: Foundation.Data.self, forKey: "newMemberAci")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringLiteralCodingKeys.self)
        let includeDefaults = encoder.protoDefaultValuesEncodingStrategy == .include

        if includeDefaults || !self.newMemberAci.isEmpty {
            try container.encode(stringEncoded: self.newMemberAci, forKey: "newMemberAci")
        }
    }

}
#endif