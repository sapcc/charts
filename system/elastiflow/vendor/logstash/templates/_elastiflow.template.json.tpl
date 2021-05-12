{
  "order": 0,
  "version": 40000,
  "index_patterns": "elastiflow-4.0.1-*",
  "settings": {
    "index": {
      "number_of_shards": {{ .Values.elastic.shards }},
      "number_of_replicas": {{ .Values.elastic.replicas }},
      "refresh_interval": "10s",
      "codec": "best_compression",
      "mapping": {
        "total_fields" : {
          "limit": 5000
        }
      },
      "lifecycle": {
        "name": "elastiflow"
      }
    }
  },
  "mappings": {
    "_meta" : {
      "beat" : "elastiflow",
      "version" : "4.0.1"
    },
    "_source" : {
      "enabled" : true
    },
    "numeric_detection": true,
    "dynamic_templates": [
      {
        "ipfix.octetDeltaCount": {
          "path_match": "ipfix.octetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.packetDeltaCount": {
          "path_match": "ipfix.packetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.deltaFlowCount": {
          "path_match": "ipfix.deltaFlowCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.protocolIdentifier": {
          "path_match": "ipfix.protocolIdentifier",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipClassOfService": {
          "path_match": "ipfix.ipClassOfService",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpControlBits": {
          "path_match": "ipfix.tcpControlBits",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sourceTransportPort": {
          "path_match": "ipfix.sourceTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sourceIPv4Address": {
          "path_match": "ipfix.sourceIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sourceIPv4PrefixLength": {
          "path_match": "ipfix.sourceIPv4PrefixLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ingressInterface": {
          "path_match": "ipfix.ingressInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.destinationTransportPort": {
          "path_match": "ipfix.destinationTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.destinationIPv4Address": {
          "path_match": "ipfix.destinationIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.destinationIPv4PrefixLength": {
          "path_match": "ipfix.destinationIPv4PrefixLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.egressInterface": {
          "path_match": "ipfix.egressInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipNextHopIPv4Address": {
          "path_match": "ipfix.ipNextHopIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.bgpSourceAsNumber": {
          "path_match": "ipfix.bgpSourceAsNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.bgpDestinationAsNumber": {
          "path_match": "ipfix.bgpDestinationAsNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.bgpNextHopIPv4Address": {
          "path_match": "ipfix.bgpNextHopIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.postMCastPacketDeltaCount": {
          "path_match": "ipfix.postMCastPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postMCastOctetDeltaCount": {
          "path_match": "ipfix.postMCastOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowEndSysUpTime": {
          "path_match": "ipfix.flowEndSysUpTime",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowStartSysUpTime": {
          "path_match": "ipfix.flowStartSysUpTime",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postOctetDeltaCount": {
          "path_match": "ipfix.postOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postPacketDeltaCount": {
          "path_match": "ipfix.postPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.minimumIpTotalLength": {
          "path_match": "ipfix.minimumIpTotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maximumIpTotalLength": {
          "path_match": "ipfix.maximumIpTotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sourceIPv6Address": {
          "path_match": "ipfix.sourceIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.destinationIPv6Address": {
          "path_match": "ipfix.destinationIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sourceIPv6PrefixLength": {
          "path_match": "ipfix.sourceIPv6PrefixLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.destinationIPv6PrefixLength": {
          "path_match": "ipfix.destinationIPv6PrefixLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowLabelIPv6": {
          "path_match": "ipfix.flowLabelIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.icmpTypeCodeIPv4": {
          "path_match": "ipfix.icmpTypeCodeIPv4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.igmpType": {
          "path_match": "ipfix.igmpType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplingInterval": {
          "path_match": "ipfix.samplingInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplingAlgorithm": {
          "path_match": "ipfix.samplingAlgorithm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowActiveTimeout": {
          "path_match": "ipfix.flowActiveTimeout",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowIdleTimeout": {
          "path_match": "ipfix.flowIdleTimeout",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.engineType": {
          "path_match": "ipfix.engineType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.engineId": {
          "path_match": "ipfix.engineId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.exportedOctetTotalCount": {
          "path_match": "ipfix.exportedOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.exportedMessageTotalCount": {
          "path_match": "ipfix.exportedMessageTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.exportedFlowRecordTotalCount": {
          "path_match": "ipfix.exportedFlowRecordTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipv4RouterSc": {
          "path_match": "ipfix.ipv4RouterSc",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sourceIPv4Prefix": {
          "path_match": "ipfix.sourceIPv4Prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.destinationIPv4Prefix": {
          "path_match": "ipfix.destinationIPv4Prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.mplsTopLabelType": {
          "path_match": "ipfix.mplsTopLabelType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mplsTopLabelIPv4Address": {
          "path_match": "ipfix.mplsTopLabelIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.samplerId": {
          "path_match": "ipfix.samplerId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplerMode": {
          "path_match": "ipfix.samplerMode",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplerRandomInterval": {
          "path_match": "ipfix.samplerRandomInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.classId": {
          "path_match": "ipfix.classId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.minimumTTL": {
          "path_match": "ipfix.minimumTTL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maximumTTL": {
          "path_match": "ipfix.maximumTTL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.fragmentIdentification": {
          "path_match": "ipfix.fragmentIdentification",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postIpClassOfService": {
          "path_match": "ipfix.postIpClassOfService",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sourceMacAddress": {
          "path_match": "ipfix.sourceMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.postDestinationMacAddress": {
          "path_match": "ipfix.postDestinationMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.vlanId": {
          "path_match": "ipfix.vlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postVlanId": {
          "path_match": "ipfix.postVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipVersion": {
          "path_match": "ipfix.ipVersion",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowDirection": {
          "path_match": "ipfix.flowDirection",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipNextHopIPv6Address": {
          "path_match": "ipfix.ipNextHopIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.bgpNextHopIPv6Address": {
          "path_match": "ipfix.bgpNextHopIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ipv6ExtensionHeaders": {
          "path_match": "ipfix.ipv6ExtensionHeaders",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.transportPacketLoss": {
          "path_match": "ipfix.transportPacketLoss",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.transportUnreachability": {
          "path_match": "ipfix.transportUnreachability",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.transportLatency": {
          "path_match": "ipfix.transportLatency",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mplsTopLabelStackSection": {
          "path_match": "ipfix.mplsTopLabelStackSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsLabelStackSection2": {
          "path_match": "ipfix.mplsLabelStackSection2",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsLabelStackSection3": {
          "path_match": "ipfix.mplsLabelStackSection3",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsLabelStackSection4": {
          "path_match": "ipfix.mplsLabelStackSection4",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsLabelStackSection5": {
          "path_match": "ipfix.mplsLabelStackSection5",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsLabelStackSection6": {
          "path_match": "ipfix.mplsLabelStackSection6",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsLabelStackSection7": {
          "path_match": "ipfix.mplsLabelStackSection7",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsLabelStackSection8": {
          "path_match": "ipfix.mplsLabelStackSection8",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsLabelStackSection9": {
          "path_match": "ipfix.mplsLabelStackSection9",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsLabelStackSection10": {
          "path_match": "ipfix.mplsLabelStackSection10",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.destinationMacAddress": {
          "path_match": "ipfix.destinationMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.postSourceMacAddress": {
          "path_match": "ipfix.postSourceMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.interfaceName": {
          "path_match": "ipfix.interfaceName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.interfaceDescription": {
          "path_match": "ipfix.interfaceDescription",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.samplerName": {
          "path_match": "ipfix.samplerName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.octetTotalCount": {
          "path_match": "ipfix.octetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.packetTotalCount": {
          "path_match": "ipfix.packetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flagsAndSamplerId": {
          "path_match": "ipfix.flagsAndSamplerId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.fragmentOffset": {
          "path_match": "ipfix.fragmentOffset",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.forwardingStatus": {
          "path_match": "ipfix.forwardingStatus",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mplsVpnRouteDistinguisher": {
          "path_match": "ipfix.mplsVpnRouteDistinguisher",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsTopLabelPrefixLength": {
          "path_match": "ipfix.mplsTopLabelPrefixLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.srcTrafficIndex": {
          "path_match": "ipfix.srcTrafficIndex",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.dstTrafficIndex": {
          "path_match": "ipfix.dstTrafficIndex",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.applicationDescription": {
          "path_match": "ipfix.applicationDescription",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.applicationId": {
          "path_match": "ipfix.applicationId",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.applicationName": {
          "path_match": "ipfix.applicationName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.subApplicationTag": {
          "path_match": "ipfix.subApplicationTag",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.postIpDiffServCodePoint": {
          "path_match": "ipfix.postIpDiffServCodePoint",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.multicastReplicationFactor": {
          "path_match": "ipfix.multicastReplicationFactor",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.className": {
          "path_match": "ipfix.className",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.classificationEngineId": {
          "path_match": "ipfix.classificationEngineId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.layer2packetSectionOffset": {
          "path_match": "ipfix.layer2packetSectionOffset",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.layer2packetSectionSize": {
          "path_match": "ipfix.layer2packetSectionSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.layer2packetSectionData": {
          "path_match": "ipfix.layer2packetSectionData",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.applicationVersion": {
          "path_match": "ipfix.applicationVersion",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.applicationVersionName": {
          "path_match": "ipfix.applicationVersionName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.applicationVendor": {
          "path_match": "ipfix.applicationVendor",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.subApplicationName": {
          "path_match": "ipfix.subApplicationName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.subApplicationDescription": {
          "path_match": "ipfix.subApplicationDescription",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.templateParameterRangeEnd": {
          "path_match": "ipfix.templateParameterRangeEnd",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.bgpNextAdjacentAsNumber": {
          "path_match": "ipfix.bgpNextAdjacentAsNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.bgpPrevAdjacentAsNumber": {
          "path_match": "ipfix.bgpPrevAdjacentAsNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.exporterIPv4Address": {
          "path_match": "ipfix.exporterIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.exporterIPv6Address": {
          "path_match": "ipfix.exporterIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.droppedOctetDeltaCount": {
          "path_match": "ipfix.droppedOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.droppedPacketDeltaCount": {
          "path_match": "ipfix.droppedPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.droppedOctetTotalCount": {
          "path_match": "ipfix.droppedOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.droppedPacketTotalCount": {
          "path_match": "ipfix.droppedPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowEndReason": {
          "path_match": "ipfix.flowEndReason",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.commonPropertiesId": {
          "path_match": "ipfix.commonPropertiesId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.observationPointId": {
          "path_match": "ipfix.observationPointId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.icmpTypeCodeIPv6": {
          "path_match": "ipfix.icmpTypeCodeIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mplsTopLabelIPv6Address": {
          "path_match": "ipfix.mplsTopLabelIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.lineCardId": {
          "path_match": "ipfix.lineCardId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.portId": {
          "path_match": "ipfix.portId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.meteringProcessId": {
          "path_match": "ipfix.meteringProcessId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.exportingProcessId": {
          "path_match": "ipfix.exportingProcessId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.templateId": {
          "path_match": "ipfix.templateId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.wlanChannelId": {
          "path_match": "ipfix.wlanChannelId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.wlanSSID": {
          "path_match": "ipfix.wlanSSID",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.flowId": {
          "path_match": "ipfix.flowId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.observationDomainId": {
          "path_match": "ipfix.observationDomainId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowStartSeconds": {
          "path_match": "ipfix.flowStartSeconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "ipfix.flowEndSeconds": {
          "path_match": "ipfix.flowEndSeconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "ipfix.flowStartMilliseconds": {
          "path_match": "ipfix.flowStartMilliseconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "ipfix.flowEndMilliseconds": {
          "path_match": "ipfix.flowEndMilliseconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "ipfix.flowStartMicroseconds": {
          "path_match": "ipfix.flowStartMicroseconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "ipfix.flowEndMicroseconds": {
          "path_match": "ipfix.flowEndMicroseconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "ipfix.flowStartNanoseconds": {
          "path_match": "ipfix.flowStartNanoseconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "ipfix.flowEndNanoseconds": {
          "path_match": "ipfix.flowEndNanoseconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "ipfix.flowStartDeltaMicroseconds": {
          "path_match": "ipfix.flowStartDeltaMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowEndDeltaMicroseconds": {
          "path_match": "ipfix.flowEndDeltaMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.systemInitTimeMilliseconds": {
          "path_match": "ipfix.systemInitTimeMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowDurationMilliseconds": {
          "path_match": "ipfix.flowDurationMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowDurationMicroseconds": {
          "path_match": "ipfix.flowDurationMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.observedFlowTotalCount": {
          "path_match": "ipfix.observedFlowTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ignoredPacketTotalCount": {
          "path_match": "ipfix.ignoredPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ignoredOctetTotalCount": {
          "path_match": "ipfix.ignoredOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.notSentFlowTotalCount": {
          "path_match": "ipfix.notSentFlowTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.notSentPacketTotalCount": {
          "path_match": "ipfix.notSentPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.notSentOctetTotalCount": {
          "path_match": "ipfix.notSentOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.destinationIPv6Prefix": {
          "path_match": "ipfix.destinationIPv6Prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sourceIPv6Prefix": {
          "path_match": "ipfix.sourceIPv6Prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.postOctetTotalCount": {
          "path_match": "ipfix.postOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postPacketTotalCount": {
          "path_match": "ipfix.postPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowKeyIndicator": {
          "path_match": "ipfix.flowKeyIndicator",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postMCastPacketTotalCount": {
          "path_match": "ipfix.postMCastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postMCastOctetTotalCount": {
          "path_match": "ipfix.postMCastOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.icmpTypeIPv4": {
          "path_match": "ipfix.icmpTypeIPv4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.icmpCodeIPv4": {
          "path_match": "ipfix.icmpCodeIPv4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.icmpTypeIPv6": {
          "path_match": "ipfix.icmpTypeIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.icmpCodeIPv6": {
          "path_match": "ipfix.icmpCodeIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.udpSourcePort": {
          "path_match": "ipfix.udpSourcePort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.udpDestinationPort": {
          "path_match": "ipfix.udpDestinationPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpSourcePort": {
          "path_match": "ipfix.tcpSourcePort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpDestinationPort": {
          "path_match": "ipfix.tcpDestinationPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpSequenceNumber": {
          "path_match": "ipfix.tcpSequenceNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpAcknowledgementNumber": {
          "path_match": "ipfix.tcpAcknowledgementNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpWindowSize": {
          "path_match": "ipfix.tcpWindowSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpUrgentPointer": {
          "path_match": "ipfix.tcpUrgentPointer",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpHeaderLength": {
          "path_match": "ipfix.tcpHeaderLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipHeaderLength": {
          "path_match": "ipfix.ipHeaderLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.totalLengthIPv4": {
          "path_match": "ipfix.totalLengthIPv4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.payloadLengthIPv6": {
          "path_match": "ipfix.payloadLengthIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipTTL": {
          "path_match": "ipfix.ipTTL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.nextHeaderIPv6": {
          "path_match": "ipfix.nextHeaderIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mplsPayloadLength": {
          "path_match": "ipfix.mplsPayloadLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipDiffServCodePoint": {
          "path_match": "ipfix.ipDiffServCodePoint",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipPrecedence": {
          "path_match": "ipfix.ipPrecedence",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.fragmentFlags": {
          "path_match": "ipfix.fragmentFlags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.octetDeltaSumOfSquares": {
          "path_match": "ipfix.octetDeltaSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.octetTotalSumOfSquares": {
          "path_match": "ipfix.octetTotalSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mplsTopLabelTTL": {
          "path_match": "ipfix.mplsTopLabelTTL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mplsLabelStackLength": {
          "path_match": "ipfix.mplsLabelStackLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mplsLabelStackDepth": {
          "path_match": "ipfix.mplsLabelStackDepth",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mplsTopLabelExp": {
          "path_match": "ipfix.mplsTopLabelExp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipPayloadLength": {
          "path_match": "ipfix.ipPayloadLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.udpMessageLength": {
          "path_match": "ipfix.udpMessageLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.isMulticast": {
          "path_match": "ipfix.isMulticast",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipv4IHL": {
          "path_match": "ipfix.ipv4IHL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipv4Options": {
          "path_match": "ipfix.ipv4Options",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpOptions": {
          "path_match": "ipfix.tcpOptions",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.collectorIPv4Address": {
          "path_match": "ipfix.collectorIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.collectorIPv6Address": {
          "path_match": "ipfix.collectorIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.collectorTransportPort": {
          "path_match": "ipfix.collectorTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.exportInterface": {
          "path_match": "ipfix.exportInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.exportProtocolVersion": {
          "path_match": "ipfix.exportProtocolVersion",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.exportTransportProtocol": {
          "path_match": "ipfix.exportTransportProtocol",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.exporterTransportPort": {
          "path_match": "ipfix.exporterTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpSynTotalCount": {
          "path_match": "ipfix.tcpSynTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpFinTotalCount": {
          "path_match": "ipfix.tcpFinTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpRstTotalCount": {
          "path_match": "ipfix.tcpRstTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpPshTotalCount": {
          "path_match": "ipfix.tcpPshTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpAckTotalCount": {
          "path_match": "ipfix.tcpAckTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpUrgTotalCount": {
          "path_match": "ipfix.tcpUrgTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipTotalLength": {
          "path_match": "ipfix.ipTotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postNATSourceIPv4Address": {
          "path_match": "ipfix.postNATSourceIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.postNATDestinationIPv4Address": {
          "path_match": "ipfix.postNATDestinationIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.postNAPTSourceTransportPort": {
          "path_match": "ipfix.postNAPTSourceTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postNAPTDestinationTransportPort": {
          "path_match": "ipfix.postNAPTDestinationTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.natOriginatingAddressRealm": {
          "path_match": "ipfix.natOriginatingAddressRealm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.natEvent": {
          "path_match": "ipfix.natEvent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.initiatorOctets": {
          "path_match": "ipfix.initiatorOctets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.responderOctets": {
          "path_match": "ipfix.responderOctets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.firewallEvent": {
          "path_match": "ipfix.firewallEvent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ingressVRFID": {
          "path_match": "ipfix.ingressVRFID",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.egressVRFID": {
          "path_match": "ipfix.egressVRFID",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.VRFname": {
          "path_match": "ipfix.VRFname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.postMplsTopLabelExp": {
          "path_match": "ipfix.postMplsTopLabelExp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.tcpWindowScale": {
          "path_match": "ipfix.tcpWindowScale",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.biflowDirection": {
          "path_match": "ipfix.biflowDirection",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ethernetHeaderLength": {
          "path_match": "ipfix.ethernetHeaderLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ethernetPayloadLength": {
          "path_match": "ipfix.ethernetPayloadLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ethernetTotalLength": {
          "path_match": "ipfix.ethernetTotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.dot1qVlanId": {
          "path_match": "ipfix.dot1qVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.dot1qPriority": {
          "path_match": "ipfix.dot1qPriority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.dot1qCustomerVlanId": {
          "path_match": "ipfix.dot1qCustomerVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.dot1qCustomerPriority": {
          "path_match": "ipfix.dot1qCustomerPriority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.metroEvcId": {
          "path_match": "ipfix.metroEvcId",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.metroEvcType": {
          "path_match": "ipfix.metroEvcType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.pseudoWireId": {
          "path_match": "ipfix.pseudoWireId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.pseudoWireType": {
          "path_match": "ipfix.pseudoWireType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.pseudoWireControlWord": {
          "path_match": "ipfix.pseudoWireControlWord",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ingressPhysicalInterface": {
          "path_match": "ipfix.ingressPhysicalInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.egressPhysicalInterface": {
          "path_match": "ipfix.egressPhysicalInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postDot1qVlanId": {
          "path_match": "ipfix.postDot1qVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postDot1qCustomerVlanId": {
          "path_match": "ipfix.postDot1qCustomerVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ethernetType": {
          "path_match": "ipfix.ethernetType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postIpPrecedence": {
          "path_match": "ipfix.postIpPrecedence",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.collectionTimeMilliseconds": {
          "path_match": "ipfix.collectionTimeMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.exportSctpStreamId": {
          "path_match": "ipfix.exportSctpStreamId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maxExportSeconds": {
          "path_match": "ipfix.maxExportSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maxFlowEndSeconds": {
          "path_match": "ipfix.maxFlowEndSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.messageMD5Checksum": {
          "path_match": "ipfix.messageMD5Checksum",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.messageScope": {
          "path_match": "ipfix.messageScope",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.minExportSeconds": {
          "path_match": "ipfix.minExportSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.minFlowStartSeconds": {
          "path_match": "ipfix.minFlowStartSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.opaqueOctets": {
          "path_match": "ipfix.opaqueOctets",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sessionScope": {
          "path_match": "ipfix.sessionScope",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maxFlowEndMicroseconds": {
          "path_match": "ipfix.maxFlowEndMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maxFlowEndMilliseconds": {
          "path_match": "ipfix.maxFlowEndMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maxFlowEndNanoseconds": {
          "path_match": "ipfix.maxFlowEndNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.minFlowStartMicroseconds": {
          "path_match": "ipfix.minFlowStartMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.minFlowStartMilliseconds": {
          "path_match": "ipfix.minFlowStartMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.minFlowStartNanoseconds": {
          "path_match": "ipfix.minFlowStartNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.collectorCertificate": {
          "path_match": "ipfix.collectorCertificate",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.exporterCertificate": {
          "path_match": "ipfix.exporterCertificate",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.dataRecordsReliability": {
          "path_match": "ipfix.dataRecordsReliability",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.observationPointType": {
          "path_match": "ipfix.observationPointType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.newConnectionDeltaCount": {
          "path_match": "ipfix.newConnectionDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.connectionSumDurationSeconds": {
          "path_match": "ipfix.connectionSumDurationSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.connectionTransactionId": {
          "path_match": "ipfix.connectionTransactionId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postNATSourceIPv6Address": {
          "path_match": "ipfix.postNATSourceIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.postNATDestinationIPv6Address": {
          "path_match": "ipfix.postNATDestinationIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.natPoolId": {
          "path_match": "ipfix.natPoolId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.natPoolName": {
          "path_match": "ipfix.natPoolName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.anonymizationFlags": {
          "path_match": "ipfix.anonymizationFlags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.anonymizationTechnique": {
          "path_match": "ipfix.anonymizationTechnique",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.informationElementIndex": {
          "path_match": "ipfix.informationElementIndex",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.p2pTechnology": {
          "path_match": "ipfix.p2pTechnology",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.tunnelTechnology": {
          "path_match": "ipfix.tunnelTechnology",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.encryptedTechnology": {
          "path_match": "ipfix.encryptedTechnology",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.bgpValidityState": {
          "path_match": "ipfix.bgpValidityState",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.IPSecSPI": {
          "path_match": "ipfix.IPSecSPI",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.greKey": {
          "path_match": "ipfix.greKey",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.natType": {
          "path_match": "ipfix.natType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.initiatorPackets": {
          "path_match": "ipfix.initiatorPackets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.responderPackets": {
          "path_match": "ipfix.responderPackets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.observationDomainName": {
          "path_match": "ipfix.observationDomainName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.selectionSequenceId": {
          "path_match": "ipfix.selectionSequenceId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.selectorId": {
          "path_match": "ipfix.selectorId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.informationElementId": {
          "path_match": "ipfix.informationElementId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.selectorAlgorithm": {
          "path_match": "ipfix.selectorAlgorithm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplingPacketInterval": {
          "path_match": "ipfix.samplingPacketInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplingPacketSpace": {
          "path_match": "ipfix.samplingPacketSpace",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplingTimeInterval": {
          "path_match": "ipfix.samplingTimeInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplingTimeSpace": {
          "path_match": "ipfix.samplingTimeSpace",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplingSize": {
          "path_match": "ipfix.samplingSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplingPopulation": {
          "path_match": "ipfix.samplingPopulation",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplingProbability": {
          "path_match": "ipfix.samplingProbability",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "ipfix.dataLinkFrameSize": {
          "path_match": "ipfix.dataLinkFrameSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipHeaderPacketSection": {
          "path_match": "ipfix.ipHeaderPacketSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ipPayloadPacketSection": {
          "path_match": "ipfix.ipPayloadPacketSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.dataLinkFrameSection": {
          "path_match": "ipfix.dataLinkFrameSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsLabelStackSection": {
          "path_match": "ipfix.mplsLabelStackSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mplsPayloadPacketSection": {
          "path_match": "ipfix.mplsPayloadPacketSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.selectorIdTotalPktsObserved": {
          "path_match": "ipfix.selectorIdTotalPktsObserved",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.selectorIdTotalPktsSelected": {
          "path_match": "ipfix.selectorIdTotalPktsSelected",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.absoluteError": {
          "path_match": "ipfix.absoluteError",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "ipfix.relativeError": {
          "path_match": "ipfix.relativeError",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "ipfix.observationTimeSeconds": {
          "path_match": "ipfix.observationTimeSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.observationTimeMilliseconds": {
          "path_match": "ipfix.observationTimeMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.observationTimeMicroseconds": {
          "path_match": "ipfix.observationTimeMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.observationTimeNanoseconds": {
          "path_match": "ipfix.observationTimeNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.digestHashValue": {
          "path_match": "ipfix.digestHashValue",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.hashIPPayloadOffset": {
          "path_match": "ipfix.hashIPPayloadOffset",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.hashIPPayloadSize": {
          "path_match": "ipfix.hashIPPayloadSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.hashOutputRangeMin": {
          "path_match": "ipfix.hashOutputRangeMin",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.hashOutputRangeMax": {
          "path_match": "ipfix.hashOutputRangeMax",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.hashSelectedRangeMin": {
          "path_match": "ipfix.hashSelectedRangeMin",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.hashSelectedRangeMax": {
          "path_match": "ipfix.hashSelectedRangeMax",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.hashDigestOutput": {
          "path_match": "ipfix.hashDigestOutput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.hashInitialiserValue": {
          "path_match": "ipfix.hashInitialiserValue",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.selectorName": {
          "path_match": "ipfix.selectorName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.upperCILimit": {
          "path_match": "ipfix.upperCILimit",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "ipfix.lowerCILimit": {
          "path_match": "ipfix.lowerCILimit",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "ipfix.confidenceLevel": {
          "path_match": "ipfix.confidenceLevel",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "ipfix.informationElementDataType": {
          "path_match": "ipfix.informationElementDataType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.informationElementDescription": {
          "path_match": "ipfix.informationElementDescription",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.informationElementName": {
          "path_match": "ipfix.informationElementName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.informationElementRangeBegin": {
          "path_match": "ipfix.informationElementRangeBegin",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.informationElementRangeEnd": {
          "path_match": "ipfix.informationElementRangeEnd",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.informationElementSemantics": {
          "path_match": "ipfix.informationElementSemantics",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.informationElementUnits": {
          "path_match": "ipfix.informationElementUnits",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.privateEnterpriseNumber": {
          "path_match": "ipfix.privateEnterpriseNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.virtualStationInterfaceId": {
          "path_match": "ipfix.virtualStationInterfaceId",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.virtualStationInterfaceName": {
          "path_match": "ipfix.virtualStationInterfaceName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.virtualStationUUID": {
          "path_match": "ipfix.virtualStationUUID",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.virtualStationName": {
          "path_match": "ipfix.virtualStationName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.layer2SegmentId": {
          "path_match": "ipfix.layer2SegmentId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.layer2OctetDeltaCount": {
          "path_match": "ipfix.layer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.layer2OctetTotalCount": {
          "path_match": "ipfix.layer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ingressUnicastPacketTotalCount": {
          "path_match": "ipfix.ingressUnicastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ingressMulticastPacketTotalCount": {
          "path_match": "ipfix.ingressMulticastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ingressBroadcastPacketTotalCount": {
          "path_match": "ipfix.ingressBroadcastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.egressUnicastPacketTotalCount": {
          "path_match": "ipfix.egressUnicastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.egressBroadcastPacketTotalCount": {
          "path_match": "ipfix.egressBroadcastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.monitoringIntervalStartMilliSeconds": {
          "path_match": "ipfix.monitoringIntervalStartMilliSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.monitoringIntervalEndMilliSeconds": {
          "path_match": "ipfix.monitoringIntervalEndMilliSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.portRangeStart": {
          "path_match": "ipfix.portRangeStart",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.portRangeEnd": {
          "path_match": "ipfix.portRangeEnd",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.portRangeStepSize": {
          "path_match": "ipfix.portRangeStepSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.portRangeNumPorts": {
          "path_match": "ipfix.portRangeNumPorts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.staMacAddress": {
          "path_match": "ipfix.staMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.staIPv4Address": {
          "path_match": "ipfix.staIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.wtpMacAddress": {
          "path_match": "ipfix.wtpMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ingressInterfaceType": {
          "path_match": "ipfix.ingressInterfaceType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.egressInterfaceType": {
          "path_match": "ipfix.egressInterfaceType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.rtpSequenceNumber": {
          "path_match": "ipfix.rtpSequenceNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.userName": {
          "path_match": "ipfix.userName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.applicationCategoryName": {
          "path_match": "ipfix.applicationCategoryName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.applicationSubCategoryName": {
          "path_match": "ipfix.applicationSubCategoryName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.applicationGroupName": {
          "path_match": "ipfix.applicationGroupName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.originalFlowsPresent": {
          "path_match": "ipfix.originalFlowsPresent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.originalFlowsInitiated": {
          "path_match": "ipfix.originalFlowsInitiated",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.originalFlowsCompleted": {
          "path_match": "ipfix.originalFlowsCompleted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.distinctCountOfSourceIPAddress": {
          "path_match": "ipfix.distinctCountOfSourceIPAddress",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.distinctCountOfDestinationIPAddress": {
          "path_match": "ipfix.distinctCountOfDestinationIPAddress",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.distinctCountOfSourceIPv4Address": {
          "path_match": "ipfix.distinctCountOfSourceIPv4Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.distinctCountOfDestinationIPv4Address": {
          "path_match": "ipfix.distinctCountOfDestinationIPv4Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.distinctCountOfSourceIPv6Address": {
          "path_match": "ipfix.distinctCountOfSourceIPv6Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.distinctCountOfDestinationIPv6Address": {
          "path_match": "ipfix.distinctCountOfDestinationIPv6Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.valueDistributionMethod": {
          "path_match": "ipfix.valueDistributionMethod",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.rfc3550JitterMilliseconds": {
          "path_match": "ipfix.rfc3550JitterMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.rfc3550JitterMicroseconds": {
          "path_match": "ipfix.rfc3550JitterMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.rfc3550JitterNanoseconds": {
          "path_match": "ipfix.rfc3550JitterNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.dot1qDEI": {
          "path_match": "ipfix.dot1qDEI",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.dot1qCustomerDEI": {
          "path_match": "ipfix.dot1qCustomerDEI",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowSelectorAlgorithm": {
          "path_match": "ipfix.flowSelectorAlgorithm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowSelectedOctetDeltaCount": {
          "path_match": "ipfix.flowSelectedOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowSelectedPacketDeltaCount": {
          "path_match": "ipfix.flowSelectedPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowSelectedFlowDeltaCount": {
          "path_match": "ipfix.flowSelectedFlowDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.selectorIDTotalFlowsObserved": {
          "path_match": "ipfix.selectorIDTotalFlowsObserved",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.selectorIDTotalFlowsSelected": {
          "path_match": "ipfix.selectorIDTotalFlowsSelected",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplingFlowInterval": {
          "path_match": "ipfix.samplingFlowInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.samplingFlowSpacing": {
          "path_match": "ipfix.samplingFlowSpacing",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowSamplingTimeInterval": {
          "path_match": "ipfix.flowSamplingTimeInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.flowSamplingTimeSpacing": {
          "path_match": "ipfix.flowSamplingTimeSpacing",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.hashFlowDomain": {
          "path_match": "ipfix.hashFlowDomain",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.transportOctetDeltaCount": {
          "path_match": "ipfix.transportOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.transportPacketDeltaCount": {
          "path_match": "ipfix.transportPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.originalExporterIPv4Address": {
          "path_match": "ipfix.originalExporterIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.originalExporterIPv6Address": {
          "path_match": "ipfix.originalExporterIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.originalObservationDomainId": {
          "path_match": "ipfix.originalObservationDomainId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.intermediateProcessId": {
          "path_match": "ipfix.intermediateProcessId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ignoredDataRecordTotalCount": {
          "path_match": "ipfix.ignoredDataRecordTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.dataLinkFrameType": {
          "path_match": "ipfix.dataLinkFrameType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sectionOffset": {
          "path_match": "ipfix.sectionOffset",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sectionExportedOctets": {
          "path_match": "ipfix.sectionExportedOctets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.dot1qServiceInstanceTag": {
          "path_match": "ipfix.dot1qServiceInstanceTag",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.dot1qServiceInstanceId": {
          "path_match": "ipfix.dot1qServiceInstanceId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.dot1qServiceInstancePriority": {
          "path_match": "ipfix.dot1qServiceInstancePriority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.dot1qCustomerSourceMacAddress": {
          "path_match": "ipfix.dot1qCustomerSourceMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.dot1qCustomerDestinationMacAddress": {
          "path_match": "ipfix.dot1qCustomerDestinationMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.postLayer2OctetDeltaCount": {
          "path_match": "ipfix.postLayer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postMCastLayer2OctetDeltaCount": {
          "path_match": "ipfix.postMCastLayer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postLayer2OctetTotalCount": {
          "path_match": "ipfix.postLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.postMCastLayer2OctetTotalCount": {
          "path_match": "ipfix.postMCastLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.minimumLayer2TotalLength": {
          "path_match": "ipfix.minimumLayer2TotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maximumLayer2TotalLength": {
          "path_match": "ipfix.maximumLayer2TotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.droppedLayer2OctetDeltaCount": {
          "path_match": "ipfix.droppedLayer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.droppedLayer2OctetTotalCount": {
          "path_match": "ipfix.droppedLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ignoredLayer2OctetTotalCount": {
          "path_match": "ipfix.ignoredLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.notSentLayer2OctetTotalCount": {
          "path_match": "ipfix.notSentLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.layer2OctetDeltaSumOfSquares": {
          "path_match": "ipfix.layer2OctetDeltaSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.layer2OctetTotalSumOfSquares": {
          "path_match": "ipfix.layer2OctetTotalSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.layer2FrameDeltaCount": {
          "path_match": "ipfix.layer2FrameDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.layer2FrameTotalCount": {
          "path_match": "ipfix.layer2FrameTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.pseudoWireDestinationIPv4Address": {
          "path_match": "ipfix.pseudoWireDestinationIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ignoredLayer2FrameTotalCount": {
          "path_match": "ipfix.ignoredLayer2FrameTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mibObjectValueInteger": {
          "path_match": "ipfix.mibObjectValueInteger",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mibObjectValueOctetString": {
          "path_match": "ipfix.mibObjectValueOctetString",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mibObjectValueOID": {
          "path_match": "ipfix.mibObjectValueOID",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mibObjectValueBits": {
          "path_match": "ipfix.mibObjectValueBits",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mibObjectValueIPAddress": {
          "path_match": "ipfix.mibObjectValueIPAddress",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.mibObjectValueCounter": {
          "path_match": "ipfix.mibObjectValueCounter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mibObjectValueGauge": {
          "path_match": "ipfix.mibObjectValueGauge",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mibObjectValueTimeTicks": {
          "path_match": "ipfix.mibObjectValueTimeTicks",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mibObjectValueUnsigned": {
          "path_match": "ipfix.mibObjectValueUnsigned",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mibObjectValueTable": {
          "path_match": "ipfix.mibObjectValueTable",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mibObjectValueRow": {
          "path_match": "ipfix.mibObjectValueRow",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mibObjectIdentifier": {
          "path_match": "ipfix.mibObjectIdentifier",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mibSubIdentifier": {
          "path_match": "ipfix.mibSubIdentifier",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mibIndexIndicator": {
          "path_match": "ipfix.mibIndexIndicator",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mibCaptureTimeSemantics": {
          "path_match": "ipfix.mibCaptureTimeSemantics",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.mibContextEngineID": {
          "path_match": "ipfix.mibContextEngineID",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mibContextName": {
          "path_match": "ipfix.mibContextName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mibObjectName": {
          "path_match": "ipfix.mibObjectName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mibObjectDescription": {
          "path_match": "ipfix.mibObjectDescription",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mibObjectSyntax": {
          "path_match": "ipfix.mibObjectSyntax",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mibModuleName": {
          "path_match": "ipfix.mibModuleName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mobileIMSI": {
          "path_match": "ipfix.mobileIMSI",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.mobileMSISDN": {
          "path_match": "ipfix.mobileMSISDN",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.httpStatusCode": {
          "path_match": "ipfix.httpStatusCode",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sourceTransportPortsLimit": {
          "path_match": "ipfix.sourceTransportPortsLimit",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.httpRequestMethod": {
          "path_match": "ipfix.httpRequestMethod",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.httpRequestHost": {
          "path_match": "ipfix.httpRequestHost",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.httpRequestTarget": {
          "path_match": "ipfix.httpRequestTarget",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.httpMessageVersion": {
          "path_match": "ipfix.httpMessageVersion",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.natInstanceID": {
          "path_match": "ipfix.natInstanceID",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.internalAddressRealm": {
          "path_match": "ipfix.internalAddressRealm",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.externalAddressRealm": {
          "path_match": "ipfix.externalAddressRealm",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.natQuotaExceededEvent": {
          "path_match": "ipfix.natQuotaExceededEvent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.natThresholdEvent": {
          "path_match": "ipfix.natThresholdEvent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.httpUserAgent": {
          "path_match": "ipfix.httpUserAgent",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.httpContentType": {
          "path_match": "ipfix.httpContentType",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.httpReasonPhrase": {
          "path_match": "ipfix.httpReasonPhrase",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.maxSessionEntries": {
          "path_match": "ipfix.maxSessionEntries",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maxBIBEntries": {
          "path_match": "ipfix.maxBIBEntries",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maxEntriesPerUser": {
          "path_match": "ipfix.maxEntriesPerUser",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maxSubscribers": {
          "path_match": "ipfix.maxSubscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.maxFragmentsPendingReassembly": {
          "path_match": "ipfix.maxFragmentsPendingReassembly",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.addressPoolHighThreshold": {
          "path_match": "ipfix.addressPoolHighThreshold",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.addressPoolLowThreshold": {
          "path_match": "ipfix.addressPoolLowThreshold",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.addressPortMappingHighThreshold": {
          "path_match": "ipfix.addressPortMappingHighThreshold",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.addressPortMappingLowThreshold": {
          "path_match": "ipfix.addressPortMappingLowThreshold",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.addressPortMappingPerUserHighThreshold": {
          "path_match": "ipfix.addressPortMappingPerUserHighThreshold",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.globalAddressMappingHighThreshold": {
          "path_match": "ipfix.globalAddressMappingHighThreshold",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.vpnIdentifier": {
          "path_match": "ipfix.vpnIdentifier",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "ipfix.reverseOctetDeltaCount": {
          "path_match": "ipfix.reverseOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePacketDeltaCount": {
          "path_match": "ipfix.reversePacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDeltaFlowCount": {
          "path_match": "ipfix.reverseDeltaFlowCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseProtocolIdentifier": {
          "path_match": "ipfix.reverseProtocolIdentifier",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpClassOfService": {
          "path_match": "ipfix.reverseIpClassOfService",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpControlBits": {
          "path_match": "ipfix.reverseTcpControlBits",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSourceTransportPort": {
          "path_match": "ipfix.reverseSourceTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSourceIPv4Address": {
          "path_match": "ipfix.reverseSourceIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseSourceIPv4PrefixLength": {
          "path_match": "ipfix.reverseSourceIPv4PrefixLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIngressInterface": {
          "path_match": "ipfix.reverseIngressInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDestinationTransportPort": {
          "path_match": "ipfix.reverseDestinationTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDestinationIPv4Address": {
          "path_match": "ipfix.reverseDestinationIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseDestinationIPv4PrefixLength": {
          "path_match": "ipfix.reverseDestinationIPv4PrefixLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEgressInterface": {
          "path_match": "ipfix.reverseEgressInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpNextHopIPv4Address": {
          "path_match": "ipfix.reverseIpNextHopIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseBgpSourceAsNumber": {
          "path_match": "ipfix.reverseBgpSourceAsNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseBgpDestinationAsNumber": {
          "path_match": "ipfix.reverseBgpDestinationAsNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseBgpNextHopIPv4Address": {
          "path_match": "ipfix.reverseBgpNextHopIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reversePostMCastPacketDeltaCount": {
          "path_match": "ipfix.reversePostMCastPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostMCastOctetDeltaCount": {
          "path_match": "ipfix.reversePostMCastOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowEndSysUpTime": {
          "path_match": "ipfix.reverseFlowEndSysUpTime",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowStartSysUpTime": {
          "path_match": "ipfix.reverseFlowStartSysUpTime",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostOctetDeltaCount": {
          "path_match": "ipfix.reversePostOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostPacketDeltaCount": {
          "path_match": "ipfix.reversePostPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMinimumIpTotalLength": {
          "path_match": "ipfix.reverseMinimumIpTotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMaximumIpTotalLength": {
          "path_match": "ipfix.reverseMaximumIpTotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSourceIPv6Address": {
          "path_match": "ipfix.reverseSourceIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseDestinationIPv6Address": {
          "path_match": "ipfix.reverseDestinationIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseSourceIPv6PrefixLength": {
          "path_match": "ipfix.reverseSourceIPv6PrefixLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDestinationIPv6PrefixLength": {
          "path_match": "ipfix.reverseDestinationIPv6PrefixLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowLabelIPv6": {
          "path_match": "ipfix.reverseFlowLabelIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIcmpTypeCodeIPv4": {
          "path_match": "ipfix.reverseIcmpTypeCodeIPv4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIgmpType": {
          "path_match": "ipfix.reverseIgmpType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplingInterval": {
          "path_match": "ipfix.reverseSamplingInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplingAlgorithm": {
          "path_match": "ipfix.reverseSamplingAlgorithm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowActiveTimeout": {
          "path_match": "ipfix.reverseFlowActiveTimeout",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowIdleTimeout": {
          "path_match": "ipfix.reverseFlowIdleTimeout",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEngineType": {
          "path_match": "ipfix.reverseEngineType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEngineId": {
          "path_match": "ipfix.reverseEngineId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpv4RouterSc": {
          "path_match": "ipfix.reverseIpv4RouterSc",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseSourceIPv4Prefix": {
          "path_match": "ipfix.reverseSourceIPv4Prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseDestinationIPv4Prefix": {
          "path_match": "ipfix.reverseDestinationIPv4Prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseMplsTopLabelType": {
          "path_match": "ipfix.reverseMplsTopLabelType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMplsTopLabelIPv4Address": {
          "path_match": "ipfix.reverseMplsTopLabelIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseSamplerId": {
          "path_match": "ipfix.reverseSamplerId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplerMode": {
          "path_match": "ipfix.reverseSamplerMode",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplerRandomInterval": {
          "path_match": "ipfix.reverseSamplerRandomInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseClassId": {
          "path_match": "ipfix.reverseClassId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMinimumTTL": {
          "path_match": "ipfix.reverseMinimumTTL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMaximumTTL": {
          "path_match": "ipfix.reverseMaximumTTL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFragmentIdentification": {
          "path_match": "ipfix.reverseFragmentIdentification",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostIpClassOfService": {
          "path_match": "ipfix.reversePostIpClassOfService",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSourceMacAddress": {
          "path_match": "ipfix.reverseSourceMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reversePostDestinationMacAddress": {
          "path_match": "ipfix.reversePostDestinationMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseVlanId": {
          "path_match": "ipfix.reverseVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostVlanId": {
          "path_match": "ipfix.reversePostVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpVersion": {
          "path_match": "ipfix.reverseIpVersion",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowDirection": {
          "path_match": "ipfix.reverseFlowDirection",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpNextHopIPv6Address": {
          "path_match": "ipfix.reverseIpNextHopIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseBgpNextHopIPv6Address": {
          "path_match": "ipfix.reverseBgpNextHopIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseIpv6ExtensionHeaders": {
          "path_match": "ipfix.reverseIpv6ExtensionHeaders",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMplsTopLabelStackSection": {
          "path_match": "ipfix.reverseMplsTopLabelStackSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackSection2": {
          "path_match": "ipfix.reverseMplsLabelStackSection2",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackSection3": {
          "path_match": "ipfix.reverseMplsLabelStackSection3",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackSection4": {
          "path_match": "ipfix.reverseMplsLabelStackSection4",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackSection5": {
          "path_match": "ipfix.reverseMplsLabelStackSection5",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackSection6": {
          "path_match": "ipfix.reverseMplsLabelStackSection6",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackSection7": {
          "path_match": "ipfix.reverseMplsLabelStackSection7",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackSection8": {
          "path_match": "ipfix.reverseMplsLabelStackSection8",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackSection9": {
          "path_match": "ipfix.reverseMplsLabelStackSection9",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackSection10": {
          "path_match": "ipfix.reverseMplsLabelStackSection10",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseDestinationMacAddress": {
          "path_match": "ipfix.reverseDestinationMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reversePostSourceMacAddress": {
          "path_match": "ipfix.reversePostSourceMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseInterfaceName": {
          "path_match": "ipfix.reverseInterfaceName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseInterfaceDescription": {
          "path_match": "ipfix.reverseInterfaceDescription",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseSamplerName": {
          "path_match": "ipfix.reverseSamplerName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseOctetTotalCount": {
          "path_match": "ipfix.reverseOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePacketTotalCount": {
          "path_match": "ipfix.reversePacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlagsAndSamplerId": {
          "path_match": "ipfix.reverseFlagsAndSamplerId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFragmentOffset": {
          "path_match": "ipfix.reverseFragmentOffset",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseForwardingStatus": {
          "path_match": "ipfix.reverseForwardingStatus",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMplsVpnRouteDistinguisher": {
          "path_match": "ipfix.reverseMplsVpnRouteDistinguisher",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsTopLabelPrefixLength": {
          "path_match": "ipfix.reverseMplsTopLabelPrefixLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSrcTrafficIndex": {
          "path_match": "ipfix.reverseSrcTrafficIndex",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDstTrafficIndex": {
          "path_match": "ipfix.reverseDstTrafficIndex",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseApplicationDescription": {
          "path_match": "ipfix.reverseApplicationDescription",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseApplicationId": {
          "path_match": "ipfix.reverseApplicationId",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseApplicationName": {
          "path_match": "ipfix.reverseApplicationName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reversePostIpDiffServCodePoint": {
          "path_match": "ipfix.reversePostIpDiffServCodePoint",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMulticastReplicationFactor": {
          "path_match": "ipfix.reverseMulticastReplicationFactor",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseClassName": {
          "path_match": "ipfix.reverseClassName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseClassificationEngineId": {
          "path_match": "ipfix.reverseClassificationEngineId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseLayer2packetSectionOffset": {
          "path_match": "ipfix.reverseLayer2packetSectionOffset",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseLayer2packetSectionSize": {
          "path_match": "ipfix.reverseLayer2packetSectionSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseLayer2packetSectionData": {
          "path_match": "ipfix.reverseLayer2packetSectionData",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseBgpNextAdjacentAsNumber": {
          "path_match": "ipfix.reverseBgpNextAdjacentAsNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseBgpPrevAdjacentAsNumber": {
          "path_match": "ipfix.reverseBgpPrevAdjacentAsNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDroppedOctetDeltaCount": {
          "path_match": "ipfix.reverseDroppedOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDroppedPacketDeltaCount": {
          "path_match": "ipfix.reverseDroppedPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDroppedPacketTotalCount": {
          "path_match": "ipfix.reverseDroppedPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDroppedOctetTotalCount": {
          "path_match": "ipfix.reverseDroppedOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowEndReason": {
          "path_match": "ipfix.reverseFlowEndReason",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseObservationPointId": {
          "path_match": "ipfix.reverseObservationPointId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIcmpTypeCodeIPv6": {
          "path_match": "ipfix.reverseIcmpTypeCodeIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMplsTopLabelIPv6Address": {
          "path_match": "ipfix.reverseMplsTopLabelIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseLineCardId": {
          "path_match": "ipfix.reverseLineCardId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePortId": {
          "path_match": "ipfix.reversePortId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMeteringProcessId": {
          "path_match": "ipfix.reverseMeteringProcessId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseExportingProcessId": {
          "path_match": "ipfix.reverseExportingProcessId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseWlanChannelId": {
          "path_match": "ipfix.reverseWlanChannelId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseWlanSSID": {
          "path_match": "ipfix.reverseWlanSSID",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseFlowStartSeconds": {
          "path_match": "ipfix.reverseFlowStartSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowEndSeconds": {
          "path_match": "ipfix.reverseFlowEndSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowStartMilliseconds": {
          "path_match": "ipfix.reverseFlowStartMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowEndMilliseconds": {
          "path_match": "ipfix.reverseFlowEndMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowStartMicroseconds": {
          "path_match": "ipfix.reverseFlowStartMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowEndMicroseconds": {
          "path_match": "ipfix.reverseFlowEndMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowStartNanoseconds": {
          "path_match": "ipfix.reverseFlowStartNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowEndNanoseconds": {
          "path_match": "ipfix.reverseFlowEndNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowStartDeltaMicroseconds": {
          "path_match": "ipfix.reverseFlowStartDeltaMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowEndDeltaMicroseconds": {
          "path_match": "ipfix.reverseFlowEndDeltaMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSystemInitTimeMilliseconds": {
          "path_match": "ipfix.reverseSystemInitTimeMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowDurationMilliseconds": {
          "path_match": "ipfix.reverseFlowDurationMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowDurationMicroseconds": {
          "path_match": "ipfix.reverseFlowDurationMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDestinationIPv6Prefix": {
          "path_match": "ipfix.reverseDestinationIPv6Prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseSourceIPv6Prefix": {
          "path_match": "ipfix.reverseSourceIPv6Prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reversePostOctetTotalCount": {
          "path_match": "ipfix.reversePostOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostPacketTotalCount": {
          "path_match": "ipfix.reversePostPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostMCastPacketTotalCount": {
          "path_match": "ipfix.reversePostMCastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostMCastOctetTotalCount": {
          "path_match": "ipfix.reversePostMCastOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIcmpTypeIPv4": {
          "path_match": "ipfix.reverseIcmpTypeIPv4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIcmpCodeIPv4": {
          "path_match": "ipfix.reverseIcmpCodeIPv4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIcmpTypeIPv6": {
          "path_match": "ipfix.reverseIcmpTypeIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIcmpCodeIPv6": {
          "path_match": "ipfix.reverseIcmpCodeIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseUdpSourcePort": {
          "path_match": "ipfix.reverseUdpSourcePort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseUdpDestinationPort": {
          "path_match": "ipfix.reverseUdpDestinationPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpSourcePort": {
          "path_match": "ipfix.reverseTcpSourcePort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpDestinationPort": {
          "path_match": "ipfix.reverseTcpDestinationPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpSequenceNumber": {
          "path_match": "ipfix.reverseTcpSequenceNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpAcknowledgementNumber": {
          "path_match": "ipfix.reverseTcpAcknowledgementNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpWindowSize": {
          "path_match": "ipfix.reverseTcpWindowSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpUrgentPointer": {
          "path_match": "ipfix.reverseTcpUrgentPointer",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpHeaderLength": {
          "path_match": "ipfix.reverseTcpHeaderLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpHeaderLength": {
          "path_match": "ipfix.reverseIpHeaderLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTotalLengthIPv4": {
          "path_match": "ipfix.reverseTotalLengthIPv4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePayloadLengthIPv6": {
          "path_match": "ipfix.reversePayloadLengthIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpTTL": {
          "path_match": "ipfix.reverseIpTTL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseNextHeaderIPv6": {
          "path_match": "ipfix.reverseNextHeaderIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMplsPayloadLength": {
          "path_match": "ipfix.reverseMplsPayloadLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpDiffServCodePoint": {
          "path_match": "ipfix.reverseIpDiffServCodePoint",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpPrecedence": {
          "path_match": "ipfix.reverseIpPrecedence",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFragmentFlags": {
          "path_match": "ipfix.reverseFragmentFlags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseOctetDeltaSumOfSquares": {
          "path_match": "ipfix.reverseOctetDeltaSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseOctetTotalSumOfSquares": {
          "path_match": "ipfix.reverseOctetTotalSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMplsTopLabelTTL": {
          "path_match": "ipfix.reverseMplsTopLabelTTL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackLength": {
          "path_match": "ipfix.reverseMplsLabelStackLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackDepth": {
          "path_match": "ipfix.reverseMplsLabelStackDepth",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMplsTopLabelExp": {
          "path_match": "ipfix.reverseMplsTopLabelExp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpPayloadLength": {
          "path_match": "ipfix.reverseIpPayloadLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseUdpMessageLength": {
          "path_match": "ipfix.reverseUdpMessageLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIsMulticast": {
          "path_match": "ipfix.reverseIsMulticast",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpv4IHL": {
          "path_match": "ipfix.reverseIpv4IHL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpv4Options": {
          "path_match": "ipfix.reverseIpv4Options",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpOptions": {
          "path_match": "ipfix.reverseTcpOptions",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpSynTotalCount": {
          "path_match": "ipfix.reverseTcpSynTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpFinTotalCount": {
          "path_match": "ipfix.reverseTcpFinTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpRstTotalCount": {
          "path_match": "ipfix.reverseTcpRstTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpPshTotalCount": {
          "path_match": "ipfix.reverseTcpPshTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpAckTotalCount": {
          "path_match": "ipfix.reverseTcpAckTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpUrgTotalCount": {
          "path_match": "ipfix.reverseTcpUrgTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpTotalLength": {
          "path_match": "ipfix.reverseIpTotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostNATSourceIPv4Address": {
          "path_match": "ipfix.reversePostNATSourceIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reversePostNATDestinationIPv4Address": {
          "path_match": "ipfix.reversePostNATDestinationIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reversePostNAPTSourceTransportPort": {
          "path_match": "ipfix.reversePostNAPTSourceTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostNAPTDestinationTransportPort": {
          "path_match": "ipfix.reversePostNAPTDestinationTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseNatOriginatingAddressRealm": {
          "path_match": "ipfix.reverseNatOriginatingAddressRealm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseNatEvent": {
          "path_match": "ipfix.reverseNatEvent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseInitiatorOctets": {
          "path_match": "ipfix.reverseInitiatorOctets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseResponderOctets": {
          "path_match": "ipfix.reverseResponderOctets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFirewallEvent": {
          "path_match": "ipfix.reverseFirewallEvent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIngressVRFID": {
          "path_match": "ipfix.reverseIngressVRFID",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEgressVRFID": {
          "path_match": "ipfix.reverseEgressVRFID",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseVRFname": {
          "path_match": "ipfix.reverseVRFname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reversePostMplsTopLabelExp": {
          "path_match": "ipfix.reversePostMplsTopLabelExp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTcpWindowScale": {
          "path_match": "ipfix.reverseTcpWindowScale",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEthernetHeaderLength": {
          "path_match": "ipfix.reverseEthernetHeaderLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEthernetPayloadLength": {
          "path_match": "ipfix.reverseEthernetPayloadLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEthernetTotalLength": {
          "path_match": "ipfix.reverseEthernetTotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDot1qVlanId": {
          "path_match": "ipfix.reverseDot1qVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDot1qPriority": {
          "path_match": "ipfix.reverseDot1qPriority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDot1qCustomerVlanId": {
          "path_match": "ipfix.reverseDot1qCustomerVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDot1qCustomerPriority": {
          "path_match": "ipfix.reverseDot1qCustomerPriority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMetroEvcId": {
          "path_match": "ipfix.reverseMetroEvcId",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMetroEvcType": {
          "path_match": "ipfix.reverseMetroEvcType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePseudoWireId": {
          "path_match": "ipfix.reversePseudoWireId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePseudoWireType": {
          "path_match": "ipfix.reversePseudoWireType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePseudoWireControlWord": {
          "path_match": "ipfix.reversePseudoWireControlWord",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIngressPhysicalInterface": {
          "path_match": "ipfix.reverseIngressPhysicalInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEgressPhysicalInterface": {
          "path_match": "ipfix.reverseEgressPhysicalInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostDot1qVlanId": {
          "path_match": "ipfix.reversePostDot1qVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostDot1qCustomerVlanId": {
          "path_match": "ipfix.reversePostDot1qCustomerVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEthernetType": {
          "path_match": "ipfix.reverseEthernetType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostIpPrecedence": {
          "path_match": "ipfix.reversePostIpPrecedence",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseCollectionTimeMilliseconds": {
          "path_match": "ipfix.reverseCollectionTimeMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseExportSctpStreamId": {
          "path_match": "ipfix.reverseExportSctpStreamId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMaxExportSeconds": {
          "path_match": "ipfix.reverseMaxExportSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMaxFlowEndSeconds": {
          "path_match": "ipfix.reverseMaxFlowEndSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMessageMD5Checksum": {
          "path_match": "ipfix.reverseMessageMD5Checksum",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMessageScope": {
          "path_match": "ipfix.reverseMessageScope",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMinExportSeconds": {
          "path_match": "ipfix.reverseMinExportSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMinFlowStartSeconds": {
          "path_match": "ipfix.reverseMinFlowStartSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseOpaqueOctets": {
          "path_match": "ipfix.reverseOpaqueOctets",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseSessionScope": {
          "path_match": "ipfix.reverseSessionScope",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMaxFlowEndMicroseconds": {
          "path_match": "ipfix.reverseMaxFlowEndMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMaxFlowEndMilliseconds": {
          "path_match": "ipfix.reverseMaxFlowEndMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMaxFlowEndNanoseconds": {
          "path_match": "ipfix.reverseMaxFlowEndNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMinFlowStartMicroseconds": {
          "path_match": "ipfix.reverseMinFlowStartMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMinFlowStartMilliseconds": {
          "path_match": "ipfix.reverseMinFlowStartMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMinFlowStartNanoseconds": {
          "path_match": "ipfix.reverseMinFlowStartNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseCollectorCertificate": {
          "path_match": "ipfix.reverseCollectorCertificate",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseExporterCertificate": {
          "path_match": "ipfix.reverseExporterCertificate",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseDataRecordsReliability": {
          "path_match": "ipfix.reverseDataRecordsReliability",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseObservationPointType": {
          "path_match": "ipfix.reverseObservationPointType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseNewConnectionDeltaCount": {
          "path_match": "ipfix.reverseNewConnectionDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseConnectionSumDurationSeconds": {
          "path_match": "ipfix.reverseConnectionSumDurationSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseConnectionTransactionId": {
          "path_match": "ipfix.reverseConnectionTransactionId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostNATSourceIPv6Address": {
          "path_match": "ipfix.reversePostNATSourceIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reversePostNATDestinationIPv6Address": {
          "path_match": "ipfix.reversePostNATDestinationIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseNatPoolId": {
          "path_match": "ipfix.reverseNatPoolId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseNatPoolName": {
          "path_match": "ipfix.reverseNatPoolName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseAnonymizationFlags": {
          "path_match": "ipfix.reverseAnonymizationFlags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseAnonymizationTechnique": {
          "path_match": "ipfix.reverseAnonymizationTechnique",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseInformationElementIndex": {
          "path_match": "ipfix.reverseInformationElementIndex",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseP2pTechnology": {
          "path_match": "ipfix.reverseP2pTechnology",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseTunnelTechnology": {
          "path_match": "ipfix.reverseTunnelTechnology",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseEncryptedTechnology": {
          "path_match": "ipfix.reverseEncryptedTechnology",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseBgpValidityState": {
          "path_match": "ipfix.reverseBgpValidityState",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIPSecSPI": {
          "path_match": "ipfix.reverseIPSecSPI",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseGreKey": {
          "path_match": "ipfix.reverseGreKey",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseNatType": {
          "path_match": "ipfix.reverseNatType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseInitiatorPackets": {
          "path_match": "ipfix.reverseInitiatorPackets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseResponderPackets": {
          "path_match": "ipfix.reverseResponderPackets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseObservationDomainName": {
          "path_match": "ipfix.reverseObservationDomainName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseSelectionSequenceId": {
          "path_match": "ipfix.reverseSelectionSequenceId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSelectorId": {
          "path_match": "ipfix.reverseSelectorId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseInformationElementId": {
          "path_match": "ipfix.reverseInformationElementId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSelectorAlgorithm": {
          "path_match": "ipfix.reverseSelectorAlgorithm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplingPacketInterval": {
          "path_match": "ipfix.reverseSamplingPacketInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplingPacketSpace": {
          "path_match": "ipfix.reverseSamplingPacketSpace",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplingTimeInterval": {
          "path_match": "ipfix.reverseSamplingTimeInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplingTimeSpace": {
          "path_match": "ipfix.reverseSamplingTimeSpace",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplingSize": {
          "path_match": "ipfix.reverseSamplingSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplingPopulation": {
          "path_match": "ipfix.reverseSamplingPopulation",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplingProbability": {
          "path_match": "ipfix.reverseSamplingProbability",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDataLinkFrameSize": {
          "path_match": "ipfix.reverseDataLinkFrameSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIpHeaderPacketSection": {
          "path_match": "ipfix.reverseIpHeaderPacketSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseIpPayloadPacketSection": {
          "path_match": "ipfix.reverseIpPayloadPacketSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseDataLinkFrameSection": {
          "path_match": "ipfix.reverseDataLinkFrameSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsLabelStackSection": {
          "path_match": "ipfix.reverseMplsLabelStackSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseMplsPayloadPacketSection": {
          "path_match": "ipfix.reverseMplsPayloadPacketSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseSelectorIdTotalPktsObserved": {
          "path_match": "ipfix.reverseSelectorIdTotalPktsObserved",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSelectorIdTotalPktsSelected": {
          "path_match": "ipfix.reverseSelectorIdTotalPktsSelected",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseAbsoluteError": {
          "path_match": "ipfix.reverseAbsoluteError",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "ipfix.reverseRelativeError": {
          "path_match": "ipfix.reverseRelativeError",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "ipfix.reverseObservationTimeSeconds": {
          "path_match": "ipfix.reverseObservationTimeSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseObservationTimeMilliseconds": {
          "path_match": "ipfix.reverseObservationTimeMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseObservationTimeMicroseconds": {
          "path_match": "ipfix.reverseObservationTimeMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseObservationTimeNanoseconds": {
          "path_match": "ipfix.reverseObservationTimeNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDigestHashValue": {
          "path_match": "ipfix.reverseDigestHashValue",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseHashIPPayloadOffset": {
          "path_match": "ipfix.reverseHashIPPayloadOffset",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseHashIPPayloadSize": {
          "path_match": "ipfix.reverseHashIPPayloadSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseHashOutputRangeMin": {
          "path_match": "ipfix.reverseHashOutputRangeMin",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseHashOutputRangeMax": {
          "path_match": "ipfix.reverseHashOutputRangeMax",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseHashSelectedRangeMin": {
          "path_match": "ipfix.reverseHashSelectedRangeMin",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseHashSelectedRangeMax": {
          "path_match": "ipfix.reverseHashSelectedRangeMax",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseHashDigestOutput": {
          "path_match": "ipfix.reverseHashDigestOutput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseHashInitialiserValue": {
          "path_match": "ipfix.reverseHashInitialiserValue",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSelectorName": {
          "path_match": "ipfix.reverseSelectorName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseUpperCILimit": {
          "path_match": "ipfix.reverseUpperCILimit",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "ipfix.reverseLowerCILimit": {
          "path_match": "ipfix.reverseLowerCILimit",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "ipfix.reverseConfidenceLevel": {
          "path_match": "ipfix.reverseConfidenceLevel",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "ipfix.reverseInformationElementDataType": {
          "path_match": "ipfix.reverseInformationElementDataType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseInformationElementDescription": {
          "path_match": "ipfix.reverseInformationElementDescription",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseInformationElementName": {
          "path_match": "ipfix.reverseInformationElementName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseInformationElementRangeBegin": {
          "path_match": "ipfix.reverseInformationElementRangeBegin",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseInformationElementRangeEnd": {
          "path_match": "ipfix.reverseInformationElementRangeEnd",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseInformationElementSemantics": {
          "path_match": "ipfix.reverseInformationElementSemantics",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseInformationElementUnits": {
          "path_match": "ipfix.reverseInformationElementUnits",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePrivateEnterpriseNumber": {
          "path_match": "ipfix.reversePrivateEnterpriseNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseVirtualStationInterfaceId": {
          "path_match": "ipfix.reverseVirtualStationInterfaceId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseVirtualStationInterfaceName": {
          "path_match": "ipfix.reverseVirtualStationInterfaceName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseVirtualStationUUID": {
          "path_match": "ipfix.reverseVirtualStationUUID",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseVirtualStationName": {
          "path_match": "ipfix.reverseVirtualStationName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseLayer2SegmentId": {
          "path_match": "ipfix.reverseLayer2SegmentId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseLayer2OctetDeltaCount": {
          "path_match": "ipfix.reverseLayer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseLayer2OctetTotalCount": {
          "path_match": "ipfix.reverseLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIngressUnicastPacketTotalCount": {
          "path_match": "ipfix.reverseIngressUnicastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIngressMulticastPacketTotalCount": {
          "path_match": "ipfix.reverseIngressMulticastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIngressBroadcastPacketTotalCount": {
          "path_match": "ipfix.reverseIngressBroadcastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEgressUnicastPacketTotalCount": {
          "path_match": "ipfix.reverseEgressUnicastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEgressBroadcastPacketTotalCount": {
          "path_match": "ipfix.reverseEgressBroadcastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMonitoringIntervalStartMilliSeconds": {
          "path_match": "ipfix.reverseMonitoringIntervalStartMilliSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMonitoringIntervalEndMilliSeconds": {
          "path_match": "ipfix.reverseMonitoringIntervalEndMilliSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePortRangeStart": {
          "path_match": "ipfix.reversePortRangeStart",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePortRangeEnd": {
          "path_match": "ipfix.reversePortRangeEnd",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePortRangeStepSize": {
          "path_match": "ipfix.reversePortRangeStepSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePortRangeNumPorts": {
          "path_match": "ipfix.reversePortRangeNumPorts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseStaMacAddress": {
          "path_match": "ipfix.reverseStaMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseStaIPv4Address": {
          "path_match": "ipfix.reverseStaIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseWtpMacAddress": {
          "path_match": "ipfix.reverseWtpMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseIngressInterfaceType": {
          "path_match": "ipfix.reverseIngressInterfaceType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseEgressInterfaceType": {
          "path_match": "ipfix.reverseEgressInterfaceType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseRtpSequenceNumber": {
          "path_match": "ipfix.reverseRtpSequenceNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseUserName": {
          "path_match": "ipfix.reverseUserName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseApplicationCategoryName": {
          "path_match": "ipfix.reverseApplicationCategoryName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseApplicationSubCategoryName": {
          "path_match": "ipfix.reverseApplicationSubCategoryName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseApplicationGroupName": {
          "path_match": "ipfix.reverseApplicationGroupName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseOriginalFlowsPresent": {
          "path_match": "ipfix.reverseOriginalFlowsPresent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseOriginalFlowsInitiated": {
          "path_match": "ipfix.reverseOriginalFlowsInitiated",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseOriginalFlowsCompleted": {
          "path_match": "ipfix.reverseOriginalFlowsCompleted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDistinctCountOfSourceIPAddress": {
          "path_match": "ipfix.reverseDistinctCountOfSourceIPAddress",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDistinctCountOfDestinationIPAddress": {
          "path_match": "ipfix.reverseDistinctCountOfDestinationIPAddress",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDistinctCountOfSourceIPv4Address": {
          "path_match": "ipfix.reverseDistinctCountOfSourceIPv4Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDistinctCountOfDestinationIPv4Address": {
          "path_match": "ipfix.reverseDistinctCountOfDestinationIPv4Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDistinctCountOfSourceIPv6Address": {
          "path_match": "ipfix.reverseDistinctCountOfSourceIPv6Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDistinctCountOfDestinationIPv6Address": {
          "path_match": "ipfix.reverseDistinctCountOfDestinationIPv6Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseValueDistributionMethod": {
          "path_match": "ipfix.reverseValueDistributionMethod",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseRfc3550JitterMilliseconds": {
          "path_match": "ipfix.reverseRfc3550JitterMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseRfc3550JitterMicroseconds": {
          "path_match": "ipfix.reverseRfc3550JitterMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseRfc3550JitterNanoseconds": {
          "path_match": "ipfix.reverseRfc3550JitterNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDot1qDEI": {
          "path_match": "ipfix.reverseDot1qDEI",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDot1qCustomerDEI": {
          "path_match": "ipfix.reverseDot1qCustomerDEI",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowSelectorAlgorithm": {
          "path_match": "ipfix.reverseFlowSelectorAlgorithm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowSelectedOctetDeltaCount": {
          "path_match": "ipfix.reverseFlowSelectedOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowSelectedPacketDeltaCount": {
          "path_match": "ipfix.reverseFlowSelectedPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowSelectedFlowDeltaCount": {
          "path_match": "ipfix.reverseFlowSelectedFlowDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSelectorIDTotalFlowsObserved": {
          "path_match": "ipfix.reverseSelectorIDTotalFlowsObserved",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSelectorIDTotalFlowsSelected": {
          "path_match": "ipfix.reverseSelectorIDTotalFlowsSelected",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplingFlowInterval": {
          "path_match": "ipfix.reverseSamplingFlowInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSamplingFlowSpacing": {
          "path_match": "ipfix.reverseSamplingFlowSpacing",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowSamplingTimeInterval": {
          "path_match": "ipfix.reverseFlowSamplingTimeInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseFlowSamplingTimeSpacing": {
          "path_match": "ipfix.reverseFlowSamplingTimeSpacing",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseHashFlowDomain": {
          "path_match": "ipfix.reverseHashFlowDomain",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTransportOctetDeltaCount": {
          "path_match": "ipfix.reverseTransportOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseTransportPacketDeltaCount": {
          "path_match": "ipfix.reverseTransportPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseOriginalExporterIPv4Address": {
          "path_match": "ipfix.reverseOriginalExporterIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseOriginalExporterIPv6Address": {
          "path_match": "ipfix.reverseOriginalExporterIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseOriginalObservationDomainId": {
          "path_match": "ipfix.reverseOriginalObservationDomainId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIntermediateProcessId": {
          "path_match": "ipfix.reverseIntermediateProcessId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIgnoredDataRecordTotalCount": {
          "path_match": "ipfix.reverseIgnoredDataRecordTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDataLinkFrameType": {
          "path_match": "ipfix.reverseDataLinkFrameType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSectionOffset": {
          "path_match": "ipfix.reverseSectionOffset",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseSectionExportedOctets": {
          "path_match": "ipfix.reverseSectionExportedOctets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDot1qServiceInstanceTag": {
          "path_match": "ipfix.reverseDot1qServiceInstanceTag",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseDot1qServiceInstanceId": {
          "path_match": "ipfix.reverseDot1qServiceInstanceId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDot1qServiceInstancePriority": {
          "path_match": "ipfix.reverseDot1qServiceInstancePriority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDot1qCustomerSourceMacAddress": {
          "path_match": "ipfix.reverseDot1qCustomerSourceMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reverseDot1qCustomerDestinationMacAddress": {
          "path_match": "ipfix.reverseDot1qCustomerDestinationMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.reversePostLayer2OctetDeltaCount": {
          "path_match": "ipfix.reversePostLayer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostMCastLayer2OctetDeltaCount": {
          "path_match": "ipfix.reversePostMCastLayer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePostLayer2OctetTotalCount": {
          "path_match": "ipfix.reversePostLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      
      {
        "ipfix.reversePostMCastLayer2OctetTotalCount": {
          "path_match": "ipfix.reversePostMCastLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMinimumLayer2TotalLength": {
          "path_match": "ipfix.reverseMinimumLayer2TotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseMaximumLayer2TotalLength": {
          "path_match": "ipfix.reverseMaximumLayer2TotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDroppedLayer2OctetDeltaCount": {
          "path_match": "ipfix.reverseDroppedLayer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseDroppedLayer2OctetTotalCount": {
          "path_match": "ipfix.reverseDroppedLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseIgnoredLayer2OctetTotalCount": {
          "path_match": "ipfix.reverseIgnoredLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseNotSentLayer2OctetTotalCount": {
          "path_match": "ipfix.reverseNotSentLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseLayer2OctetDeltaSumOfSquares": {
          "path_match": "ipfix.reverseLayer2OctetDeltaSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseLayer2OctetTotalSumOfSquares": {
          "path_match": "ipfix.reverseLayer2OctetTotalSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseLayer2FrameDeltaCount": {
          "path_match": "ipfix.reverseLayer2FrameDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reverseLayer2FrameTotalCount": {
          "path_match": "ipfix.reverseLayer2FrameTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.reversePseudoWireDestinationIPv4Address": {
          "path_match": "ipfix.reversePseudoWireDestinationIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.reverseIgnoredLayer2FrameTotalCount": {
          "path_match": "ipfix.reverseIgnoredLayer2FrameTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      


      {
        "ipfix.alu_nat_inside_svcid": {
          "path_match": "ipfix.alu_nat_inside_svcid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.alu_nat_outside_svcid": {
          "path_match": "ipfix.alu_nat_outside_svcid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.alu_nat_sub_string": {
          "path_match": "ipfix.alu_nat_sub_string",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "ipfix.barracuda_timestamp": {
          "path_match": "ipfix.barracuda_timestamp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.barracuda_log_op": {
          "path_match": "ipfix.barracuda_log_op",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.barracuda_traffic_type": {
          "path_match": "ipfix.barracuda_traffic_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.barracuda_fw_rule": {
          "path_match": "ipfix.barracuda_fw_rule",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.barracuda_service": {
          "path_match": "ipfix.barracuda_service",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.barracuda_reason": {
          "path_match": "ipfix.barracuda_reason",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.barracuda_reason_text": {
          "path_match": "ipfix.barracuda_reason_text",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.barracuda_bind_ipv4_addr": {
          "path_match": "ipfix.barracuda_bind_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.barracuda_bind_l4_port": {
          "path_match": "ipfix.barracuda_bind_l4_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.barracuda_conn_ipv4_addr": {
          "path_match": "ipfix.barracuda_conn_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.barracuda_conn_l4_port": {
          "path_match": "ipfix.barracuda_conn_l4_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.barracuda_audit_counter": {
          "path_match": "ipfix.barracuda_audit_counter",
          "mapping": {
            "type": "long"
          }
        }
      },



      {
        "ipfix.cace_local_ipv4_addr": {
          "path_match": "ipfix.cace_local_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cace_remote_ipv4_addr": {
          "path_match": "ipfix.cace_remote_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cace_local_ipv6_addr": {
          "path_match": "ipfix.cace_local_ipv6_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cace_remote_ipv6_addr": {
          "path_match": "ipfix.cace_remote_ipv6_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cace_local_l4_port": {
          "path_match": "ipfix.cace_local_l4_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cace_remote_l4_port": {
          "path_match": "ipfix.cace_remote_l4_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cace_local_ipv4_id": {
          "path_match": "ipfix.cace_local_ipv4_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cace_local_icmp_id": {
          "path_match": "ipfix.cace_local_icmp_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cace_local_proc_user_id": {
          "path_match": "ipfix.cace_local_proc_user_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cace_local_proc_id": {
          "path_match": "ipfix.cace_local_proc_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cace_local_proc_user": {
          "path_match": "ipfix.cace_local_proc_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cace_local_proc_command": {
          "path_match": "ipfix.cace_local_proc_command",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "ipfix.calix_hostname": {
          "path_match": "ipfix.calix_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_shelf": {
          "path_match": "ipfix.calix_shelf",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_slot": {
          "path_match": "ipfix.calix_slot",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_port": {
          "path_match": "ipfix.calix_port",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_ont_id": {
          "path_match": "ipfix.calix_ont_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_svlan": {
          "path_match": "ipfix.calix_svlan",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_cvlan": {
          "path_match": "ipfix.calix_cvlan",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_sample_time": {
          "path_match": "ipfix.calix_sample_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lag_group": {
          "path_match": "ipfix.calix_lag_group",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_bin_duration": {
          "path_match": "ipfix.calix_bin_duration",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_bin_number": {
          "path_match": "ipfix.calix_bin_number",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_start_time": {
          "path_match": "ipfix.calix_start_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_end_time": {
          "path_match": "ipfix.calix_end_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_time_elapsed": {
          "path_match": "ipfix.calix_time_elapsed",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_suspect": {
          "path_match": "ipfix.calix_suspect",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_cause": {
          "path_match": "ipfix.calix_cause",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_subscriber_uid": {
          "path_match": "ipfix.calix_subscriber_uid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_ont_ifstats_aid": {
          "path_match": "ipfix.calix_ont_ifstats_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_olt_pon_util_aid": {
          "path_match": "ipfix.calix_olt_pon_util_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_ont_evcstats_aid": {
          "path_match": "ipfix.calix_ont_evcstats_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_olt_pon_optical_aid": {
          "path_match": "ipfix.calix_olt_pon_optical_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_olt_ont_bin_aid": {
          "path_match": "ipfix.calix_olt_ont_bin_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_ont_eth_util_aid": {
          "path_match": "ipfix.calix_ont_eth_util_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_mep_stats_aid": {
          "path_match": "ipfix.calix_mep_stats_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_mip_stats_aid": {
          "path_match": "ipfix.calix_mip_stats_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_delay_measurement_aid": {
          "path_match": "ipfix.calix_delay_measurement_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_loss_measurement_aid": {
          "path_match": "ipfix.calix_loss_measurement_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_lm_availability_aid": {
          "path_match": "ipfix.calix_lm_availability_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_subscriber_flows_aid": {
          "path_match": "ipfix.calix_subscriber_flows_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_ont_evccos_stats_aid": {
          "path_match": "ipfix.calix_ont_evccos_stats_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_ont_eth_total_aid": {
          "path_match": "ipfix.calix_ont_eth_total_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_bng_dhcp_pool_aid": {
          "path_match": "ipfix.calix_bng_dhcp_pool_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_bng_dhcp_subscriber_aid": {
          "path_match": "ipfix.calix_bng_dhcp_subscriber_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_bng_static_subscriber_aid": {
          "path_match": "ipfix.calix_bng_static_subscriber_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_bng_gx_counter_aid": {
          "path_match": "ipfix.calix_bng_gx_counter_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_bng_url_redirect_aid": {
          "path_match": "ipfix.calix_bng_url_redirect_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_bng_policy_mgmt_aid": {
          "path_match": "ipfix.calix_bng_policy_mgmt_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_bng_arp_counters_aid": {
          "path_match": "ipfix.calix_bng_arp_counters_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_bng_diameter_client_aid": {
          "path_match": "ipfix.calix_bng_diameter_client_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_bng_radius_client_aid": {
          "path_match": "ipfix.calix_bng_radius_client_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_interface_ethernet_aid": {
          "path_match": "ipfix.calix_interface_ethernet_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_interface_lag_aid": {
          "path_match": "ipfix.calix_interface_lag_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_tx_octets": {
          "path_match": "ipfix.calix_tx_octets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_pkts": {
          "path_match": "ipfix.calix_tx_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_discards": {
          "path_match": "ipfix.calix_tx_discards",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_errors": {
          "path_match": "ipfix.calix_tx_errors",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_octets": {
          "path_match": "ipfix.calix_rx_octets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_pkts": {
          "path_match": "ipfix.calix_rx_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_discards": {
          "path_match": "ipfix.calix_rx_discards",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_errors": {
          "path_match": "ipfix.calix_rx_errors",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_octets": {
          "path_match": "ipfix.calix_upstream_octets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_octets": {
          "path_match": "ipfix.calix_downstream_octets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_admitted_fixed_upstream_bw": {
          "path_match": "ipfix.calix_admitted_fixed_upstream_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_available_fixed_upstream_bw": {
          "path_match": "ipfix.calix_available_fixed_upstream_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_admitted_excess_upstream_bw": {
          "path_match": "ipfix.calix_admitted_excess_upstream_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_available_excess_upstream_bw": {
          "path_match": "ipfix.calix_available_excess_upstream_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_green_octets_uni": {
          "path_match": "ipfix.calix_green_octets_uni",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_yellow_octets_uni": {
          "path_match": "ipfix.calix_yellow_octets_uni",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_red_octets_uni": {
          "path_match": "ipfix.calix_red_octets_uni",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_green_pkts_uni": {
          "path_match": "ipfix.calix_green_pkts_uni",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_yellow_pkts_uni": {
          "path_match": "ipfix.calix_yellow_pkts_uni",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_red_pkts_uni": {
          "path_match": "ipfix.calix_red_pkts_uni",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_octets_policer_discards": {
          "path_match": "ipfix.calix_octets_policer_discards",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts_policer_discards": {
          "path_match": "ipfix.calix_pkts_policer_discards",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_green_octets_pon": {
          "path_match": "ipfix.calix_green_octets_pon",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_yellow_octets_pon": {
          "path_match": "ipfix.calix_yellow_octets_pon",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_green_pkts_pon": {
          "path_match": "ipfix.calix_green_pkts_pon",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_yellow_pkts_pon": {
          "path_match": "ipfix.calix_yellow_pkts_pon",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_power_feed_voltage": {
          "path_match": "ipfix.calix_power_feed_voltage",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_optical_power": {
          "path_match": "ipfix.calix_rx_optical_power",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_mean_optical_launch_power": {
          "path_match": "ipfix.calix_mean_optical_launch_power",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_laser_bias_current": {
          "path_match": "ipfix.calix_laser_bias_current",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_temperature": {
          "path_match": "ipfix.calix_temperature",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_optical_channel": {
          "path_match": "ipfix.calix_optical_channel",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_bip_errors": {
          "path_match": "ipfix.calix_upstream_bip_errors",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_missed_bursts": {
          "path_match": "ipfix.calix_upstream_missed_bursts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_gem_hec_errors": {
          "path_match": "ipfix.calix_upstream_gem_hec_errors",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_bip8_err_sec": {
          "path_match": "ipfix.calix_upstream_bip8_err_sec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_bip8_severely_err_sec": {
          "path_match": "ipfix.calix_upstream_bip8_severely_err_sec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_bip8_unavail_sec": {
          "path_match": "ipfix.calix_upstream_bip8_unavail_sec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_missed_bursts_err_sec": {
          "path_match": "ipfix.calix_upstream_missed_bursts_err_sec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_fec_corrected_bytes": {
          "path_match": "ipfix.calix_upstream_fec_corrected_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_fec_corrected_code_words": {
          "path_match": "ipfix.calix_upstream_fec_corrected_code_words",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_fec_uncorrected_code_words": {
          "path_match": "ipfix.calix_upstream_fec_uncorrected_code_words",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_fec_total_code_words": {
          "path_match": "ipfix.calix_upstream_fec_total_code_words",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_fec_sec": {
          "path_match": "ipfix.calix_upstream_fec_sec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_bip_errors": {
          "path_match": "ipfix.calix_downstream_bip_errors",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_bip8_err_sec": {
          "path_match": "ipfix.calix_downstream_bip8_err_sec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_bip8_severely_err_sec": {
          "path_match": "ipfix.calix_downstream_bip8_severely_err_sec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_bip8_unavail_sec": {
          "path_match": "ipfix.calix_downstream_bip8_unavail_sec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_fec_corrected_bytes": {
          "path_match": "ipfix.calix_downstream_fec_corrected_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_fec_corrected_code_words": {
          "path_match": "ipfix.calix_downstream_fec_corrected_code_words",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_fec_uncorrected_code_words": {
          "path_match": "ipfix.calix_downstream_fec_uncorrected_code_words",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_fec_total_code_words": {
          "path_match": "ipfix.calix_downstream_fec_total_code_words",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_fec_sec": {
          "path_match": "ipfix.calix_downstream_fec_sec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_fcs_errors": {
          "path_match": "ipfix.calix_fcs_errors",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_excessive_collision": {
          "path_match": "ipfix.calix_excessive_collision",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_late_collision": {
          "path_match": "ipfix.calix_late_collision",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_too_long": {
          "path_match": "ipfix.calix_frame_too_long",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_buffer_overflow_xmit": {
          "path_match": "ipfix.calix_buffer_overflow_xmit",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_buffer_overflow_recv": {
          "path_match": "ipfix.calix_buffer_overflow_recv",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_single_collision": {
          "path_match": "ipfix.calix_single_collision",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_multiple_collision": {
          "path_match": "ipfix.calix_multiple_collision",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_sqe_counter": {
          "path_match": "ipfix.calix_sqe_counter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_deferred_xmit_count": {
          "path_match": "ipfix.calix_deferred_xmit_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_internal_mac_xmit_error": {
          "path_match": "ipfix.calix_internal_mac_xmit_error",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_internal_mac_recv_error": {
          "path_match": "ipfix.calix_internal_mac_recv_error",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_carrier_sense_error": {
          "path_match": "ipfix.calix_carrier_sense_error",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_alignment_error": {
          "path_match": "ipfix.calix_alignment_error",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_drop_events": {
          "path_match": "ipfix.calix_upstream_drop_events",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_packets": {
          "path_match": "ipfix.calix_upstream_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_broadcast_packets": {
          "path_match": "ipfix.calix_upstream_broadcast_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_multicast_packets": {
          "path_match": "ipfix.calix_upstream_multicast_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_unicast_packets": {
          "path_match": "ipfix.calix_upstream_unicast_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_crc_errored_packets": {
          "path_match": "ipfix.calix_upstream_crc_errored_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_oversize_packets": {
          "path_match": "ipfix.calix_upstream_oversize_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_undersize_packets": {
          "path_match": "ipfix.calix_upstream_undersize_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_packets_to_64_bytes": {
          "path_match": "ipfix.calix_upstream_packets_to_64_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_packets_64_to_127_bytes": {
          "path_match": "ipfix.calix_upstream_packets_64_to_127_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_packets_128_to_255_bytes": {
          "path_match": "ipfix.calix_upstream_packets_128_to_255_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_packets_256_to_511_bytes": {
          "path_match": "ipfix.calix_upstream_packets_256_to_511_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_packets_512_to_1023_bytes": {
          "path_match": "ipfix.calix_upstream_packets_512_to_1023_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_packets_1024_to_1518_bytes": {
          "path_match": "ipfix.calix_upstream_packets_1024_to_1518_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_drop_events": {
          "path_match": "ipfix.calix_downstream_drop_events",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_packets": {
          "path_match": "ipfix.calix_downstream_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_broadcast_packets": {
          "path_match": "ipfix.calix_downstream_broadcast_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_multicast_packets": {
          "path_match": "ipfix.calix_downstream_multicast_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_unicast_packets": {
          "path_match": "ipfix.calix_downstream_unicast_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_crc_errored_packets": {
          "path_match": "ipfix.calix_downstream_crc_errored_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_oversize_packets": {
          "path_match": "ipfix.calix_downstream_oversize_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_undersize_packets": {
          "path_match": "ipfix.calix_downstream_undersize_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_gem_frames": {
          "path_match": "ipfix.calix_upstream_gem_frames",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_gem_payload_bytes": {
          "path_match": "ipfix.calix_upstream_gem_payload_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_gem_frames": {
          "path_match": "ipfix.calix_downstream_gem_frames",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_gem_payload_bytes": {
          "path_match": "ipfix.calix_downstream_gem_payload_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_gem_encryption_key_errors": {
          "path_match": "ipfix.calix_gem_encryption_key_errors",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_admitted_assured_upstream_bw": {
          "path_match": "ipfix.calix_admitted_assured_upstream_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_available_assured_upstream_bw": {
          "path_match": "ipfix.calix_available_assured_upstream_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_fixed_upstream_bytes": {
          "path_match": "ipfix.calix_fixed_upstream_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_assured_upstream_bytes": {
          "path_match": "ipfix.calix_assured_upstream_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_excess_upstream_bytes": {
          "path_match": "ipfix.calix_excess_upstream_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_flow_direction": {
          "path_match": "ipfix.calix_flow_direction",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_flow_number": {
          "path_match": "ipfix.calix_flow_number",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_flow_pkts": {
          "path_match": "ipfix.calix_flow_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_flow_bytes": {
          "path_match": "ipfix.calix_flow_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_flow_drop_pkts": {
          "path_match": "ipfix.calix_flow_drop_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_flow_drop_bytes": {
          "path_match": "ipfix.calix_flow_drop_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ingress_bucket_seconds": {
          "path_match": "ipfix.calix_ingress_bucket_seconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ingress_bucket_bps": {
          "path_match": "ipfix.calix_ingress_bucket_bps",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ingress_bucket_percent": {
          "path_match": "ipfix.calix_ingress_bucket_percent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_egress_bucket_seconds": {
          "path_match": "ipfix.calix_egress_bucket_seconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_egress_bucket_bps": {
          "path_match": "ipfix.calix_egress_bucket_bps",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_egress_bucket_percent": {
          "path_match": "ipfix.calix_egress_bucket_percent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ccm_received": {
          "path_match": "ipfix.calix_ccm_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ccm_transmitted": {
          "path_match": "ipfix.calix_ccm_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ccm_received_rdi": {
          "path_match": "ipfix.calix_ccm_received_rdi",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ccm_transmitted_rdi": {
          "path_match": "ipfix.calix_ccm_transmitted_rdi",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ccm_received_bad_sender_id": {
          "path_match": "ipfix.calix_ccm_received_bad_sender_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ccm_received_bad_port_status": {
          "path_match": "ipfix.calix_ccm_received_bad_port_status",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ccm_received_bad_if_status": {
          "path_match": "ipfix.calix_ccm_received_bad_if_status",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ccm_received_bad_seq_errors": {
          "path_match": "ipfix.calix_ccm_received_bad_seq_errors",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dmm_transmitted": {
          "path_match": "ipfix.calix_dmm_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dmr_received": {
          "path_match": "ipfix.calix_dmr_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dmm_received": {
          "path_match": "ipfix.calix_dmm_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dmr_transmitted": {
          "path_match": "ipfix.calix_dmr_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dm1_transmitted": {
          "path_match": "ipfix.calix_dm1_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dm1_received": {
          "path_match": "ipfix.calix_dm1_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_slm_transmitted": {
          "path_match": "ipfix.calix_slm_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_slr_received": {
          "path_match": "ipfix.calix_slr_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_slm_received": {
          "path_match": "ipfix.calix_slm_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_slr_transmitted": {
          "path_match": "ipfix.calix_slr_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lmm_transmitted": {
          "path_match": "ipfix.calix_lmm_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lmr_received": {
          "path_match": "ipfix.calix_lmr_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lmm_received": {
          "path_match": "ipfix.calix_lmm_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lmr_transmitted": {
          "path_match": "ipfix.calix_lmr_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ltm_transmitted": {
          "path_match": "ipfix.calix_ltm_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ltr_received": {
          "path_match": "ipfix.calix_ltr_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ltm_received": {
          "path_match": "ipfix.calix_ltm_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ltr_transmitted": {
          "path_match": "ipfix.calix_ltr_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_ltr_unexpected": {
          "path_match": "ipfix.calix_ltr_unexpected",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lbm_transmitted": {
          "path_match": "ipfix.calix_lbm_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lbr_received": {
          "path_match": "ipfix.calix_lbr_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lbm_received": {
          "path_match": "ipfix.calix_lbm_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lbr_transmitted": {
          "path_match": "ipfix.calix_lbr_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lbr_received_out_of_order": {
          "path_match": "ipfix.calix_lbr_received_out_of_order",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lbr_received_bad_msdu": {
          "path_match": "ipfix.calix_lbr_received_bad_msdu",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_up_mhf_lbm_received": {
          "path_match": "ipfix.calix_up_mhf_lbm_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_up_mhf_lbr_transmitted": {
          "path_match": "ipfix.calix_up_mhf_lbr_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_up_mhf_ltm_received": {
          "path_match": "ipfix.calix_up_mhf_ltm_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_up_mhf_ltm_forwarded": {
          "path_match": "ipfix.calix_up_mhf_ltm_forwarded",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_up_mhf_ltr_transmitted": {
          "path_match": "ipfix.calix_up_mhf_ltr_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dn_mhf_lbm_received": {
          "path_match": "ipfix.calix_dn_mhf_lbm_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dn_mhf_lbr_transmitted": {
          "path_match": "ipfix.calix_dn_mhf_lbr_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dn_mhf_ltm_received": {
          "path_match": "ipfix.calix_dn_mhf_ltm_received",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dn_mhf_ltm_forwarded": {
          "path_match": "ipfix.calix_dn_mhf_ltm_forwarded",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dn_mhf_ltr_transmitted": {
          "path_match": "ipfix.calix_dn_mhf_ltr_transmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_stats_index": {
          "path_match": "ipfix.calix_stats_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_elapsed_time": {
          "path_match": "ipfix.calix_elapsed_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_two_way_min": {
          "path_match": "ipfix.calix_frame_delay_two_way_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_two_way_max": {
          "path_match": "ipfix.calix_frame_delay_two_way_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_two_way_avg": {
          "path_match": "ipfix.calix_frame_delay_two_way_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_forward_min": {
          "path_match": "ipfix.calix_frame_delay_forward_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_forward_max": {
          "path_match": "ipfix.calix_frame_delay_forward_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_forward_avg": {
          "path_match": "ipfix.calix_frame_delay_forward_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_backward_min": {
          "path_match": "ipfix.calix_frame_delay_backward_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_backward_max": {
          "path_match": "ipfix.calix_frame_delay_backward_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_backward_avg": {
          "path_match": "ipfix.calix_frame_delay_backward_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_inter_frame_delay_variation_two_way_min": {
          "path_match": "ipfix.calix_inter_frame_delay_variation_two_way_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_inter_frame_delay_variation_two_way_max": {
          "path_match": "ipfix.calix_inter_frame_delay_variation_two_way_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_inter_frame_delay_variation_two_way_avg": {
          "path_match": "ipfix.calix_inter_frame_delay_variation_two_way_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_inter_frame_delay_variation_forward_min": {
          "path_match": "ipfix.calix_inter_frame_delay_variation_forward_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_inter_frame_delay_variation_forward_max": {
          "path_match": "ipfix.calix_inter_frame_delay_variation_forward_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_inter_frame_delay_variation_forward_avg": {
          "path_match": "ipfix.calix_inter_frame_delay_variation_forward_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_inter_frame_delay_variation_backward_min": {
          "path_match": "ipfix.calix_inter_frame_delay_variation_backward_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_inter_frame_delay_variation_backward_max": {
          "path_match": "ipfix.calix_inter_frame_delay_variation_backward_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_inter_frame_delay_variation_backward_avg": {
          "path_match": "ipfix.calix_inter_frame_delay_variation_backward_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_range_two_way_max": {
          "path_match": "ipfix.calix_frame_delay_range_two_way_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_range_two_way_avg": {
          "path_match": "ipfix.calix_frame_delay_range_two_way_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_range_forward_max": {
          "path_match": "ipfix.calix_frame_delay_range_forward_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_range_forward_avg": {
          "path_match": "ipfix.calix_frame_delay_range_forward_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_range_backward_max": {
          "path_match": "ipfix.calix_frame_delay_range_backward_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_frame_delay_range_backward_avg": {
          "path_match": "ipfix.calix_frame_delay_range_backward_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_out_oam_pdus": {
          "path_match": "ipfix.calix_out_oam_pdus",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_in_oam_pdus": {
          "path_match": "ipfix.calix_in_oam_pdus",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_stats_index": {
          "path_match": "ipfix.calix_stats_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_elapsed_time": {
          "path_match": "ipfix.calix_elapsed_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_transmitted_frames": {
          "path_match": "ipfix.calix_forward_transmitted_frames",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_received_frames": {
          "path_match": "ipfix.calix_forward_received_frames",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_min_frame_loss_ratio": {
          "path_match": "ipfix.calix_forward_min_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_max_frame_loss_ratio": {
          "path_match": "ipfix.calix_forward_max_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_avg_frame_loss_ratio": {
          "path_match": "ipfix.calix_forward_avg_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_transmitted_frames": {
          "path_match": "ipfix.calix_backward_transmitted_frames",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_received_frames": {
          "path_match": "ipfix.calix_backward_received_frames",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_min_frame_loss_ratio": {
          "path_match": "ipfix.calix_backward_min_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_max_frame_loss_ratio": {
          "path_match": "ipfix.calix_backward_max_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_avg_frame_loss_ratio": {
          "path_match": "ipfix.calix_backward_avg_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_out_oam_pdus": {
          "path_match": "ipfix.calix_out_oam_pdus",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_in_oam_pdus": {
          "path_match": "ipfix.calix_in_oam_pdus",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_stats_index": {
          "path_match": "ipfix.calix_stats_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_elapsed_time": {
          "path_match": "ipfix.calix_elapsed_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_high_loss_intervals": {
          "path_match": "ipfix.calix_forward_high_loss_intervals",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_high_loss_intervals": {
          "path_match": "ipfix.calix_backward_high_loss_intervals",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_consecutive_high_loss_intervals": {
          "path_match": "ipfix.calix_forward_consecutive_high_loss_intervals",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_consecutive_high_loss_intervals": {
          "path_match": "ipfix.calix_backward_consecutive_high_loss_intervals",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_available_indicators": {
          "path_match": "ipfix.calix_forward_available_indicators",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_available_indicators": {
          "path_match": "ipfix.calix_backward_available_indicators",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_unavailable_indicators": {
          "path_match": "ipfix.calix_forward_unavailable_indicators",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_unavailable_indicators": {
          "path_match": "ipfix.calix_backward_unavailable_indicators",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_min_frame_loss_ratio": {
          "path_match": "ipfix.calix_forward_min_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_max_frame_loss_ratio": {
          "path_match": "ipfix.calix_forward_max_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_forward_avg_frame_loss_ratio": {
          "path_match": "ipfix.calix_forward_avg_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_min_frame_loss_ratio": {
          "path_match": "ipfix.calix_backward_min_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_max_frame_loss_ratio": {
          "path_match": "ipfix.calix_backward_max_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_backward_avg_frame_loss_ratio": {
          "path_match": "ipfix.calix_backward_avg_frame_loss_ratio",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_if_index": {
          "path_match": "ipfix.calix_if_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_drop_events": {
          "path_match": "ipfix.calix_drop_events",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_bytes": {
          "path_match": "ipfix.calix_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts": {
          "path_match": "ipfix.calix_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_broadcast_pkts": {
          "path_match": "ipfix.calix_broadcast_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_multicast_pkts": {
          "path_match": "ipfix.calix_multicast_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_crc_align_errors": {
          "path_match": "ipfix.calix_crc_align_errors",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_undersize_pkts": {
          "path_match": "ipfix.calix_undersize_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_oversize_pkts": {
          "path_match": "ipfix.calix_oversize_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_fragments": {
          "path_match": "ipfix.calix_fragments",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts_to_64_bytes": {
          "path_match": "ipfix.calix_pkts_to_64_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts_65_to_127_bytes": {
          "path_match": "ipfix.calix_pkts_65_to_127_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts_128_to_255_bytes": {
          "path_match": "ipfix.calix_pkts_128_to_255_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts_256_to_511_bytes": {
          "path_match": "ipfix.calix_pkts_256_to_511_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts_512_to_1023_bytes": {
          "path_match": "ipfix.calix_pkts_512_to_1023_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts_1024_to_1518_bytes": {
          "path_match": "ipfix.calix_pkts_1024_to_1518_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts_1519_to_2047_bytes": {
          "path_match": "ipfix.calix_pkts_1519_to_2047_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts_2048_to_4095_bytes": {
          "path_match": "ipfix.calix_pkts_2048_to_4095_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts_4096_to_9216_bytes": {
          "path_match": "ipfix.calix_pkts_4096_to_9216_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pkts_9217_to_16383_bytes": {
          "path_match": "ipfix.calix_pkts_9217_to_16383_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_unicast_pkts": {
          "path_match": "ipfix.calix_rx_unicast_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_multicast_pkts": {
          "path_match": "ipfix.calix_rx_multicast_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_broadcast_pkts": {
          "path_match": "ipfix.calix_rx_broadcast_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_pause_frames": {
          "path_match": "ipfix.calix_rx_pause_frames",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_unknown_protos": {
          "path_match": "ipfix.calix_rx_unknown_protos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_unicast_pkts": {
          "path_match": "ipfix.calix_tx_unicast_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_multicast_pkts": {
          "path_match": "ipfix.calix_tx_multicast_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_broadcast_pkts": {
          "path_match": "ipfix.calix_tx_broadcast_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_pause_frames": {
          "path_match": "ipfix.calix_tx_pause_frames",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_align_errors": {
          "path_match": "ipfix.calix_align_errors",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_jabbers": {
          "path_match": "ipfix.calix_jabbers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_utilization": {
          "path_match": "ipfix.calix_rx_utilization",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_utilization": {
          "path_match": "ipfix.calix_tx_utilization",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_pps": {
          "path_match": "ipfix.calix_rx_pps",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_pps": {
          "path_match": "ipfix.calix_tx_pps",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_bps": {
          "path_match": "ipfix.calix_rx_bps",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_bps": {
          "path_match": "ipfix.calix_tx_bps",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_role": {
          "path_match": "ipfix.calix_role",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_subscriber": {
          "path_match": "ipfix.calix_subscriber",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_pool_name": {
          "path_match": "ipfix.calix_pool_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_configured_pool_size": {
          "path_match": "ipfix.calix_configured_pool_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_leases_in_grace": {
          "path_match": "ipfix.calix_leases_in_grace",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_active_leases": {
          "path_match": "ipfix.calix_active_leases",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_max_leases": {
          "path_match": "ipfix.calix_max_leases",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_min_leases": {
          "path_match": "ipfix.calix_min_leases",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_avg_leases": {
          "path_match": "ipfix.calix_avg_leases",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_offers_sent": {
          "path_match": "ipfix.calix_offers_sent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_offers_accepted": {
          "path_match": "ipfix.calix_offers_accepted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_requests_granted": {
          "path_match": "ipfix.calix_requests_granted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_requests_declined": {
          "path_match": "ipfix.calix_requests_declined",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_request_timeouts": {
          "path_match": "ipfix.calix_request_timeouts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lease_renewals": {
          "path_match": "ipfix.calix_lease_renewals",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_lease_timer_expiries": {
          "path_match": "ipfix.calix_lease_timer_expiries",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_grace_timer_expiries": {
          "path_match": "ipfix.calix_grace_timer_expiries",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_configured_dynamic_subscribers": {
          "path_match": "ipfix.calix_configured_dynamic_subscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_active_dynamic_ips": {
          "path_match": "ipfix.calix_active_dynamic_ips",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_active_dynamic_subscribers": {
          "path_match": "ipfix.calix_active_dynamic_subscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_max_active_dynamic_subscribers": {
          "path_match": "ipfix.calix_max_active_dynamic_subscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_min_active_dynamic_subscribers": {
          "path_match": "ipfix.calix_min_active_dynamic_subscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_avg_active_dynamic_subscribers": {
          "path_match": "ipfix.calix_avg_active_dynamic_subscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_configured_active_subscribers": {
          "path_match": "ipfix.calix_configured_active_subscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_active_static_ips": {
          "path_match": "ipfix.calix_active_static_ips",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_active_static_subscribers": {
          "path_match": "ipfix.calix_active_static_subscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_max_active_static_subscribers": {
          "path_match": "ipfix.calix_max_active_static_subscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_min_active_static_subscribers": {
          "path_match": "ipfix.calix_min_active_static_subscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_avg_active_static_subscribers": {
          "path_match": "ipfix.calix_avg_active_static_subscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_ccr_i": {
          "path_match": "ipfix.calix_tx_ccr_i",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_cca_i": {
          "path_match": "ipfix.calix_rx_cca_i",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_ccr_u": {
          "path_match": "ipfix.calix_tx_ccr_u",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_cca_u": {
          "path_match": "ipfix.calix_rx_cca_u",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_rar": {
          "path_match": "ipfix.calix_rx_rar",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_raa": {
          "path_match": "ipfix.calix_tx_raa",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_raa_session_id_mismatch": {
          "path_match": "ipfix.calix_raa_session_id_mismatch",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pcrf_timer_expiries": {
          "path_match": "ipfix.calix_pcrf_timer_expiries",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_configured_subscribers_with_pcrf_enabled": {
          "path_match": "ipfix.calix_configured_subscribers_with_pcrf_enabled",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_active_subscribers_with_pcrf_enabled": {
          "path_match": "ipfix.calix_active_subscribers_with_pcrf_enabled",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_active_default_subscribers_with_pcrf_enabled": {
          "path_match": "ipfix.calix_active_default_subscribers_with_pcrf_enabled",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_url_redirect_subscribers": {
          "path_match": "ipfix.calix_url_redirect_subscribers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_url_redirect_policies_applied": {
          "path_match": "ipfix.calix_url_redirect_policies_applied",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_url_updates": {
          "path_match": "ipfix.calix_url_updates",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dynamic_policy_apply_requests": {
          "path_match": "ipfix.calix_dynamic_policy_apply_requests",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dynamic_policy_apply_successes": {
          "path_match": "ipfix.calix_dynamic_policy_apply_successes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_dynamic_policy_apply_failures": {
          "path_match": "ipfix.calix_dynamic_policy_apply_failures",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_arp_req": {
          "path_match": "ipfix.calix_rx_arp_req",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_arp_resp": {
          "path_match": "ipfix.calix_tx_arp_resp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_arp_timer_expiries": {
          "path_match": "ipfix.calix_arp_timer_expiries",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_diameter_client_name": {
          "path_match": "ipfix.calix_diameter_client_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_tx_cer": {
          "path_match": "ipfix.calix_tx_cer",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_cea": {
          "path_match": "ipfix.calix_rx_cea",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rtx_msg": {
          "path_match": "ipfix.calix_rtx_msg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_msg_timeout": {
          "path_match": "ipfix.calix_msg_timeout",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_peer_up": {
          "path_match": "ipfix.calix_peer_up",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_peer_down": {
          "path_match": "ipfix.calix_peer_down",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_watchdog_timer_expiries": {
          "path_match": "ipfix.calix_watchdog_timer_expiries",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_peer_disconnect": {
          "path_match": "ipfix.calix_peer_disconnect",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_radius_client_name": {
          "path_match": "ipfix.calix_radius_client_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_tx_accounting_start": {
          "path_match": "ipfix.calix_tx_accounting_start",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_accounting_interim": {
          "path_match": "ipfix.calix_tx_accounting_interim",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_tx_accounting_stop": {
          "path_match": "ipfix.calix_tx_accounting_stop",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rtx_accounting_start": {
          "path_match": "ipfix.calix_rtx_accounting_start",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rtx_accounting_interim": {
          "path_match": "ipfix.calix_rtx_accounting_interim",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rtx_accounting_stop": {
          "path_match": "ipfix.calix_rtx_accounting_stop",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_accounting_success_resp": {
          "path_match": "ipfix.calix_rx_accounting_success_resp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_rx_accounting_failure_resp": {
          "path_match": "ipfix.calix_rx_accounting_failure_resp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_discard_events": {
          "path_match": "ipfix.calix_upstream_discard_events",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_discard_events": {
          "path_match": "ipfix.calix_downstream_discard_events",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_pon_ont_util_aid": {
          "path_match": "ipfix.calix_pon_ont_util_aid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.calix_upstream_bytes": {
          "path_match": "ipfix.calix_upstream_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_bytes": {
          "path_match": "ipfix.calix_downstream_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_upstream_percentage": {
          "path_match": "ipfix.calix_upstream_percentage",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.calix_downstream_percentage": {
          "path_match": "ipfix.calix_downstream_percentage",
          "mapping": {
            "type": "long"
          }
        }
      },



      {
        "ipfix.cert_obsolete_rev_bytes_total": {
          "path_match": "ipfix.cert_obsolete_rev_bytes_total",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_obsolete_rev_packets_total": {
          "path_match": "ipfix.cert_obsolete_rev_packets_total",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_init_tcp_flags": {
          "path_match": "ipfix.cert_init_tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_union_tcp_flags": {
          "path_match": "ipfix.cert_union_tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_obsolete_rev_init_tcp_flags": {
          "path_match": "ipfix.cert_obsolete_rev_init_tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_obsolete_rev_union_tcp_flags": {
          "path_match": "ipfix.cert_obsolete_rev_union_tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_payload": {
          "path_match": "ipfix.cert_payload",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_obsolete_rev_payload": {
          "path_match": "ipfix.cert_obsolete_rev_payload",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_obsolete_rev_tcp_seq_num": {
          "path_match": "ipfix.cert_obsolete_rev_tcp_seq_num",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_flow_delta_millis": {
          "path_match": "ipfix.cert_rev_flow_delta_millis",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_obsolete_rev_vlan_id": {
          "path_match": "ipfix.cert_obsolete_rev_vlan_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_silk_flow_type": {
          "path_match": "ipfix.cert_silk_flow_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_silk_flow_sensor": {
          "path_match": "ipfix.cert_silk_flow_sensor",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_silk_tcp_state": {
          "path_match": "ipfix.cert_silk_tcp_state",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_silk_app_label": {
          "path_match": "ipfix.cert_silk_app_label",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_payload_entropy": {
          "path_match": "ipfix.cert_payload_entropy",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_os": {
          "path_match": "ipfix.cert_os",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_os_ver": {
          "path_match": "ipfix.cert_os_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_first_packet_banner": {
          "path_match": "ipfix.cert_first_packet_banner",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_second_packet_banner": {
          "path_match": "ipfix.cert_second_packet_banner",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_flow_attr": {
          "path_match": "ipfix.cert_flow_attr",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_expired_frags": {
          "path_match": "ipfix.cert_expired_frags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_assembled_frags": {
          "path_match": "ipfix.cert_assembled_frags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_mean_flow_rate": {
          "path_match": "ipfix.cert_mean_flow_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_mean_packet_rate": {
          "path_match": "ipfix.cert_mean_packet_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_flow_table_flushes": {
          "path_match": "ipfix.cert_flow_table_flushes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_flow_table_peak": {
          "path_match": "ipfix.cert_flow_table_peak",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_yaf_flow_keyhash": {
          "path_match": "ipfix.cert_yaf_flow_keyhash",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_os_fingerprint": {
          "path_match": "ipfix.cert_os_fingerprint",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_server_string": {
          "path_match": "ipfix.cert_http_server_string",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_user_agent": {
          "path_match": "ipfix.cert_http_user_agent",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_get": {
          "path_match": "ipfix.cert_http_get",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_conn": {
          "path_match": "ipfix.cert_http_conn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_ver": {
          "path_match": "ipfix.cert_http_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_referrer": {
          "path_match": "ipfix.cert_http_referrer",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_location": {
          "path_match": "ipfix.cert_http_location",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_host": {
          "path_match": "ipfix.cert_http_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_content_len": {
          "path_match": "ipfix.cert_http_content_len",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_age": {
          "path_match": "ipfix.cert_http_age",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_accept": {
          "path_match": "ipfix.cert_http_accept",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_accept_lang": {
          "path_match": "ipfix.cert_http_accept_lang",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_content_type": {
          "path_match": "ipfix.cert_http_content_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_resp": {
          "path_match": "ipfix.cert_http_resp",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_pop3_text_msg": {
          "path_match": "ipfix.cert_pop3_text_msg",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_irc_text_msg": {
          "path_match": "ipfix.cert_irc_text_msg",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_tftp_filename": {
          "path_match": "ipfix.cert_tftp_filename",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_tftp_mode": {
          "path_match": "ipfix.cert_tftp_mode",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_slp_ver": {
          "path_match": "ipfix.cert_slp_ver",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_slp_msg_type": {
          "path_match": "ipfix.cert_slp_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_slp_string": {
          "path_match": "ipfix.cert_slp_string",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ftp_return": {
          "path_match": "ipfix.cert_ftp_return",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ftp_user": {
          "path_match": "ipfix.cert_ftp_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ftp_pass": {
          "path_match": "ipfix.cert_ftp_pass",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ftp_type": {
          "path_match": "ipfix.cert_ftp_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ftp_resp_code": {
          "path_match": "ipfix.cert_ftp_resp_code",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_imap_capability": {
          "path_match": "ipfix.cert_imap_capability",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_imap_login": {
          "path_match": "ipfix.cert_imap_login",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_imap_start_tls": {
          "path_match": "ipfix.cert_imap_start_tls",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_imap_auth": {
          "path_match": "ipfix.cert_imap_auth",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_imap_command": {
          "path_match": "ipfix.cert_imap_command",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_imap_exists": {
          "path_match": "ipfix.cert_imap_exists",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_imap_recent": {
          "path_match": "ipfix.cert_imap_recent",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtsp_url": {
          "path_match": "ipfix.cert_rtsp_url",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtsp_ver": {
          "path_match": "ipfix.cert_rtsp_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtsp_return_code": {
          "path_match": "ipfix.cert_rtsp_return_code",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtsp_content_len": {
          "path_match": "ipfix.cert_rtsp_content_len",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtsp_command": {
          "path_match": "ipfix.cert_rtsp_command",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtsp_content_type": {
          "path_match": "ipfix.cert_rtsp_content_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtsp_transport": {
          "path_match": "ipfix.cert_rtsp_transport",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtsp_cseq": {
          "path_match": "ipfix.cert_rtsp_cseq",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtsp_location": {
          "path_match": "ipfix.cert_rtsp_location",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtsp_packets_rcv": {
          "path_match": "ipfix.cert_rtsp_packets_rcv",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rtsp_user_agent": {
          "path_match": "ipfix.cert_rtsp_user_agent",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtsp_jitter": {
          "path_match": "ipfix.cert_rtsp_jitter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_sip_invite": {
          "path_match": "ipfix.cert_sip_invite",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_sip_command": {
          "path_match": "ipfix.cert_sip_command",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_sip_via": {
          "path_match": "ipfix.cert_sip_via",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_sip_max_forwards": {
          "path_match": "ipfix.cert_sip_max_forwards",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_sip_address": {
          "path_match": "ipfix.cert_sip_address",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_sip_content_len": {
          "path_match": "ipfix.cert_sip_content_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_sip_user_agent": {
          "path_match": "ipfix.cert_sip_user_agent",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_smtp_hello": {
          "path_match": "ipfix.cert_smtp_hello",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_smtp_from": {
          "path_match": "ipfix.cert_smtp_from",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_smtp_to": {
          "path_match": "ipfix.cert_smtp_to",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_smtp_content_type": {
          "path_match": "ipfix.cert_smtp_content_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_smtp_subject": {
          "path_match": "ipfix.cert_smtp_subject",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_smtp_filename": {
          "path_match": "ipfix.cert_smtp_filename",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_smtp_content_disposition": {
          "path_match": "ipfix.cert_smtp_content_disposition",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_smtp_resp": {
          "path_match": "ipfix.cert_smtp_resp",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_smtp_enhanced": {
          "path_match": "ipfix.cert_smtp_enhanced",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssh_ver": {
          "path_match": "ipfix.cert_ssh_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_nntp_resp": {
          "path_match": "ipfix.cert_nntp_resp",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_nntp_command": {
          "path_match": "ipfix.cert_nntp_command",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_query_resp": {
          "path_match": "ipfix.cert_dns_query_resp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_qrtype": {
          "path_match": "ipfix.cert_dns_qrtype",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_authoritative": {
          "path_match": "ipfix.cert_dns_authoritative",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_nxdomain": {
          "path_match": "ipfix.cert_dns_nxdomain",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_rrsection": {
          "path_match": "ipfix.cert_dns_rrsection",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_qname": {
          "path_match": "ipfix.cert_dns_qname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_cname": {
          "path_match": "ipfix.cert_dns_cname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_mxpref": {
          "path_match": "ipfix.cert_dns_mxpref",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_mxexch": {
          "path_match": "ipfix.cert_dns_mxexch",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_ns_dname": {
          "path_match": "ipfix.cert_dns_ns_dname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_ptr_dname": {
          "path_match": "ipfix.cert_dns_ptr_dname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cipher": {
          "path_match": "ipfix.cert_ssl_cipher",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_ssl_client_ver": {
          "path_match": "ipfix.cert_ssl_client_ver",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_ssl_server_cipher": {
          "path_match": "ipfix.cert_ssl_server_cipher",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_ssl_compress_method": {
          "path_match": "ipfix.cert_ssl_compress_method",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_ver": {
          "path_match": "ipfix.cert_ssl_cert_ver",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_sig": {
          "path_match": "ipfix.cert_ssl_cert_sig",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_issuer_country": {
          "path_match": "ipfix.cert_ssl_cert_issuer_country",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_issuer_org": {
          "path_match": "ipfix.cert_ssl_cert_issuer_org",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_issuer_org_unit": {
          "path_match": "ipfix.cert_ssl_cert_issuer_org_unit",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_issuer_zipcode": {
          "path_match": "ipfix.cert_ssl_cert_issuer_zipcode",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_issuer_state": {
          "path_match": "ipfix.cert_ssl_cert_issuer_state",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_issuer_common": {
          "path_match": "ipfix.cert_ssl_cert_issuer_common",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_issuer_locality": {
          "path_match": "ipfix.cert_ssl_cert_issuer_locality",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_issuer_street": {
          "path_match": "ipfix.cert_ssl_cert_issuer_street",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_ttl": {
          "path_match": "ipfix.cert_dns_ttl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_sub_country": {
          "path_match": "ipfix.cert_ssl_cert_sub_country",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_sub_org": {
          "path_match": "ipfix.cert_ssl_cert_sub_org",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_sub_org_unit": {
          "path_match": "ipfix.cert_ssl_cert_sub_org_unit",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_sub_zipcode": {
          "path_match": "ipfix.cert_ssl_cert_sub_zipcode",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_sub_state": {
          "path_match": "ipfix.cert_ssl_cert_sub_state",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_sub_common": {
          "path_match": "ipfix.cert_ssl_cert_sub_common",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_sub_locality": {
          "path_match": "ipfix.cert_ssl_cert_sub_locality",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_sub_street": {
          "path_match": "ipfix.cert_ssl_cert_sub_street",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_txtdata": {
          "path_match": "ipfix.cert_dns_txtdata",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_soa_serial": {
          "path_match": "ipfix.cert_dns_soa_serial",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_soa_refresh": {
          "path_match": "ipfix.cert_dns_soa_refresh",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_soa_retry": {
          "path_match": "ipfix.cert_dns_soa_retry",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_soa_expire": {
          "path_match": "ipfix.cert_dns_soa_expire",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_soa_min": {
          "path_match": "ipfix.cert_dns_soa_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_soa_mname": {
          "path_match": "ipfix.cert_dns_soa_mname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_soa_rname": {
          "path_match": "ipfix.cert_dns_soa_rname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_srv_pri": {
          "path_match": "ipfix.cert_dns_srv_pri",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_srv_weight": {
          "path_match": "ipfix.cert_dns_srv_weight",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_srv_port": {
          "path_match": "ipfix.cert_dns_srv_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_srv_target": {
          "path_match": "ipfix.cert_dns_srv_target",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_cookie": {
          "path_match": "ipfix.cert_http_cookie",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_set_cookie": {
          "path_match": "ipfix.cert_http_set_cookie",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_smtp_size": {
          "path_match": "ipfix.cert_smtp_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_mysql_user": {
          "path_match": "ipfix.cert_mysql_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_mysql_command_code": {
          "path_match": "ipfix.cert_mysql_command_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_mysql_command_text": {
          "path_match": "ipfix.cert_mysql_command_text",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_id": {
          "path_match": "ipfix.cert_dns_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_algorithm": {
          "path_match": "ipfix.cert_dns_algorithm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_key_tag": {
          "path_match": "ipfix.cert_dns_key_tag",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_signer": {
          "path_match": "ipfix.cert_dns_signer",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_sig": {
          "path_match": "ipfix.cert_dns_sig",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_digest": {
          "path_match": "ipfix.cert_dns_digest",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_public_key": {
          "path_match": "ipfix.cert_dns_public_key",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_salt": {
          "path_match": "ipfix.cert_dns_salt",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_hash_data": {
          "path_match": "ipfix.cert_dns_hash_data",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_iterations": {
          "path_match": "ipfix.cert_dns_iterations",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_sig_expire": {
          "path_match": "ipfix.cert_dns_sig_expire",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_sig_inception": {
          "path_match": "ipfix.cert_dns_sig_inception",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_digest_type": {
          "path_match": "ipfix.cert_dns_digest_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_labels": {
          "path_match": "ipfix.cert_dns_labels",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_type_covered": {
          "path_match": "ipfix.cert_dns_type_covered",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_flags": {
          "path_match": "ipfix.cert_dns_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dhcp_fingerprint": {
          "path_match": "ipfix.cert_dhcp_fingerprint",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dhcp_vendor_code": {
          "path_match": "ipfix.cert_dhcp_vendor_code",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_serial_num": {
          "path_match": "ipfix.cert_ssl_cert_serial_num",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_object_type": {
          "path_match": "ipfix.cert_ssl_object_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_ssl_object_value": {
          "path_match": "ipfix.cert_ssl_object_value",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_valid_not_before": {
          "path_match": "ipfix.cert_ssl_cert_valid_not_before",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_valid_not_after": {
          "path_match": "ipfix.cert_ssl_cert_valid_not_after",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_public_key_alg": {
          "path_match": "ipfix.cert_ssl_public_key_alg",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_public_key_len": {
          "path_match": "ipfix.cert_ssl_public_key_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_smtp_date": {
          "path_match": "ipfix.cert_smtp_date",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_auth": {
          "path_match": "ipfix.cert_http_auth",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_via": {
          "path_match": "ipfix.cert_http_via",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_x_forwarded_for": {
          "path_match": "ipfix.cert_http_x_forwarded_for",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_expires": {
          "path_match": "ipfix.cert_http_expires",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_refresh": {
          "path_match": "ipfix.cert_http_refresh",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_imei": {
          "path_match": "ipfix.cert_http_imei",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_imsi": {
          "path_match": "ipfix.cert_http_imsi",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_msisdn": {
          "path_match": "ipfix.cert_http_msisdn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_subscriber": {
          "path_match": "ipfix.cert_http_subscriber",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_accept_charset": {
          "path_match": "ipfix.cert_http_accept_charset",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_accept_encoding": {
          "path_match": "ipfix.cert_http_accept_encoding",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_allow": {
          "path_match": "ipfix.cert_http_allow",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_date": {
          "path_match": "ipfix.cert_http_date",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_expect": {
          "path_match": "ipfix.cert_http_expect",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_from": {
          "path_match": "ipfix.cert_http_from",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_proxy_auth": {
          "path_match": "ipfix.cert_http_proxy_auth",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_upgrade": {
          "path_match": "ipfix.cert_http_upgrade",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_warning": {
          "path_match": "ipfix.cert_http_warning",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_dnt": {
          "path_match": "ipfix.cert_http_dnt",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_x_forwarded_proto": {
          "path_match": "ipfix.cert_http_x_forwarded_proto",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_x_forwarded_host": {
          "path_match": "ipfix.cert_http_x_forwarded_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_x_forwarded_server": {
          "path_match": "ipfix.cert_http_x_forwarded_server",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_x_device_id": {
          "path_match": "ipfix.cert_http_x_device_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_x_profile": {
          "path_match": "ipfix.cert_http_x_profile",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_last_modified": {
          "path_match": "ipfix.cert_http_last_modified",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_content_encoding": {
          "path_match": "ipfix.cert_http_content_encoding",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_content_language": {
          "path_match": "ipfix.cert_http_content_language",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_content_location": {
          "path_match": "ipfix.cert_http_content_location",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_http_xua_compatible": {
          "path_match": "ipfix.cert_http_xua_compatible",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dnp3_src_addr": {
          "path_match": "ipfix.cert_dnp3_src_addr",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dnp3_dst_addr": {
          "path_match": "ipfix.cert_dnp3_dst_addr",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dnp3_func": {
          "path_match": "ipfix.cert_dnp3_func",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dnp3_object_data": {
          "path_match": "ipfix.cert_dnp3_object_data",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_modbus_data": {
          "path_match": "ipfix.cert_modbus_data",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ethernet_ip_data": {
          "path_match": "ipfix.cert_ethernet_ip_data",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rtp_payload_type": {
          "path_match": "ipfix.cert_rtp_payload_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_ssl_record_ver": {
          "path_match": "ipfix.cert_ssl_record_ver",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_mptcp_init_data_seq_num": {
          "path_match": "ipfix.cert_mptcp_init_data_seq_num",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_mptcp_rcvr_token": {
          "path_match": "ipfix.cert_mptcp_rcvr_token",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_mptcp_max_seg_size": {
          "path_match": "ipfix.cert_mptcp_max_seg_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_mptcp_addr_id": {
          "path_match": "ipfix.cert_mptcp_addr_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_mptcp_flags": {
          "path_match": "ipfix.cert_mptcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_ssl_server": {
          "path_match": "ipfix.cert_ssl_server",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_hash": {
          "path_match": "ipfix.cert_ssl_cert_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert": {
          "path_match": "ipfix.cert_ssl_cert",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dhcp_option": {
          "path_match": "ipfix.cert_dhcp_option",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_sha1": {
          "path_match": "ipfix.cert_ssl_cert_sha1",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ssl_cert_md5": {
          "path_match": "ipfix.cert_ssl_cert_md5",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_ndpi_l7_proto": {
          "path_match": "ipfix.cert_ndpi_l7_proto",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_ndpi_l7_sub_proto": {
          "path_match": "ipfix.cert_ndpi_l7_sub_proto",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rr_ipv4": {
          "path_match": "ipfix.cert_rr_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cert_rr_ipv6": {
          "path_match": "ipfix.cert_rr_ipv6",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cert_dns_key_proto_id": {
          "path_match": "ipfix.cert_dns_key_proto_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_a_record": {
          "path_match": "ipfix.cert_dns_a_record",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_aaaa_record": {
          "path_match": "ipfix.cert_dns_aaaa_record",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_small_packets": {
          "path_match": "ipfix.cert_small_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_nonempty_packets": {
          "path_match": "ipfix.cert_nonempty_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_data_bytes": {
          "path_match": "ipfix.cert_data_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_avg_interarrival_time": {
          "path_match": "ipfix.cert_avg_interarrival_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_std_dev_interarrival_time": {
          "path_match": "ipfix.cert_std_dev_interarrival_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_first_nonempty_packet_size": {
          "path_match": "ipfix.cert_first_nonempty_packet_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_max_packet_size": {
          "path_match": "ipfix.cert_max_packet_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_first_eight_nonempty_packet_dir": {
          "path_match": "ipfix.cert_first_eight_nonempty_packet_dir",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_std_dev_payload_len": {
          "path_match": "ipfix.cert_std_dev_payload_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_tcp_urgent_count": {
          "path_match": "ipfix.cert_tcp_urgent_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_large_packets": {
          "path_match": "ipfix.cert_large_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_tombstone_id": {
          "path_match": "ipfix.cert_tombstone_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_exporter_config_id": {
          "path_match": "ipfix.cert_exporter_config_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_exporter_unique_id": {
          "path_match": "ipfix.cert_exporter_unique_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_dns_rname": {
          "path_match": "ipfix.cert_dns_rname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_dns_hits": {
          "path_match": "ipfix.cert_dns_hits",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_observed_data_total": {
          "path_match": "ipfix.cert_observed_data_total",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_observed_data": {
          "path_match": "ipfix.cert_observed_data",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_template": {
          "path_match": "ipfix.cert_template",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_template_descr": {
          "path_match": "ipfix.cert_template_descr",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rev_init_tcp_flags": {
          "path_match": "ipfix.cert_rev_init_tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_union_tcp_flags": {
          "path_match": "ipfix.cert_rev_union_tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_payload": {
          "path_match": "ipfix.cert_rev_payload",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rev_payload_entropy": {
          "path_match": "ipfix.cert_rev_payload_entropy",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_os": {
          "path_match": "ipfix.cert_rev_os",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rev_os_ver": {
          "path_match": "ipfix.cert_rev_os_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rev_first_packet_banner": {
          "path_match": "ipfix.cert_rev_first_packet_banner",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rev_second_packet_banner": {
          "path_match": "ipfix.cert_rev_second_packet_banner",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rev_flow_attr": {
          "path_match": "ipfix.cert_rev_flow_attr",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_os_fingerprint": {
          "path_match": "ipfix.cert_rev_os_fingerprint",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rev_dhcp_fingerprint": {
          "path_match": "ipfix.cert_rev_dhcp_fingerprint",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rev_dhcp_vendor_code": {
          "path_match": "ipfix.cert_rev_dhcp_vendor_code",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cert_rev_rtp_payload_type": {
          "path_match": "ipfix.cert_rev_rtp_payload_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_small_packets": {
          "path_match": "ipfix.cert_rev_small_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_nonempty_packets": {
          "path_match": "ipfix.cert_rev_nonempty_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_data_bytes": {
          "path_match": "ipfix.cert_rev_data_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_avg_interarrival_time": {
          "path_match": "ipfix.cert_rev_avg_interarrival_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_std_dev_interarrival_time": {
          "path_match": "ipfix.cert_rev_std_dev_interarrival_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_first_nonempty_packet_size": {
          "path_match": "ipfix.cert_rev_first_nonempty_packet_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_max_packet_size": {
          "path_match": "ipfix.cert_rev_max_packet_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_first_eight_nonempty_packet_dir": {
          "path_match": "ipfix.cert_rev_first_eight_nonempty_packet_dir",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_std_dev_payload_len": {
          "path_match": "ipfix.cert_rev_std_dev_payload_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_tcp_urgent_count": {
          "path_match": "ipfix.cert_rev_tcp_urgent_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cert_rev_large_packets": {
          "path_match": "ipfix.cert_rev_large_packets",
          "mapping": {
            "type": "long"
          }
        }
      },



      {
        "ipfix.cisco_avc_p2p_tech": {
          "path_match": "ipfix.cisco_avc_p2p_tech",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_tunnel_tech": {
          "path_match": "ipfix.cisco_avc_tunnel_tech",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_encrypt_tech": {
          "path_match": "ipfix.cisco_avc_encrypt_tech",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_ipt_dialing_phone": {
          "path_match": "ipfix.cisco_ipt_dialing_phone",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_ipt_dialing_user": {
          "path_match": "ipfix.cisco_ipt_dialing_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_ipt_dialed_phone": {
          "path_match": "ipfix.cisco_ipt_dialed_phone",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_ipt_dialed_user": {
          "path_match": "ipfix.cisco_ipt_dialed_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_ipt_call_duration": {
          "path_match": "ipfix.cisco_ipt_call_duration",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_ipt_call_end_reason": {
          "path_match": "ipfix.cisco_ipt_call_end_reason",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_ipt_calls_dialed": {
          "path_match": "ipfix.cisco_ipt_calls_dialed",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_ipt_calls_connected": {
          "path_match": "ipfix.cisco_ipt_calls_connected",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_ipt_calls_failed": {
          "path_match": "ipfix.cisco_ipt_calls_failed",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_nexus_fastpath_src_addr": {
          "path_match": "ipfix.cisco_nexus_fastpath_src_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_nexus_fastpath_src_port": {
          "path_match": "ipfix.cisco_nexus_fastpath_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_nexus_fastpath_dst_addr": {
          "path_match": "ipfix.cisco_nexus_fastpath_dst_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_nexus_fastpath_dst_port": {
          "path_match": "ipfix.cisco_nexus_fastpath_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_endpoint_process_user": {
          "path_match": "ipfix.cisco_endpoint_process_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_endpoint_process_name": {
          "path_match": "ipfix.cisco_endpoint_process_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_endpoint_process_hash": {
          "path_match": "ipfix.cisco_endpoint_process_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_endpoint_process_parent_user": {
          "path_match": "ipfix.cisco_endpoint_process_parent_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_endpoint_process_parent_name": {
          "path_match": "ipfix.cisco_endpoint_process_parent_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_endpoint_process_parent_hash": {
          "path_match": "ipfix.cisco_endpoint_process_parent_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_pfr_policy_id": {
          "path_match": "ipfix.cisco_pfr_policy_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_pfr_map_name": {
          "path_match": "ipfix.cisco_pfr_map_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_pfr_reason": {
          "path_match": "ipfix.cisco_pfr_reason",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_fw_ingress_acl_id": {
          "path_match": "ipfix.cisco_fw_ingress_acl_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_fw_egress_acl_id": {
          "path_match": "ipfix.cisco_fw_egress_acl_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_fw_ext_event": {
          "path_match": "ipfix.cisco_fw_ext_event",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_fw_event_level": {
          "path_match": "ipfix.cisco_fw_event_level",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_event_level_id": {
          "path_match": "ipfix.cisco_fw_event_level_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_config_value": {
          "path_match": "ipfix.cisco_fw_config_value",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_erm_code": {
          "path_match": "ipfix.cisco_fw_erm_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_erm_descr": {
          "path_match": "ipfix.cisco_fw_erm_descr",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_trustsec_src_id": {
          "path_match": "ipfix.cisco_trustsec_src_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_trustsec_dst_id": {
          "path_match": "ipfix.cisco_trustsec_dst_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_trustsec_src_name": {
          "path_match": "ipfix.cisco_trustsec_src_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_trustsec_dst_name": {
          "path_match": "ipfix.cisco_trustsec_dst_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_trustsec_switch_derived_sgt": {
          "path_match": "ipfix.cisco_trustsec_switch_derived_sgt",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_fw_ext_event": {
          "path_match": "ipfix.cisco_fw_ext_event",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_fw_blackout_secs": {
          "path_match": "ipfix.cisco_fw_blackout_secs",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_half_open_sessions_rate_1min_max": {
          "path_match": "ipfix.cisco_fw_half_open_sessions_rate_1min_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_half_open_sessions_rate_1min": {
          "path_match": "ipfix.cisco_fw_half_open_sessions_rate_1min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_zonepair_id": {
          "path_match": "ipfix.cisco_fw_zonepair_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_sessions_max": {
          "path_match": "ipfix.cisco_fw_sessions_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_zonepair": {
          "path_match": "ipfix.cisco_fw_zonepair",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_fw_ext_event_descr": {
          "path_match": "ipfix.cisco_fw_ext_event_descr",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_fw_drop_pass_summary_packets": {
          "path_match": "ipfix.cisco_fw_drop_pass_summary_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_half_open_sessions": {
          "path_match": "ipfix.cisco_fw_half_open_sessions",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_waas_dre_input": {
          "path_match": "ipfix.cisco_waas_dre_input",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_waas_dre_output": {
          "path_match": "ipfix.cisco_waas_dre_output",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_waas_lz_input": {
          "path_match": "ipfix.cisco_waas_lz_input",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_waas_lz_output": {
          "path_match": "ipfix.cisco_waas_lz_output",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_waas_conn_mode": {
          "path_match": "ipfix.cisco_waas_conn_mode",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_waas_input_bytes": {
          "path_match": "ipfix.cisco_waas_input_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_waas_output_bytes": {
          "path_match": "ipfix.cisco_waas_output_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_short_term_packets_drop": {
          "path_match": "ipfix.cisco_avc_transport_short_term_packets_drop",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_long_term_packets_drop": {
          "path_match": "ipfix.cisco_avc_transport_long_term_packets_drop",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_media_bytes": {
          "path_match": "ipfix.cisco_avc_app_media_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_media_byte_rate": {
          "path_match": "ipfix.cisco_avc_app_media_byte_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_media_packets": {
          "path_match": "ipfix.cisco_avc_app_media_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_media_packet_rate": {
          "path_match": "ipfix.cisco_avc_app_media_packet_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_media_packet_rate_variation": {
          "path_match": "ipfix.cisco_avc_app_media_packet_rate_variation",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_media_event": {
          "path_match": "ipfix.cisco_avc_app_media_event",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_monitor_event": {
          "path_match": "ipfix.cisco_avc_app_monitor_event",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_packets_expected": {
          "path_match": "ipfix.cisco_avc_transport_packets_expected",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_rtt": {
          "path_match": "ipfix.cisco_avc_transport_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_packet_sets_lost": {
          "path_match": "ipfix.cisco_avc_transport_packet_sets_lost",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_short_term_packets_lost": {
          "path_match": "ipfix.cisco_avc_transport_short_term_packets_lost",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_long_term_packets_lost": {
          "path_match": "ipfix.cisco_avc_transport_long_term_packets_lost",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_packet_loss_rate": {
          "path_match": "ipfix.cisco_avc_transport_packet_loss_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_rtp_ssrc": {
          "path_match": "ipfix.cisco_avc_transport_rtp_ssrc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_rtp_jitter_mean": {
          "path_match": "ipfix.cisco_avc_transport_rtp_jitter_mean",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_rtp_jitter_min": {
          "path_match": "ipfix.cisco_avc_transport_rtp_jitter_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_rtp_jitter_max": {
          "path_match": "ipfix.cisco_avc_transport_rtp_jitter_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_controlled_tc": {
          "path_match": "ipfix.cisco_avc_controlled_tc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_in_policy_tc": {
          "path_match": "ipfix.cisco_avc_in_policy_tc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_media_packet_rate_variation_min": {
          "path_match": "ipfix.cisco_avc_app_media_packet_rate_variation_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_media_packet_rate_variation_max": {
          "path_match": "ipfix.cisco_avc_app_media_packet_rate_variation_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_rtp_flows": {
          "path_match": "ipfix.cisco_avc_transport_rtp_flows",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_rtp_payload_type": {
          "path_match": "ipfix.cisco_avc_transport_rtp_payload_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_packet_loss_rate_min": {
          "path_match": "ipfix.cisco_avc_transport_packet_loss_rate_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_packet_loss_rate_max": {
          "path_match": "ipfix.cisco_avc_transport_packet_loss_rate_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_rtt_sum": {
          "path_match": "ipfix.cisco_avc_transport_rtt_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_rtt_min": {
          "path_match": "ipfix.cisco_avc_transport_rtt_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_rtt_max": {
          "path_match": "ipfix.cisco_avc_transport_rtt_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_metadata_global_session_id": {
          "path_match": "ipfix.cisco_avc_metadata_global_session_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_metadata_multi_party_session_id": {
          "path_match": "ipfix.cisco_avc_metadata_multi_party_session_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_metadata_clock_rate": {
          "path_match": "ipfix.cisco_avc_metadata_clock_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_network_delay_avg": {
          "path_match": "ipfix.cisco_avc_network_delay_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_one_way_delay": {
          "path_match": "ipfix.cisco_avc_one_way_delay",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_tcp_window_size_min": {
          "path_match": "ipfix.cisco_avc_tcp_window_size_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_tcp_window_size_max": {
          "path_match": "ipfix.cisco_avc_tcp_window_size_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_tcp_max_segment_size": {
          "path_match": "ipfix.cisco_avc_tcp_max_segment_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_tcp_window_size_sum": {
          "path_match": "ipfix.cisco_avc_tcp_window_size_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_rtp_jitter_interarrival_avg": {
          "path_match": "ipfix.cisco_avc_rtp_jitter_interarrival_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_pfr_src_site_id": {
          "path_match": "ipfix.cisco_pfr_src_site_id",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_pfr_dst_site_id": {
          "path_match": "ipfix.cisco_pfr_dst_site_id",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_avc_transport_byte_loss_rate": {
          "path_match": "ipfix.cisco_avc_transport_byte_loss_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_pfr_event_tc_nomitigation_err_bw_count": {
          "path_match": "ipfix.cisco_pfr_event_tc_nomitigation_err_bw_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_pfr_event_tc_nomitigation_err_perf_count": {
          "path_match": "ipfix.cisco_pfr_event_tc_nomitigation_err_perf_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_pfr_dst_site_prefix": {
          "path_match": "ipfix.cisco_pfr_dst_site_prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_pfr_dst_site_prefix_mask": {
          "path_match": "ipfix.cisco_pfr_dst_site_prefix_mask",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_pfr_label_id": {
          "path_match": "ipfix.cisco_pfr_label_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_pfr_br_addr": {
          "path_match": "ipfix.cisco_pfr_br_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_pfr_state": {
          "path_match": "ipfix.cisco_pfr_state",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_pfr_reason_id": {
          "path_match": "ipfix.cisco_pfr_reason_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_pfr_threshold": {
          "path_match": "ipfix.cisco_pfr_threshold",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_pfr_priority": {
          "path_match": "ipfix.cisco_pfr_priority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_long_term_rtt": {
          "path_match": "ipfix.cisco_avc_long_term_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_mos_below_counts": {
          "path_match": "ipfix.cisco_avc_mos_below_counts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_rsvp_bandwidth_pool": {
          "path_match": "ipfix.cisco_avc_rsvp_bandwidth_pool",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_rollup_counter": {
          "path_match": "ipfix.cisco_avc_rollup_counter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_kth_tier_percent": {
          "path_match": "ipfix.cisco_avc_kth_tier_percent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_kth_bw_fee": {
          "path_match": "ipfix.cisco_avc_kth_bw_fee",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_src_port_min": {
          "path_match": "ipfix.cisco_avc_src_port_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_src_port_max": {
          "path_match": "ipfix.cisco_avc_src_port_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_dst_port_min": {
          "path_match": "ipfix.cisco_avc_dst_port_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_dst_port_max": {
          "path_match": "ipfix.cisco_avc_dst_port_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_link_capacity": {
          "path_match": "ipfix.cisco_avc_link_capacity",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_ingress_bw": {
          "path_match": "ipfix.cisco_avc_ingress_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_ingress_bw_max": {
          "path_match": "ipfix.cisco_avc_ingress_bw_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_egress_bw": {
          "path_match": "ipfix.cisco_avc_egress_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_egress_bw_max": {
          "path_match": "ipfix.cisco_avc_egress_bw_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_ingress_rollup_bw": {
          "path_match": "ipfix.cisco_avc_ingress_rollup_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_egress_rollup_bw": {
          "path_match": "ipfix.cisco_avc_egress_rollup_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_kth_rollup_bw": {
          "path_match": "ipfix.cisco_avc_kth_rollup_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_link_group_name": {
          "path_match": "ipfix.cisco_avc_link_group_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_bgp_community": {
          "path_match": "ipfix.cisco_avc_bgp_community",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_avc_bgp_prepend": {
          "path_match": "ipfix.cisco_avc_bgp_prepend",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_cost_discard_rollup_count": {
          "path_match": "ipfix.cisco_avc_cost_discard_rollup_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_user": {
          "path_match": "ipfix.cisco_fw_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_fw_xlate_src_addr_ipv4": {
          "path_match": "ipfix.cisco_fw_xlate_src_addr_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_fw_xlate_dst_addr_ipv4": {
          "path_match": "ipfix.cisco_fw_xlate_dst_addr_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_fw_xlate_src_port": {
          "path_match": "ipfix.cisco_fw_xlate_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_xlate_dst_port": {
          "path_match": "ipfix.cisco_fw_xlate_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_fw_event": {
          "path_match": "ipfix.cisco_fw_event",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_long_lived_network_delay_max": {
          "path_match": "ipfix.cisco_avc_client_long_lived_network_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_long_lived_network_delay_min": {
          "path_match": "ipfix.cisco_avc_client_long_lived_network_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_long_lived_network_delay_max": {
          "path_match": "ipfix.cisco_avc_server_long_lived_network_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_long_lived_network_delay_min": {
          "path_match": "ipfix.cisco_avc_server_long_lived_network_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_policy_qos_class_hierarchy": {
          "path_match": "ipfix.cisco_policy_qos_class_hierarchy",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_bytes": {
          "path_match": "ipfix.cisco_avc_server_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_bytes": {
          "path_match": "ipfix.cisco_avc_client_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_concurrent_sessions": {
          "path_match": "ipfix.cisco_avc_concurrent_sessions",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_waas_segment": {
          "path_match": "ipfix.cisco_waas_segment",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_waas_passthru_reason": {
          "path_match": "ipfix.cisco_waas_passthru_reason",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_long_lived_network_delay_sum": {
          "path_match": "ipfix.cisco_avc_server_long_lived_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_long_lived_network_delay_sum": {
          "path_match": "ipfix.cisco_avc_client_long_lived_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_total_long_lived_network_delay_sum": {
          "path_match": "ipfix.cisco_avc_total_long_lived_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_total_long_lived_network_delay_samples": {
          "path_match": "ipfix.cisco_avc_total_long_lived_network_delay_samples",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_long_lived_network_delay_samples": {
          "path_match": "ipfix.cisco_avc_server_long_lived_network_delay_samples",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_long_lived_network_delay_samples": {
          "path_match": "ipfix.cisco_avc_client_long_lived_network_delay_samples",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_packets": {
          "path_match": "ipfix.cisco_avc_client_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_packets": {
          "path_match": "ipfix.cisco_avc_server_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_retrans_bytes": {
          "path_match": "ipfix.cisco_avc_client_retrans_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_retrans_packets": {
          "path_match": "ipfix.cisco_avc_client_retrans_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_retrans_bytes": {
          "path_match": "ipfix.cisco_avc_server_retrans_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_retrans_packets": {
          "path_match": "ipfix.cisco_avc_server_retrans_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transact_time_delta": {
          "path_match": "ipfix.cisco_avc_transact_time_delta",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transact_time_total": {
          "path_match": "ipfix.cisco_avc_transact_time_total",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transact_time_max": {
          "path_match": "ipfix.cisco_avc_transact_time_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_transact_time_min": {
          "path_match": "ipfix.cisco_avc_transact_time_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_resps": {
          "path_match": "ipfix.cisco_avc_server_resps",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_resp_histogram1": {
          "path_match": "ipfix.cisco_avc_resp_histogram1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_resp_histogram2": {
          "path_match": "ipfix.cisco_avc_resp_histogram2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_resp_histogram3": {
          "path_match": "ipfix.cisco_avc_resp_histogram3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_resp_histogram4": {
          "path_match": "ipfix.cisco_avc_resp_histogram4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_resp_histogram5": {
          "path_match": "ipfix.cisco_avc_resp_histogram5",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_resp_histogram6": {
          "path_match": "ipfix.cisco_avc_resp_histogram6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_resp_histogram7": {
          "path_match": "ipfix.cisco_avc_resp_histogram7",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_late_resps": {
          "path_match": "ipfix.cisco_avc_server_late_resps",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_resp_time_sum": {
          "path_match": "ipfix.cisco_avc_server_resp_time_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_resp_time_max": {
          "path_match": "ipfix.cisco_avc_server_resp_time_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_resp_time_min": {
          "path_match": "ipfix.cisco_avc_server_resp_time_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_delay_sum": {
          "path_match": "ipfix.cisco_avc_app_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_delay_max": {
          "path_match": "ipfix.cisco_avc_app_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_delay_min": {
          "path_match": "ipfix.cisco_avc_app_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_total_delay_sum": {
          "path_match": "ipfix.cisco_avc_total_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_total_delay_max": {
          "path_match": "ipfix.cisco_avc_total_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_total_delay_min": {
          "path_match": "ipfix.cisco_avc_total_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_total_network_delay_sum": {
          "path_match": "ipfix.cisco_avc_total_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_total_network_delay_max": {
          "path_match": "ipfix.cisco_avc_total_network_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_total_network_delay_min": {
          "path_match": "ipfix.cisco_avc_total_network_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_network_delay_sum": {
          "path_match": "ipfix.cisco_avc_client_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_network_delay_max": {
          "path_match": "ipfix.cisco_avc_client_network_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_network_delay_min": {
          "path_match": "ipfix.cisco_avc_client_network_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_network_delay_sum": {
          "path_match": "ipfix.cisco_avc_server_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_network_delay_max": {
          "path_match": "ipfix.cisco_avc_server_network_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_network_delay_min": {
          "path_match": "ipfix.cisco_avc_server_network_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_rtp_short_term_mos": {
          "path_match": "ipfix.cisco_avc_rtp_short_term_mos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_rtp_mos": {
          "path_match": "ipfix.cisco_avc_rtp_mos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_rtp_mos_total": {
          "path_match": "ipfix.cisco_avc_rtp_mos_total",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_http_uri_stats": {
          "path_match": "ipfix.cisco_avc_app_http_uri_stats",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_policy_qos_queue_id": {
          "path_match": "ipfix.cisco_avc_policy_qos_queue_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_policy_qos_queue_drops": {
          "path_match": "ipfix.cisco_avc_policy_qos_queue_drops",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_eta_idp_old": {
          "path_match": "ipfix.cisco_eta_idp_old",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_eta_slpt_old": {
          "path_match": "ipfix.cisco_eta_slpt_old",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_wlan_id": {
          "path_match": "ipfix.cisco_wlan_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_category": {
          "path_match": "ipfix.cisco_avc_app_category",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_sub_category": {
          "path_match": "ipfix.cisco_avc_app_sub_category",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_group": {
          "path_match": "ipfix.cisco_avc_app_group",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_http_host": {
          "path_match": "ipfix.cisco_avc_app_http_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_ipv4_addr": {
          "path_match": "ipfix.cisco_avc_client_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_ipv4_addr": {
          "path_match": "ipfix.cisco_avc_server_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_ipv6_addr": {
          "path_match": "ipfix.cisco_avc_client_ipv6_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_ipv6_addr": {
          "path_match": "ipfix.cisco_avc_server_ipv6_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.cisco_avc_client_l4_port": {
          "path_match": "ipfix.cisco_avc_client_l4_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_server_l4_port": {
          "path_match": "ipfix.cisco_avc_server_l4_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_conn_id": {
          "path_match": "ipfix.cisco_avc_conn_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_traffic_class": {
          "path_match": "ipfix.cisco_avc_app_traffic_class",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_business_relevance": {
          "path_match": "ipfix.cisco_avc_app_business_relevance",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_udid": {
          "path_match": "ipfix.cisco_nvzflow_udid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_user": {
          "path_match": "ipfix.cisco_nvzflow_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_os_name": {
          "path_match": "ipfix.cisco_nvzflow_os_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_os_ver": {
          "path_match": "ipfix.cisco_nvzflow_os_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_sys_vendor": {
          "path_match": "ipfix.cisco_nvzflow_sys_vendor",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_sys_type": {
          "path_match": "ipfix.cisco_nvzflow_sys_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_proc_acct": {
          "path_match": "ipfix.cisco_nvzflow_proc_acct",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_parent_proc_acct": {
          "path_match": "ipfix.cisco_nvzflow_parent_proc_acct",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_proc": {
          "path_match": "ipfix.cisco_nvzflow_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_proc_hash": {
          "path_match": "ipfix.cisco_nvzflow_proc_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_parent_proc": {
          "path_match": "ipfix.cisco_nvzflow_parent_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_parent_proc_hash": {
          "path_match": "ipfix.cisco_nvzflow_parent_proc_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_dns_suffix": {
          "path_match": "ipfix.cisco_nvzflow_dns_suffix",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_dst_hostname": {
          "path_match": "ipfix.cisco_nvzflow_dst_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_l4_bytes_in": {
          "path_match": "ipfix.cisco_nvzflow_l4_bytes_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_l4_bytes_out": {
          "path_match": "ipfix.cisco_nvzflow_l4_bytes_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_os_edition": {
          "path_match": "ipfix.cisco_nvzflow_os_edition",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_module_list": {
          "path_match": "ipfix.cisco_nvzflow_module_list",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_hash_list": {
          "path_match": "ipfix.cisco_nvzflow_hash_list",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_coord_list": {
          "path_match": "ipfix.cisco_nvzflow_coord_list",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_iface_info_uid": {
          "path_match": "ipfix.cisco_nvzflow_iface_info_uid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_iface_index": {
          "path_match": "ipfix.cisco_nvzflow_iface_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_iface_type": {
          "path_match": "ipfix.cisco_nvzflow_iface_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_iface_name": {
          "path_match": "ipfix.cisco_nvzflow_iface_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_iface_details_list": {
          "path_match": "ipfix.cisco_nvzflow_iface_details_list",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_user_acct_type": {
          "path_match": "ipfix.cisco_nvzflow_user_acct_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_proc_user_acct_type": {
          "path_match": "ipfix.cisco_nvzflow_proc_user_acct_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_nvzflow_parent_proc_user_acct_type": {
          "path_match": "ipfix.cisco_nvzflow_parent_proc_user_acct_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_timestamp_abs_monitor_interval_start": {
          "path_match": "ipfix.cisco_timestamp_abs_monitor_interval_start",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_timestamp_abs_monitor_interval_end": {
          "path_match": "ipfix.cisco_timestamp_abs_monitor_interval_end",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_family": {
          "path_match": "ipfix.cisco_avc_app_family",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_avc_app_set": {
          "path_match": "ipfix.cisco_avc_app_set",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_ingress_overlay_sess_id": {
          "path_match": "ipfix.cisco_sdwan_ingress_overlay_sess_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_egress_overlay_sess_id": {
          "path_match": "ipfix.cisco_sdwan_egress_overlay_sess_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_vpn_id": {
          "path_match": "ipfix.cisco_sdwan_vpn_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_tloc_overlay_sess_id": {
          "path_match": "ipfix.cisco_sdwan_tloc_overlay_sess_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_tloc_local_ip": {
          "path_match": "ipfix.cisco_sdwan_tloc_local_ip",
          "mapping": {
            "type": "ip4_addr"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_tloc_local_color": {
          "path_match": "ipfix.cisco_sdwan_tloc_local_color",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_tloc_remote_ip": {
          "path_match": "ipfix.cisco_sdwan_tloc_remote_ip",
          "mapping": {
            "type": "ip4_addr"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_tloc_remote_color": {
          "path_match": "ipfix.cisco_sdwan_tloc_remote_color",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_tloc_tunnel_proto": {
          "path_match": "ipfix.cisco_sdwan_tloc_tunnel_proto",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_connection_id": {
          "path_match": "ipfix.cisco_sdwan_connection_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_drop_cause": {
          "path_match": "ipfix.cisco_sdwan_drop_cause",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_dropped_bytes": {
          "path_match": "ipfix.cisco_sdwan_dropped_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_sla_not_met": {
          "path_match": "ipfix.cisco_sdwan_sla_not_met",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_pref_color_not_met": {
          "path_match": "ipfix.cisco_sdwan_pref_color_not_met",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_qos_queue_id": {
          "path_match": "ipfix.cisco_sdwan_qos_queue_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_drop_cause_descr": {
          "path_match": "ipfix.cisco_sdwan_drop_cause_descr",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_appqoe_fec_packets": {
          "path_match": "ipfix.cisco_sdwan_appqoe_fec_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_appqoe_fec_packets_reconstructed": {
          "path_match": "ipfix.cisco_sdwan_appqoe_fec_packets_reconstructed",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_appqoe_orig_tunnel_pkt_dup_packets": {
          "path_match": "ipfix.cisco_sdwan_appqoe_orig_tunnel_pkt_dup_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_appqoe_dup_tunnel_pkt_dup_packets": {
          "path_match": "ipfix.cisco_sdwan_appqoe_dup_tunnel_pkt_dup_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_appqoe_pkt_dup_packets_recovered": {
          "path_match": "ipfix.cisco_sdwan_appqoe_pkt_dup_packets_recovered",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.cisco_sdwan_cloud_express_packets": {
          "path_match": "ipfix.cisco_sdwan_cloud_express_packets",
          "mapping": {
            "type": "long"
          }
        }
      },



      {
        "ipfix.f5_msg_sev": {
          "path_match": "ipfix.f5_msg_sev",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_partition": {
          "path_match": "ipfix.f5_partition",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_err_defs_msg_num": {
          "path_match": "ipfix.f5_err_defs_msg_num",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_bigip_mgmt_ipv4_addr": {
          "path_match": "ipfix.f5_bigip_mgmt_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.f5_bigip_mgmt_ipv6_addr": {
          "path_match": "ipfix.f5_bigip_mgmt_ipv6_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.f5_query_name": {
          "path_match": "ipfix.f5_query_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_dns_query_type": {
          "path_match": "ipfix.f5_dns_query_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_context_name": {
          "path_match": "ipfix.f5_context_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_bigip_hostname": {
          "path_match": "ipfix.f5_bigip_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_device_vendor": {
          "path_match": "ipfix.f5_device_vendor",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_device_product": {
          "path_match": "ipfix.f5_device_product",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_device_ver": {
          "path_match": "ipfix.f5_device_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_msg": {
          "path_match": "ipfix.f5_msg",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_vlan": {
          "path_match": "ipfix.f5_vlan",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_ipfix_msg_no": {
          "path_match": "ipfix.f5_ipfix_msg_no",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_attack_id": {
          "path_match": "ipfix.f5_attack_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_attack": {
          "path_match": "ipfix.f5_attack",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_packets_rcvd": {
          "path_match": "ipfix.f5_packets_rcvd",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_packets_drop": {
          "path_match": "ipfix.f5_packets_drop",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_context_type": {
          "path_match": "ipfix.f5_context_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_acl_policy_type": {
          "path_match": "ipfix.f5_acl_policy_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_acl_policy": {
          "path_match": "ipfix.f5_acl_policy",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_trans_ip_proto": {
          "path_match": "ipfix.f5_trans_ip_proto",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_trans_src_ipv4_addr": {
          "path_match": "ipfix.f5_trans_src_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.f5_trans_src_ipv6_addr": {
          "path_match": "ipfix.f5_trans_src_ipv6_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.f5_trans_src_port": {
          "path_match": "ipfix.f5_trans_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_trans_dst_ipv4_addr": {
          "path_match": "ipfix.f5_trans_dst_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.f5_trans_dst_ipv6_addr": {
          "path_match": "ipfix.f5_trans_dst_ipv6_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.f5_trans_dst_port": {
          "path_match": "ipfix.f5_trans_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_trans_vlan": {
          "path_match": "ipfix.f5_trans_vlan",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_trans_route_domain": {
          "path_match": "ipfix.f5_trans_route_domain",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_sa_trans_type": {
          "path_match": "ipfix.f5_sa_trans_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_sa_trans_pool": {
          "path_match": "ipfix.f5_sa_trans_pool",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_acl_rule": {
          "path_match": "ipfix.f5_acl_rule",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_action": {
          "path_match": "ipfix.f5_action",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_drop_reason": {
          "path_match": "ipfix.f5_drop_reason",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_attack_event": {
          "path_match": "ipfix.f5_attack_event",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_ip_intel_threat_name": {
          "path_match": "ipfix.f5_ip_intel_threat_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_destination_geo": {
          "path_match": "ipfix.f5_destination_geo",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_source_geo": {
          "path_match": "ipfix.f5_source_geo",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_ip_intel_policy_name": {
          "path_match": "ipfix.f5_ip_intel_policy_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_attack_type": {
          "path_match": "ipfix.f5_attack_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_app_category": {
          "path_match": "ipfix.f5_app_category",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_classification": {
          "path_match": "ipfix.f5_classification",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_flow_start_millis": {
          "path_match": "ipfix.f5_flow_start_millis",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_flow_start_secs": {
          "path_match": "ipfix.f5_flow_start_secs",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_flow_stop_millis": {
          "path_match": "ipfix.f5_flow_stop_millis",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_flow_stop_secs": {
          "path_match": "ipfix.f5_flow_stop_secs",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_record_type": {
          "path_match": "ipfix.f5_record_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_report_id": {
          "path_match": "ipfix.f5_report_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_report_ver": {
          "path_match": "ipfix.f5_report_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_3gpp_params": {
          "path_match": "ipfix.f5_3gpp_params",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_concurrent_flows": {
          "path_match": "ipfix.f5_concurrent_flows",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_duration_secs": {
          "path_match": "ipfix.f5_duration_secs",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_last_record_sent": {
          "path_match": "ipfix.f5_last_record_sent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_new_flows": {
          "path_match": "ipfix.f5_new_flows",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_record_reason": {
          "path_match": "ipfix.f5_record_reason",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_success_transacts": {
          "path_match": "ipfix.f5_success_transacts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_terminated_flows": {
          "path_match": "ipfix.f5_terminated_flows",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_subscriber_id": {
          "path_match": "ipfix.f5_subscriber_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_subscriber_id_type": {
          "path_match": "ipfix.f5_subscriber_id_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_total_transacts": {
          "path_match": "ipfix.f5_total_transacts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_http_hostname": {
          "path_match": "ipfix.f5_http_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_http_hostname_trunc": {
          "path_match": "ipfix.f5_http_hostname_trunc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_http_resp_code": {
          "path_match": "ipfix.f5_http_resp_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_http_url": {
          "path_match": "ipfix.f5_http_url",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_http_url_trunc": {
          "path_match": "ipfix.f5_http_url_trunc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_http_user_agent": {
          "path_match": "ipfix.f5_http_user_agent",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_http_user_agent_trunc": {
          "path_match": "ipfix.f5_http_user_agent_trunc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_transacts": {
          "path_match": "ipfix.f5_transacts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_skipped_transacts": {
          "path_match": "ipfix.f5_skipped_transacts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_transact_start_millis": {
          "path_match": "ipfix.f5_transact_start_millis",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_transact_start_secs": {
          "path_match": "ipfix.f5_transact_start_secs",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_transact_stop_millis": {
          "path_match": "ipfix.f5_transact_stop_millis",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_transact_stop_secs": {
          "path_match": "ipfix.f5_transact_stop_secs",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_url_category": {
          "path_match": "ipfix.f5_url_category",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_downlink_volume": {
          "path_match": "ipfix.f5_downlink_volume",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_uplink_volume": {
          "path_match": "ipfix.f5_uplink_volume",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_observation_time_secs": {
          "path_match": "ipfix.f5_observation_time_secs",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_timestamp_millis": {
          "path_match": "ipfix.f5_timestamp_millis",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_vlan_id": {
          "path_match": "ipfix.f5_vlan_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_source_user": {
          "path_match": "ipfix.f5_source_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_log_profile": {
          "path_match": "ipfix.f5_log_profile",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_log_msg_drops": {
          "path_match": "ipfix.f5_log_msg_drops",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.f5_log_msg_name": {
          "path_match": "ipfix.f5_log_msg_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_src_fqdn": {
          "path_match": "ipfix.f5_src_fqdn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.f5_dst_fqdn": {
          "path_match": "ipfix.f5_dst_fqdn",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "ipfix.flowmon_http_hostname": {
          "path_match": "ipfix.flowmon_http_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "ipfix.gigamon_http_req_url": {
          "path_match": "ipfix.gigamon_http_req_url",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_http_resp_status": {
          "path_match": "ipfix.gigamon_http_resp_status",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_cert_issuer_common": {
          "path_match": "ipfix.gigamon_ssl_cert_issuer_common",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_cert_subj_common": {
          "path_match": "ipfix.gigamon_ssl_cert_subj_common",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_cert_issuer": {
          "path_match": "ipfix.gigamon_ssl_cert_issuer",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_cert_subj": {
          "path_match": "ipfix.gigamon_ssl_cert_subj",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_cert_valid_not_before": {
          "path_match": "ipfix.gigamon_ssl_cert_valid_not_before",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_cert_valid_not_after": {
          "path_match": "ipfix.gigamon_ssl_cert_valid_not_after",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_cert_serial_num": {
          "path_match": "ipfix.gigamon_ssl_cert_serial_num",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_cert_sig_algo": {
          "path_match": "ipfix.gigamon_ssl_cert_sig_algo",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_cert_subj_pub_algo": {
          "path_match": "ipfix.gigamon_ssl_cert_subj_pub_algo",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_cert_subj_pubkey_size": {
          "path_match": "ipfix.gigamon_ssl_cert_subj_pubkey_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_cert_subj_alt_name": {
          "path_match": "ipfix.gigamon_ssl_cert_subj_alt_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_server_name_ind": {
          "path_match": "ipfix.gigamon_ssl_server_name_ind",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_server_ver": {
          "path_match": "ipfix.gigamon_ssl_server_ver",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_server_cipher": {
          "path_match": "ipfix.gigamon_ssl_server_cipher",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_server_compress_method": {
          "path_match": "ipfix.gigamon_ssl_server_compress_method",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_ssl_server_sess_id": {
          "path_match": "ipfix.gigamon_ssl_server_sess_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_dns_id": {
          "path_match": "ipfix.gigamon_dns_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_op_code": {
          "path_match": "ipfix.gigamon_dns_op_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_resp_code": {
          "path_match": "ipfix.gigamon_dns_resp_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_query": {
          "path_match": "ipfix.gigamon_dns_query",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_dns_resp": {
          "path_match": "ipfix.gigamon_dns_resp",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_dns_resp_ttl": {
          "path_match": "ipfix.gigamon_dns_resp_ttl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_resp_ipv4_addr": {
          "path_match": "ipfix.gigamon_dns_resp_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.gigamon_dns_resp_ipv6_addr": {
          "path_match": "ipfix.gigamon_dns_resp_ipv6_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.gigamon_dns_bits": {
          "path_match": "ipfix.gigamon_dns_bits",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_dns_qd_count": {
          "path_match": "ipfix.gigamon_dns_qd_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_an_count": {
          "path_match": "ipfix.gigamon_dns_an_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_ns_count": {
          "path_match": "ipfix.gigamon_dns_ns_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_ar_count": {
          "path_match": "ipfix.gigamon_dns_ar_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_query_type": {
          "path_match": "ipfix.gigamon_dns_query_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_query_class": {
          "path_match": "ipfix.gigamon_dns_query_class",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_resp_type": {
          "path_match": "ipfix.gigamon_dns_resp_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_resp_class": {
          "path_match": "ipfix.gigamon_dns_resp_class",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_resp_rd_len": {
          "path_match": "ipfix.gigamon_dns_resp_rd_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_resp_rdata": {
          "path_match": "ipfix.gigamon_dns_resp_rdata",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_dns_auth_name": {
          "path_match": "ipfix.gigamon_dns_auth_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_dns_auth_type": {
          "path_match": "ipfix.gigamon_dns_auth_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_auth_class": {
          "path_match": "ipfix.gigamon_dns_auth_class",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_auth_ttl": {
          "path_match": "ipfix.gigamon_dns_auth_ttl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_auth_rd_len": {
          "path_match": "ipfix.gigamon_dns_auth_rd_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_authority_rdata": {
          "path_match": "ipfix.gigamon_dns_authority_rdata",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_dns_addl_name": {
          "path_match": "ipfix.gigamon_dns_addl_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.gigamon_dns_addl_type": {
          "path_match": "ipfix.gigamon_dns_addl_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_addl_class": {
          "path_match": "ipfix.gigamon_dns_addl_class",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_addl_ttl": {
          "path_match": "ipfix.gigamon_dns_addl_ttl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_addl_rd_len": {
          "path_match": "ipfix.gigamon_dns_addl_rd_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.gigamon_dns_addl_rdata": {
          "path_match": "ipfix.gigamon_dns_addl_rdata",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "ipfix.ipt_mark": {
          "path_match": "ipfix.ipt_mark",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ipt_conntrack_id": {
          "path_match": "ipfix.ipt_conntrack_id",
          "mapping": {
            "type": "long"
          }
        }
      },


      
      {
        "ipfix.ixia_l7_app_id": {
          "path_match": "ipfix.ixia_l7_app_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ixia_l7_app": {
          "path_match": "ipfix.ixia_l7_app",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_src_country_code": {
          "path_match": "ipfix.ixia_src_country_code",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_src_country": {
          "path_match": "ipfix.ixia_src_country",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_src_region_code": {
          "path_match": "ipfix.ixia_src_region_code",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_src_region": {
          "path_match": "ipfix.ixia_src_region",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_src_city": {
          "path_match": "ipfix.ixia_src_city",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_src_latitude": {
          "path_match": "ipfix.ixia_src_latitude",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.ixia_src_longitude": {
          "path_match": "ipfix.ixia_src_longitude",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.ixia_dst_country_code": {
          "path_match": "ipfix.ixia_dst_country_code",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_dst_country": {
          "path_match": "ipfix.ixia_dst_country",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_dst_region_code": {
          "path_match": "ipfix.ixia_dst_region_code",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_dst_region": {
          "path_match": "ipfix.ixia_dst_region",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_dst_city": {
          "path_match": "ipfix.ixia_dst_city",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_dst_latitude": {
          "path_match": "ipfix.ixia_dst_latitude",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.ixia_dst_longitude": {
          "path_match": "ipfix.ixia_dst_longitude",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.ixia_device_id": {
          "path_match": "ipfix.ixia_device_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ixia_device": {
          "path_match": "ipfix.ixia_device",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_browser_id": {
          "path_match": "ipfix.ixia_browser_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ixia_browser": {
          "path_match": "ipfix.ixia_browser",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_rev_bytes_delta": {
          "path_match": "ipfix.ixia_rev_bytes_delta",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ixia_rev_packets_delta": {
          "path_match": "ipfix.ixia_rev_packets_delta",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ixia_encrypt_type": {
          "path_match": "ipfix.ixia_encrypt_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_encrypt_cipher": {
          "path_match": "ipfix.ixia_encrypt_cipher",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_encrypt_key_len": {
          "path_match": "ipfix.ixia_encrypt_key_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ixia_imsi_subscriber": {
          "path_match": "ipfix.ixia_imsi_subscriber",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_http_user_agent": {
          "path_match": "ipfix.ixia_http_user_agent",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_http_hostname": {
          "path_match": "ipfix.ixia_http_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_http_uri": {
          "path_match": "ipfix.ixia_http_uri",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_dns_record_txt": {
          "path_match": "ipfix.ixia_dns_record_txt",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_src_as": {
          "path_match": "ipfix.ixia_src_as",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_dst_as": {
          "path_match": "ipfix.ixia_dst_as",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_latency": {
          "path_match": "ipfix.ixia_latency",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ixia_dns_query": {
          "path_match": "ipfix.ixia_dns_query",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_dns_answer": {
          "path_match": "ipfix.ixia_dns_answer",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_dns_classes": {
          "path_match": "ipfix.ixia_dns_classes",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_threat_type": {
          "path_match": "ipfix.ixia_threat_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ixia_threat_ipv4": {
          "path_match": "ipfix.ixia_threat_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ixia_threat_ipv6": {
          "path_match": "ipfix.ixia_threat_ipv6",
          "mapping": {
            "type": "ip"
          }
        }
      },



      {
        "ipfix.netscaler_rtt": {
          "path_match": "ipfix.netscaler_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_trans_id": {
          "path_match": "ipfix.netscaler_trans_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_url": {
          "path_match": "ipfix.netscaler_http_req_url",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_cookie": {
          "path_match": "ipfix.netscaler_http_req_cookie",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_flow_flags": {
          "path_match": "ipfix.netscaler_flow_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_conn_id": {
          "path_match": "ipfix.netscaler_conn_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_syslog_pri": {
          "path_match": "ipfix.netscaler_syslog_pri",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_syslog_msg": {
          "path_match": "ipfix.netscaler_syslog_msg",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_syslog_timestamp": {
          "path_match": "ipfix.netscaler_syslog_timestamp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_referrer": {
          "path_match": "ipfix.netscaler_http_req_referrer",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_method": {
          "path_match": "ipfix.netscaler_http_req_method",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_host": {
          "path_match": "ipfix.netscaler_http_req_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_user_agent": {
          "path_match": "ipfix.netscaler_http_req_user_agent",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_resp_status": {
          "path_match": "ipfix.netscaler_http_resp_status",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_resp_len": {
          "path_match": "ipfix.netscaler_http_resp_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_server_ttfb": {
          "path_match": "ipfix.netscaler_server_ttfb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_server_ttlb": {
          "path_match": "ipfix.netscaler_server_ttlb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_app_incarnations": {
          "path_match": "ipfix.netscaler_app_incarnations",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_app_id": {
          "path_match": "ipfix.netscaler_app_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_app": {
          "path_match": "ipfix.netscaler_app",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_rcv_fb": {
          "path_match": "ipfix.netscaler_http_req_rcv_fb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_forw_fb": {
          "path_match": "ipfix.netscaler_http_req_forw_fb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_res_rcv_fb": {
          "path_match": "ipfix.netscaler_http_res_rcv_fb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_res_forw_fb": {
          "path_match": "ipfix.netscaler_http_res_forw_fb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_rcv_lb": {
          "path_match": "ipfix.netscaler_http_req_rcv_lb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_forw_lb": {
          "path_match": "ipfix.netscaler_http_req_forw_lb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_main_page_id": {
          "path_match": "ipfix.netscaler_main_page_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_main_page_core_id": {
          "path_match": "ipfix.netscaler_main_page_core_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_client_interact_start_time": {
          "path_match": "ipfix.netscaler_http_client_interact_start_time",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_client_render_end_time": {
          "path_match": "ipfix.netscaler_http_client_render_end_time",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_client_render_start_time": {
          "path_match": "ipfix.netscaler_http_client_render_start_time",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_app_template": {
          "path_match": "ipfix.netscaler_app_template",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_client_interact_end_time": {
          "path_match": "ipfix.netscaler_http_client_interact_end_time",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_res_rcv_lb": {
          "path_match": "ipfix.netscaler_http_res_rcv_lb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_res_forw_lb": {
          "path_match": "ipfix.netscaler_http_res_forw_lb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_app_unit_app_id": {
          "path_match": "ipfix.netscaler_app_unit_app_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_db_login_flags": {
          "path_match": "ipfix.netscaler_db_login_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_db_req_type": {
          "path_match": "ipfix.netscaler_db_req_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_db_proto": {
          "path_match": "ipfix.netscaler_db_proto",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_db_user": {
          "path_match": "ipfix.netscaler_db_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_db_database": {
          "path_match": "ipfix.netscaler_db_database",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_db_client_hostname": {
          "path_match": "ipfix.netscaler_db_client_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_db_req_string": {
          "path_match": "ipfix.netscaler_db_req_string",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_db_resp_status_string": {
          "path_match": "ipfix.netscaler_db_resp_status_string",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_db_resp_status": {
          "path_match": "ipfix.netscaler_db_resp_status",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_db_resp_len": {
          "path_match": "ipfix.netscaler_db_resp_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_client_rtt": {
          "path_match": "ipfix.netscaler_client_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_content_type": {
          "path_match": "ipfix.netscaler_http_content_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_auth": {
          "path_match": "ipfix.netscaler_http_req_auth",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_via": {
          "path_match": "ipfix.netscaler_http_req_via",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_res_location": {
          "path_match": "ipfix.netscaler_http_res_location",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_res_set_cookie": {
          "path_match": "ipfix.netscaler_http_res_set_cookie",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_res_set_cookie2": {
          "path_match": "ipfix.netscaler_http_res_set_cookie2",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_http_req_x_forwarded_for": {
          "path_match": "ipfix.netscaler_http_req_x_forwarded_for",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_conn_chain_id": {
          "path_match": "ipfix.netscaler_conn_chain_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_conn_chain_hop_count": {
          "path_match": "ipfix.netscaler_conn_chain_hop_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_sess_guid": {
          "path_match": "ipfix.netscaler_ica_sess_guid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_ica_client_ver": {
          "path_match": "ipfix.netscaler_ica_client_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_ica_client_type": {
          "path_match": "ipfix.netscaler_ica_client_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_client_ip": {
          "path_match": "ipfix.netscaler_ica_client_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.netscaler_ica_client_hostname": {
          "path_match": "ipfix.netscaler_ica_client_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_aaa_user": {
          "path_match": "ipfix.netscaler_aaa_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_ica_domain": {
          "path_match": "ipfix.netscaler_ica_domain",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_ica_client_launcher": {
          "path_match": "ipfix.netscaler_ica_client_launcher",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_sess_setup_time": {
          "path_match": "ipfix.netscaler_ica_sess_setup_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_server": {
          "path_match": "ipfix.netscaler_ica_server",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_ica_sess_reconnects": {
          "path_match": "ipfix.netscaler_ica_sess_reconnects",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_rtt": {
          "path_match": "ipfix.netscaler_ica_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_clientside_rx_bytes": {
          "path_match": "ipfix.netscaler_ica_clientside_rx_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_clientside_tx_bytes": {
          "path_match": "ipfix.netscaler_ica_clientside_tx_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_clientside_packets_retrans": {
          "path_match": "ipfix.netscaler_ica_clientside_packets_retrans",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_serverside_packets_retrans": {
          "path_match": "ipfix.netscaler_ica_serverside_packets_retrans",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_clientside_rtt": {
          "path_match": "ipfix.netscaler_ica_clientside_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_serverside_rtt": {
          "path_match": "ipfix.netscaler_ica_serverside_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_sess_update_begin_sec": {
          "path_match": "ipfix.netscaler_ica_sess_update_begin_sec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_sess_update_end_sec": {
          "path_match": "ipfix.netscaler_ica_sess_update_end_sec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_channel_id1": {
          "path_match": "ipfix.netscaler_ica_channel_id1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_channel_id1_bytes": {
          "path_match": "ipfix.netscaler_ica_channel_id1_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_channel_id2": {
          "path_match": "ipfix.netscaler_ica_channel_id2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_channel_id2_bytes": {
          "path_match": "ipfix.netscaler_ica_channel_id2_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_channel_id3": {
          "path_match": "ipfix.netscaler_ica_channel_id3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_channel_id3_bytes": {
          "path_match": "ipfix.netscaler_ica_channel_id3_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_channel_id4": {
          "path_match": "ipfix.netscaler_ica_channel_id4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_channel_id4_bytes": {
          "path_match": "ipfix.netscaler_ica_channel_id4_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_channel_id5": {
          "path_match": "ipfix.netscaler_ica_channel_id5",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_channel_id5_bytes": {
          "path_match": "ipfix.netscaler_ica_channel_id5_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_conn_pri": {
          "path_match": "ipfix.netscaler_ica_conn_pri",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_app_start_duration": {
          "path_match": "ipfix.netscaler_app_start_duration",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_launch_mechanism": {
          "path_match": "ipfix.netscaler_ica_launch_mechanism",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_app": {
          "path_match": "ipfix.netscaler_ica_app",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_app_start_time": {
          "path_match": "ipfix.netscaler_app_start_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_app_term_type": {
          "path_match": "ipfix.netscaler_ica_app_term_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_app_term_time": {
          "path_match": "ipfix.netscaler_ica_app_term_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_sess_end_time": {
          "path_match": "ipfix.netscaler_ica_sess_end_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_clientside_jitter": {
          "path_match": "ipfix.netscaler_ica_clientside_jitter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_serverside_jitter": {
          "path_match": "ipfix.netscaler_ica_serverside_jitter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_app_pid": {
          "path_match": "ipfix.netscaler_ica_app_pid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_app_module_path": {
          "path_match": "ipfix.netscaler_ica_app_module_path",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_ica_device_serial_no": {
          "path_match": "ipfix.netscaler_ica_device_serial_no",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_msi_client_cookie": {
          "path_match": "ipfix.netscaler_msi_client_cookie",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_ica_flags": {
          "path_match": "ipfix.netscaler_ica_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_user": {
          "path_match": "ipfix.netscaler_ica_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_license_type": {
          "path_match": "ipfix.netscaler_license_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_max_licenses": {
          "path_match": "ipfix.netscaler_max_licenses",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_licenses_used": {
          "path_match": "ipfix.netscaler_licenses_used",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_network_update_start_time": {
          "path_match": "ipfix.netscaler_ica_network_update_start_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_network_update_end_time": {
          "path_match": "ipfix.netscaler_ica_network_update_end_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_clientside_srtt": {
          "path_match": "ipfix.netscaler_ica_clientside_srtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_serverside_srtt": {
          "path_match": "ipfix.netscaler_ica_serverside_srtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_clientside_delay": {
          "path_match": "ipfix.netscaler_ica_clientside_delay",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_serverside_delay": {
          "path_match": "ipfix.netscaler_ica_serverside_delay",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_host_delay": {
          "path_match": "ipfix.netscaler_ica_host_delay",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_clientside_window_size": {
          "path_match": "ipfix.netscaler_ica_clientside_window_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_serverside_window_size": {
          "path_match": "ipfix.netscaler_ica_serverside_window_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_clientside_rto_count": {
          "path_match": "ipfix.netscaler_ica_clientside_rto_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_serverside_rto_count": {
          "path_match": "ipfix.netscaler_ica_serverside_rto_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_l7_client_latency": {
          "path_match": "ipfix.netscaler_ica_l7_client_latency",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_ica_l7_server_latency": {
          "path_match": "ipfix.netscaler_ica_l7_server_latency",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_http_domain": {
          "path_match": "ipfix.netscaler_http_domain",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_cache_redir_client_conn_core_id": {
          "path_match": "ipfix.netscaler_cache_redir_client_conn_core_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_cache_redir_client_conn_trans_id": {
          "path_match": "ipfix.netscaler_cache_redir_client_conn_trans_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_270": {
          "path_match": "ipfix.netscaler_unk_270",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_271": {
          "path_match": "ipfix.netscaler_unk_271",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_272": {
          "path_match": "ipfix.netscaler_unk_272",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_273": {
          "path_match": "ipfix.netscaler_unk_273",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_274": {
          "path_match": "ipfix.netscaler_unk_274",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_275": {
          "path_match": "ipfix.netscaler_unk_275",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_276": {
          "path_match": "ipfix.netscaler_unk_276",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_277": {
          "path_match": "ipfix.netscaler_unk_277",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_278": {
          "path_match": "ipfix.netscaler_unk_278",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_279": {
          "path_match": "ipfix.netscaler_unk_279",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_280": {
          "path_match": "ipfix.netscaler_unk_280",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_281": {
          "path_match": "ipfix.netscaler_unk_281",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_282": {
          "path_match": "ipfix.netscaler_unk_282",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_283": {
          "path_match": "ipfix.netscaler_unk_283",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_284": {
          "path_match": "ipfix.netscaler_unk_284",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_285": {
          "path_match": "ipfix.netscaler_unk_285",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_286": {
          "path_match": "ipfix.netscaler_unk_286",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_287": {
          "path_match": "ipfix.netscaler_unk_287",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_288": {
          "path_match": "ipfix.netscaler_unk_288",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_289": {
          "path_match": "ipfix.netscaler_unk_289",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_290": {
          "path_match": "ipfix.netscaler_unk_290",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_291": {
          "path_match": "ipfix.netscaler_unk_291",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_292": {
          "path_match": "ipfix.netscaler_unk_292",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_293": {
          "path_match": "ipfix.netscaler_unk_293",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_294": {
          "path_match": "ipfix.netscaler_unk_294",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_295": {
          "path_match": "ipfix.netscaler_unk_295",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_296": {
          "path_match": "ipfix.netscaler_unk_296",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_297": {
          "path_match": "ipfix.netscaler_unk_297",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_298": {
          "path_match": "ipfix.netscaler_unk_298",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_299": {
          "path_match": "ipfix.netscaler_unk_299",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_300": {
          "path_match": "ipfix.netscaler_unk_300",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_301": {
          "path_match": "ipfix.netscaler_unk_301",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_302": {
          "path_match": "ipfix.netscaler_unk_302",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_303": {
          "path_match": "ipfix.netscaler_unk_303",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_304": {
          "path_match": "ipfix.netscaler_unk_304",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_305": {
          "path_match": "ipfix.netscaler_unk_305",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_306": {
          "path_match": "ipfix.netscaler_unk_306",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_307": {
          "path_match": "ipfix.netscaler_unk_307",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_308": {
          "path_match": "ipfix.netscaler_unk_308",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_309": {
          "path_match": "ipfix.netscaler_unk_309",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_310": {
          "path_match": "ipfix.netscaler_unk_310",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_311": {
          "path_match": "ipfix.netscaler_unk_311",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_312": {
          "path_match": "ipfix.netscaler_unk_312",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_313": {
          "path_match": "ipfix.netscaler_unk_313",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_314": {
          "path_match": "ipfix.netscaler_unk_314",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_315": {
          "path_match": "ipfix.netscaler_unk_315",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_316": {
          "path_match": "ipfix.netscaler_unk_316",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_317": {
          "path_match": "ipfix.netscaler_unk_317",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_318": {
          "path_match": "ipfix.netscaler_unk_318",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_319": {
          "path_match": "ipfix.netscaler_unk_319",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_320": {
          "path_match": "ipfix.netscaler_unk_320",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_321": {
          "path_match": "ipfix.netscaler_unk_321",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_322": {
          "path_match": "ipfix.netscaler_unk_322",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_323": {
          "path_match": "ipfix.netscaler_unk_323",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_324": {
          "path_match": "ipfix.netscaler_unk_324",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_325": {
          "path_match": "ipfix.netscaler_unk_325",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_326": {
          "path_match": "ipfix.netscaler_unk_326",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_327": {
          "path_match": "ipfix.netscaler_unk_327",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_328": {
          "path_match": "ipfix.netscaler_unk_328",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_329": {
          "path_match": "ipfix.netscaler_unk_329",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_330": {
          "path_match": "ipfix.netscaler_unk_330",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_331": {
          "path_match": "ipfix.netscaler_unk_331",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_332": {
          "path_match": "ipfix.netscaler_unk_332",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_333": {
          "path_match": "ipfix.netscaler_unk_333",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_334": {
          "path_match": "ipfix.netscaler_unk_334",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_335": {
          "path_match": "ipfix.netscaler_unk_335",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_336": {
          "path_match": "ipfix.netscaler_unk_336",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_337": {
          "path_match": "ipfix.netscaler_unk_337",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_338": {
          "path_match": "ipfix.netscaler_unk_338",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_339": {
          "path_match": "ipfix.netscaler_unk_339",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_340": {
          "path_match": "ipfix.netscaler_unk_340",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_341": {
          "path_match": "ipfix.netscaler_unk_341",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_342": {
          "path_match": "ipfix.netscaler_unk_342",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_343": {
          "path_match": "ipfix.netscaler_unk_343",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_344": {
          "path_match": "ipfix.netscaler_unk_344",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_345": {
          "path_match": "ipfix.netscaler_unk_345",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_346": {
          "path_match": "ipfix.netscaler_unk_346",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_347": {
          "path_match": "ipfix.netscaler_unk_347",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_348": {
          "path_match": "ipfix.netscaler_unk_348",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_349": {
          "path_match": "ipfix.netscaler_unk_349",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_350": {
          "path_match": "ipfix.netscaler_unk_350",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_351": {
          "path_match": "ipfix.netscaler_unk_351",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_352": {
          "path_match": "ipfix.netscaler_unk_352",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_353": {
          "path_match": "ipfix.netscaler_unk_353",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_354": {
          "path_match": "ipfix.netscaler_unk_354",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_355": {
          "path_match": "ipfix.netscaler_unk_355",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_356": {
          "path_match": "ipfix.netscaler_unk_356",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_357": {
          "path_match": "ipfix.netscaler_unk_357",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_358": {
          "path_match": "ipfix.netscaler_unk_358",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_359": {
          "path_match": "ipfix.netscaler_unk_359",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_360": {
          "path_match": "ipfix.netscaler_unk_360",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_361": {
          "path_match": "ipfix.netscaler_unk_361",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_362": {
          "path_match": "ipfix.netscaler_unk_362",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_363": {
          "path_match": "ipfix.netscaler_unk_363",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_364": {
          "path_match": "ipfix.netscaler_unk_364",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_365": {
          "path_match": "ipfix.netscaler_unk_365",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_366": {
          "path_match": "ipfix.netscaler_unk_366",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_367": {
          "path_match": "ipfix.netscaler_unk_367",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_377": {
          "path_match": "ipfix.netscaler_unk_377",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_380": {
          "path_match": "ipfix.netscaler_unk_380",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_383": {
          "path_match": "ipfix.netscaler_unk_383",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_384": {
          "path_match": "ipfix.netscaler_unk_384",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_385": {
          "path_match": "ipfix.netscaler_unk_385",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_386": {
          "path_match": "ipfix.netscaler_unk_386",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_387": {
          "path_match": "ipfix.netscaler_unk_387",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_388": {
          "path_match": "ipfix.netscaler_unk_388",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_389": {
          "path_match": "ipfix.netscaler_unk_389",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.netscaler_unk_391": {
          "path_match": "ipfix.netscaler_unk_391",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_392": {
          "path_match": "ipfix.netscaler_unk_392",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_393": {
          "path_match": "ipfix.netscaler_unk_393",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_394": {
          "path_match": "ipfix.netscaler_unk_394",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_398": {
          "path_match": "ipfix.netscaler_unk_398",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_399": {
          "path_match": "ipfix.netscaler_unk_399",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_400": {
          "path_match": "ipfix.netscaler_unk_400",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_401": {
          "path_match": "ipfix.netscaler_unk_401",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_402": {
          "path_match": "ipfix.netscaler_unk_402",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_403": {
          "path_match": "ipfix.netscaler_unk_403",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_404": {
          "path_match": "ipfix.netscaler_unk_404",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_405": {
          "path_match": "ipfix.netscaler_unk_405",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_408": {
          "path_match": "ipfix.netscaler_unk_408",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_427": {
          "path_match": "ipfix.netscaler_unk_427",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_429": {
          "path_match": "ipfix.netscaler_unk_429",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_432": {
          "path_match": "ipfix.netscaler_unk_432",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_433": {
          "path_match": "ipfix.netscaler_unk_433",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_434": {
          "path_match": "ipfix.netscaler_unk_434",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_435": {
          "path_match": "ipfix.netscaler_unk_435",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_447": {
          "path_match": "ipfix.netscaler_unk_447",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_448": {
          "path_match": "ipfix.netscaler_unk_448",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_451": {
          "path_match": "ipfix.netscaler_unk_451",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_452": {
          "path_match": "ipfix.netscaler_unk_452",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_453": {
          "path_match": "ipfix.netscaler_unk_453",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_455": {
          "path_match": "ipfix.netscaler_unk_455",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_458": {
          "path_match": "ipfix.netscaler_unk_458",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_459": {
          "path_match": "ipfix.netscaler_unk_459",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_460": {
          "path_match": "ipfix.netscaler_unk_460",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_461": {
          "path_match": "ipfix.netscaler_unk_461",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_463": {
          "path_match": "ipfix.netscaler_unk_463",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_464": {
          "path_match": "ipfix.netscaler_unk_464",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_465": {
          "path_match": "ipfix.netscaler_unk_465",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_466": {
          "path_match": "ipfix.netscaler_unk_466",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_467": {
          "path_match": "ipfix.netscaler_unk_467",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_468": {
          "path_match": "ipfix.netscaler_unk_468",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_475": {
          "path_match": "ipfix.netscaler_unk_475",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_476": {
          "path_match": "ipfix.netscaler_unk_476",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_477": {
          "path_match": "ipfix.netscaler_unk_477",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_478": {
          "path_match": "ipfix.netscaler_unk_478",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_479": {
          "path_match": "ipfix.netscaler_unk_479",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_480": {
          "path_match": "ipfix.netscaler_unk_480",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_481": {
          "path_match": "ipfix.netscaler_unk_481",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_487": {
          "path_match": "ipfix.netscaler_unk_487",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_488": {
          "path_match": "ipfix.netscaler_unk_488",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_489": {
          "path_match": "ipfix.netscaler_unk_489",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_491": {
          "path_match": "ipfix.netscaler_unk_491",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_492": {
          "path_match": "ipfix.netscaler_unk_492",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_493": {
          "path_match": "ipfix.netscaler_unk_493",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_494": {
          "path_match": "ipfix.netscaler_unk_494",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_507": {
          "path_match": "ipfix.netscaler_unk_507",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_508": {
          "path_match": "ipfix.netscaler_unk_508",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_509": {
          "path_match": "ipfix.netscaler_unk_509",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_510": {
          "path_match": "ipfix.netscaler_unk_510",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_511": {
          "path_match": "ipfix.netscaler_unk_511",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_512": {
          "path_match": "ipfix.netscaler_unk_512",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_513": {
          "path_match": "ipfix.netscaler_unk_513",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_514": {
          "path_match": "ipfix.netscaler_unk_514",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_518": {
          "path_match": "ipfix.netscaler_unk_518",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_519": {
          "path_match": "ipfix.netscaler_unk_519",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_520": {
          "path_match": "ipfix.netscaler_unk_520",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_521": {
          "path_match": "ipfix.netscaler_unk_521",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_522": {
          "path_match": "ipfix.netscaler_unk_522",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_523": {
          "path_match": "ipfix.netscaler_unk_523",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_532": {
          "path_match": "ipfix.netscaler_unk_532",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_533": {
          "path_match": "ipfix.netscaler_unk_533",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_534": {
          "path_match": "ipfix.netscaler_unk_534",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_535": {
          "path_match": "ipfix.netscaler_unk_535",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_536": {
          "path_match": "ipfix.netscaler_unk_536",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_537": {
          "path_match": "ipfix.netscaler_unk_537",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_538": {
          "path_match": "ipfix.netscaler_unk_538",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.netscaler_unk_541": {
          "path_match": "ipfix.netscaler_unk_541",
          "mapping": {
            "type": "long"
          }
        }
      },


      
      {
        "ipfix.ntop_client_tcp_flags": {
          "path_match": "ipfix.ntop_client_tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_server_tcp_flags": {
          "path_match": "ipfix.ntop_server_tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_frags": {
          "path_match": "ipfix.ntop_src_frags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_frags": {
          "path_match": "ipfix.ntop_dst_frags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_to_dst_max_throughput": {
          "path_match": "ipfix.ntop_src_to_dst_max_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_to_dst_min_throughput": {
          "path_match": "ipfix.ntop_src_to_dst_min_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_to_dst_avg_throughput": {
          "path_match": "ipfix.ntop_src_to_dst_avg_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_to_src_max_throughput": {
          "path_match": "ipfix.ntop_dst_to_src_max_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_to_src_min_throughput": {
          "path_match": "ipfix.ntop_dst_to_src_min_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_to_src_avg_throughput": {
          "path_match": "ipfix.ntop_dst_to_src_avg_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_upto_128_bytes": {
          "path_match": "ipfix.ntop_packets_upto_128_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_128_to_256_bytes": {
          "path_match": "ipfix.ntop_packets_128_to_256_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_256_to_512_bytes": {
          "path_match": "ipfix.ntop_packets_256_to_512_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_512_to_1024_bytes": {
          "path_match": "ipfix.ntop_packets_512_to_1024_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_1024_to_1514_bytes": {
          "path_match": "ipfix.ntop_packets_1024_to_1514_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_over_1514_bytes": {
          "path_match": "ipfix.ntop_packets_over_1514_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_cumulative_icmp_type": {
          "path_match": "ipfix.ntop_cumulative_icmp_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_country": {
          "path_match": "ipfix.ntop_src_country",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_src_city": {
          "path_match": "ipfix.ntop_src_city",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dst_country": {
          "path_match": "ipfix.ntop_dst_country",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dst_city": {
          "path_match": "ipfix.ntop_dst_city",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_flow_proto_port": {
          "path_match": "ipfix.ntop_flow_proto_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_tunnel_id": {
          "path_match": "ipfix.ntop_tunnel_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_longest_flow_packet": {
          "path_match": "ipfix.ntop_longest_flow_packet",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_shortest_flow_packet": {
          "path_match": "ipfix.ntop_shortest_flow_packet",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_retrans_in_packets": {
          "path_match": "ipfix.ntop_retrans_in_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_retrans_out_packets": {
          "path_match": "ipfix.ntop_retrans_out_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_ooorder_in_packets": {
          "path_match": "ipfix.ntop_ooorder_in_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_ooorder_out_packets": {
          "path_match": "ipfix.ntop_ooorder_out_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_untunneled_protocol": {
          "path_match": "ipfix.ntop_untunneled_protocol",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_untunneled_ipv4_src_addr": {
          "path_match": "ipfix.ntop_untunneled_ipv4_src_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_untunneled_l4_src_port": {
          "path_match": "ipfix.ntop_untunneled_l4_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_untunneled_ipv4_dst_addr": {
          "path_match": "ipfix.ntop_untunneled_ipv4_dst_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_untunneled_l4_dst_port": {
          "path_match": "ipfix.ntop_untunneled_l4_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_l7_proto": {
          "path_match": "ipfix.ntop_l7_proto",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_l7_proto_name": {
          "path_match": "ipfix.ntop_l7_proto_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_downstram_tunnel_id": {
          "path_match": "ipfix.ntop_downstram_tunnel_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_flow_user": {
          "path_match": "ipfix.ntop_flow_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_flow_server": {
          "path_match": "ipfix.ntop_flow_server",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_client_nw_latency_ms": {
          "path_match": "ipfix.ntop_client_nw_latency_ms",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_server_nw_latency_ms": {
          "path_match": "ipfix.ntop_server_nw_latency_ms",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_appl_latency_ms": {
          "path_match": "ipfix.ntop_appl_latency_ms",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_plugin": {
          "path_match": "ipfix.ntop_plugin",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_retrans_in_bytes": {
          "path_match": "ipfix.ntop_retrans_in_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_retrans_out_bytes": {
          "path_match": "ipfix.ntop_retrans_out_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_call_id": {
          "path_match": "ipfix.ntop_sip_call_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_sip_calling_party": {
          "path_match": "ipfix.ntop_sip_calling_party",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_sip_called_party": {
          "path_match": "ipfix.ntop_sip_called_party",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_sip_rtp_codecs": {
          "path_match": "ipfix.ntop_sip_rtp_codecs",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_sip_invite_time": {
          "path_match": "ipfix.ntop_sip_invite_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_trying_time": {
          "path_match": "ipfix.ntop_sip_trying_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_ringing_time": {
          "path_match": "ipfix.ntop_sip_ringing_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_ok_time": {
          "path_match": "ipfix.ntop_sip_ok_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_invite_failure_time": {
          "path_match": "ipfix.ntop_sip_invite_failure_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_bye_time": {
          "path_match": "ipfix.ntop_sip_bye_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_bye_ok_time": {
          "path_match": "ipfix.ntop_sip_bye_ok_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_cancel_time": {
          "path_match": "ipfix.ntop_sip_cancel_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_cancel_ok_time": {
          "path_match": "ipfix.ntop_sip_cancel_ok_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_rtp_ipv4_src_addr": {
          "path_match": "ipfix.ntop_sip_rtp_ipv4_src_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_sip_rtp_l4_src_port": {
          "path_match": "ipfix.ntop_sip_rtp_l4_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_rtp_ipv4_dst_addr": {
          "path_match": "ipfix.ntop_sip_rtp_ipv4_dst_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_sip_rtp_l4_dst_port": {
          "path_match": "ipfix.ntop_sip_rtp_l4_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_resp_code": {
          "path_match": "ipfix.ntop_sip_resp_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_reason_cause": {
          "path_match": "ipfix.ntop_sip_reason_cause",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_first_seq": {
          "path_match": "ipfix.ntop_rtp_first_seq",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_first_ts": {
          "path_match": "ipfix.ntop_rtp_first_ts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_last_seq": {
          "path_match": "ipfix.ntop_rtp_last_seq",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_last_ts": {
          "path_match": "ipfix.ntop_rtp_last_ts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_in_jitter": {
          "path_match": "ipfix.ntop_rtp_in_jitter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_out_jitter": {
          "path_match": "ipfix.ntop_rtp_out_jitter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_in_packets_lost": {
          "path_match": "ipfix.ntop_rtp_in_packets_lost",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_out_packets_lost": {
          "path_match": "ipfix.ntop_rtp_out_packets_lost",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_out_payload_type": {
          "path_match": "ipfix.ntop_rtp_out_payload_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_in_max_delta": {
          "path_match": "ipfix.ntop_rtp_in_max_delta",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_out_max_delta": {
          "path_match": "ipfix.ntop_rtp_out_max_delta",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_in_payload_type": {
          "path_match": "ipfix.ntop_rtp_in_payload_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_proc_id": {
          "path_match": "ipfix.ntop_src_proc_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_proc": {
          "path_match": "ipfix.ntop_src_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_http_url": {
          "path_match": "ipfix.ntop_http_url",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_http_ret_code": {
          "path_match": "ipfix.ntop_http_ret_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_http_referrer": {
          "path_match": "ipfix.ntop_http_referrer",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_http_user_agent": {
          "path_match": "ipfix.ntop_http_user_agent",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_http_mime": {
          "path_match": "ipfix.ntop_http_mime",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_smtp_mail_from": {
          "path_match": "ipfix.ntop_smtp_mail_from",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_smtp_rcpt_to": {
          "path_match": "ipfix.ntop_smtp_rcpt_to",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_http_host": {
          "path_match": "ipfix.ntop_http_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_ssl_server": {
          "path_match": "ipfix.ntop_ssl_server",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_bittorrent_hash": {
          "path_match": "ipfix.ntop_bittorrent_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_mysql_server_ver": {
          "path_match": "ipfix.ntop_mysql_server_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_mysql_user": {
          "path_match": "ipfix.ntop_mysql_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_mysql_db": {
          "path_match": "ipfix.ntop_mysql_db",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_mysql_query": {
          "path_match": "ipfix.ntop_mysql_query",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_mysql_resp": {
          "path_match": "ipfix.ntop_mysql_resp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_oracle_user": {
          "path_match": "ipfix.ntop_oracle_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_oracle_query": {
          "path_match": "ipfix.ntop_oracle_query",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_oracle_resp_code": {
          "path_match": "ipfix.ntop_oracle_resp_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_oracle_resp_string": {
          "path_match": "ipfix.ntop_oracle_resp_string",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_oracle_query_duration": {
          "path_match": "ipfix.ntop_oracle_query_duration",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dns_query": {
          "path_match": "ipfix.ntop_dns_query",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dns_query_id": {
          "path_match": "ipfix.ntop_dns_query_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dns_query_type": {
          "path_match": "ipfix.ntop_dns_query_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dns_ret_code": {
          "path_match": "ipfix.ntop_dns_ret_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dns_answers": {
          "path_match": "ipfix.ntop_dns_answers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_pop_user": {
          "path_match": "ipfix.ntop_pop_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_req_msg_type": {
          "path_match": "ipfix.ntop_gtpv1_req_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_resp_msg_type": {
          "path_match": "ipfix.ntop_gtpv1_resp_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_c2s_teid_data": {
          "path_match": "ipfix.ntop_gtpv1_c2s_teid_data",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_c2s_teid_ctrl": {
          "path_match": "ipfix.ntop_gtpv1_c2s_teid_ctrl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_s2c_teid_data": {
          "path_match": "ipfix.ntop_gtpv1_s2c_teid_data",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_s2c_teid_ctrl": {
          "path_match": "ipfix.ntop_gtpv1_s2c_teid_ctrl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_end_user_ip": {
          "path_match": "ipfix.ntop_gtpv1_end_user_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_end_user_imsi": {
          "path_match": "ipfix.ntop_gtpv1_end_user_imsi",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_end_user_msisdn": {
          "path_match": "ipfix.ntop_gtpv1_end_user_msisdn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_end_user_imei": {
          "path_match": "ipfix.ntop_gtpv1_end_user_imei",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_apn": {
          "path_match": "ipfix.ntop_gtpv1_apn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_rai_mcc": {
          "path_match": "ipfix.ntop_gtpv1_rai_mcc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_rai_mnc": {
          "path_match": "ipfix.ntop_gtpv1_rai_mnc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_uli_cell_lac": {
          "path_match": "ipfix.ntop_gtpv1_uli_cell_lac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_uli_cell_ci": {
          "path_match": "ipfix.ntop_gtpv1_uli_cell_ci",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_uli_sac": {
          "path_match": "ipfix.ntop_gtpv1_uli_sac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_rai_type": {
          "path_match": "ipfix.ntop_gtpv1_rai_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_radius_req_msg_type": {
          "path_match": "ipfix.ntop_radius_req_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_radius_resp_msg_type": {
          "path_match": "ipfix.ntop_radius_resp_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_radius_user": {
          "path_match": "ipfix.ntop_radius_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_radius_calling_station_id": {
          "path_match": "ipfix.ntop_radius_calling_station_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_radius_called_station_id": {
          "path_match": "ipfix.ntop_radius_called_station_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_radius_nas_ip": {
          "path_match": "ipfix.ntop_radius_nas_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_radius_nas_id": {
          "path_match": "ipfix.ntop_radius_nas_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_radius_user_imsi": {
          "path_match": "ipfix.ntop_radius_user_imsi",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_radius_user_imei": {
          "path_match": "ipfix.ntop_radius_user_imei",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_radius_framed_ip": {
          "path_match": "ipfix.ntop_radius_framed_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_radius_acct_sess_id": {
          "path_match": "ipfix.ntop_radius_acct_sess_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_radius_acct_status_type": {
          "path_match": "ipfix.ntop_radius_acct_status_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_radius_acct_in_octets": {
          "path_match": "ipfix.ntop_radius_acct_in_octets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_radius_acct_out_octets": {
          "path_match": "ipfix.ntop_radius_acct_out_octets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_radius_acct_in_packets": {
          "path_match": "ipfix.ntop_radius_acct_in_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_radius_acct_out_packets": {
          "path_match": "ipfix.ntop_radius_acct_out_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_imap_login": {
          "path_match": "ipfix.ntop_imap_login",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_req_msg_type": {
          "path_match": "ipfix.ntop_gtpv2_req_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_resp_msg_type": {
          "path_match": "ipfix.ntop_gtpv2_resp_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_c2s_s1u_gtpu_teid": {
          "path_match": "ipfix.ntop_gtpv2_c2s_s1u_gtpu_teid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_c2s_s1u_gtpu_ip": {
          "path_match": "ipfix.ntop_gtpv2_c2s_s1u_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_s2c_s1u_gtpu_teid": {
          "path_match": "ipfix.ntop_gtpv2_s2c_s1u_gtpu_teid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_s2c_s1u_gtpu_ip": {
          "path_match": "ipfix.ntop_gtpv2_s2c_s1u_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_end_user_imsi": {
          "path_match": "ipfix.ntop_gtpv2_end_user_imsi",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_and_user_msisdn": {
          "path_match": "ipfix.ntop_gtpv2_and_user_msisdn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_apn": {
          "path_match": "ipfix.ntop_gtpv2_apn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_uli_mcc": {
          "path_match": "ipfix.ntop_gtpv2_uli_mcc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_uli_mnc": {
          "path_match": "ipfix.ntop_gtpv2_uli_mnc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_uli_cell_tac": {
          "path_match": "ipfix.ntop_gtpv2_uli_cell_tac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_uli_cell_id": {
          "path_match": "ipfix.ntop_gtpv2_uli_cell_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_rat_type": {
          "path_match": "ipfix.ntop_gtpv2_rat_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_pdn_ip": {
          "path_match": "ipfix.ntop_gtpv2_pdn_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_end_user_imei": {
          "path_match": "ipfix.ntop_gtpv2_end_user_imei",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_src_as_path_1": {
          "path_match": "ipfix.ntop_src_as_path_1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_as_path_2": {
          "path_match": "ipfix.ntop_src_as_path_2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_as_path_3": {
          "path_match": "ipfix.ntop_src_as_path_3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_as_path_4": {
          "path_match": "ipfix.ntop_src_as_path_4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_as_path_5": {
          "path_match": "ipfix.ntop_src_as_path_5",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_as_path_6": {
          "path_match": "ipfix.ntop_src_as_path_6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_as_path_7": {
          "path_match": "ipfix.ntop_src_as_path_7",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_as_path_8": {
          "path_match": "ipfix.ntop_src_as_path_8",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_as_path_9": {
          "path_match": "ipfix.ntop_src_as_path_9",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_as_path_10": {
          "path_match": "ipfix.ntop_src_as_path_10",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_as_path_1": {
          "path_match": "ipfix.ntop_dst_as_path_1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_as_path_2": {
          "path_match": "ipfix.ntop_dst_as_path_2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_as_path_3": {
          "path_match": "ipfix.ntop_dst_as_path_3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_as_path_4": {
          "path_match": "ipfix.ntop_dst_as_path_4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_as_path_5": {
          "path_match": "ipfix.ntop_dst_as_path_5",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_as_path_6": {
          "path_match": "ipfix.ntop_dst_as_path_6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_as_path_7": {
          "path_match": "ipfix.ntop_dst_as_path_7",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_as_path_8": {
          "path_match": "ipfix.ntop_dst_as_path_8",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_as_path_9": {
          "path_match": "ipfix.ntop_dst_as_path_9",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_as_path_10": {
          "path_match": "ipfix.ntop_dst_as_path_10",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_sip_uac": {
          "path_match": "ipfix.ntop_sip_uac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_sip_uas": {
          "path_match": "ipfix.ntop_sip_uas",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_mysql_appl_latency_usec": {
          "path_match": "ipfix.ntop_mysql_appl_latency_usec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv0_req_msg_type": {
          "path_match": "ipfix.ntop_gtpv0_req_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv0_resp_msg_type": {
          "path_match": "ipfix.ntop_gtpv0_resp_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv0_tid": {
          "path_match": "ipfix.ntop_gtpv0_tid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv0_end_user_ip": {
          "path_match": "ipfix.ntop_gtpv0_end_user_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_gtpv0_end_user_msisdn": {
          "path_match": "ipfix.ntop_gtpv0_end_user_msisdn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv0_apn": {
          "path_match": "ipfix.ntop_gtpv0_apn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_gtpv0_rai_mcc": {
          "path_match": "ipfix.ntop_gtpv0_rai_mcc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv0_rai_mnc": {
          "path_match": "ipfix.ntop_gtpv0_rai_mnc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv0_rai_cell_lac": {
          "path_match": "ipfix.ntop_gtpv0_rai_cell_lac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv0_rai_cell_rac": {
          "path_match": "ipfix.ntop_gtpv0_rai_cell_rac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv0_resp_cause": {
          "path_match": "ipfix.ntop_gtpv0_resp_cause",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_resp_cause": {
          "path_match": "ipfix.ntop_gtpv1_resp_cause",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_resp_cause": {
          "path_match": "ipfix.ntop_gtpv2_resp_cause",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_ttl_5_32": {
          "path_match": "ipfix.ntop_packets_ttl_5_32",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_ttl_32_64": {
          "path_match": "ipfix.ntop_packets_ttl_32_64",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_ttl_64_96": {
          "path_match": "ipfix.ntop_packets_ttl_64_96",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_ttl_96_128": {
          "path_match": "ipfix.ntop_packets_ttl_96_128",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_ttl_128_160": {
          "path_match": "ipfix.ntop_packets_ttl_128_160",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_ttl_160_192": {
          "path_match": "ipfix.ntop_packets_ttl_160_192",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_ttl_192_224": {
          "path_match": "ipfix.ntop_packets_ttl_192_224",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_ttl_224_225": {
          "path_match": "ipfix.ntop_packets_ttl_224_225",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_rai_lac": {
          "path_match": "ipfix.ntop_gtpv1_rai_lac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_rai_rac": {
          "path_match": "ipfix.ntop_gtpv1_rai_rac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_uli_mcc": {
          "path_match": "ipfix.ntop_gtpv1_uli_mcc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv1_uli_mnc": {
          "path_match": "ipfix.ntop_gtpv1_uli_mnc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_ttl_2_5": {
          "path_match": "ipfix.ntop_packets_ttl_2_5",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_packets_ttl_eq_1": {
          "path_match": "ipfix.ntop_packets_ttl_eq_1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_sip_call_id": {
          "path_match": "ipfix.ntop_rtp_sip_call_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_in_src_osi_sap": {
          "path_match": "ipfix.ntop_in_src_osi_sap",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_out_dst_osi_sap": {
          "path_match": "ipfix.ntop_out_dst_osi_sap",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_whois_das_domain": {
          "path_match": "ipfix.ntop_whois_das_domain",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dns_ttl_answer": {
          "path_match": "ipfix.ntop_dns_ttl_answer",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dhcp_client_mac": {
          "path_match": "ipfix.ntop_dhcp_client_mac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dhcp_client_ip": {
          "path_match": "ipfix.ntop_dhcp_client_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_dhcp_client": {
          "path_match": "ipfix.ntop_dhcp_client",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_ftp_login": {
          "path_match": "ipfix.ntop_ftp_login",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_ftp_password": {
          "path_match": "ipfix.ntop_ftp_password",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_ftp_command": {
          "path_match": "ipfix.ntop_ftp_command",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_ftp_command_ret_code": {
          "path_match": "ipfix.ntop_ftp_command_ret_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_http_method": {
          "path_match": "ipfix.ntop_http_method",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_http_site": {
          "path_match": "ipfix.ntop_http_site",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_sip_c_ip": {
          "path_match": "ipfix.ntop_sip_c_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_sip_call_state": {
          "path_match": "ipfix.ntop_sip_call_state",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_rtp_in_mos": {
          "path_match": "ipfix.ntop_rtp_in_mos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_in_r_factor": {
          "path_match": "ipfix.ntop_rtp_in_r_factor",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_proc_user": {
          "path_match": "ipfix.ntop_src_proc_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_src_father_proc_pid": {
          "path_match": "ipfix.ntop_src_father_proc_pid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_father_proc": {
          "path_match": "ipfix.ntop_src_father_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dst_proc_pid": {
          "path_match": "ipfix.ntop_dst_proc_pid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_proc": {
          "path_match": "ipfix.ntop_dst_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dst_proc_user": {
          "path_match": "ipfix.ntop_dst_proc_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dst_father_proc_pid": {
          "path_match": "ipfix.ntop_dst_father_proc_pid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_father_proc": {
          "path_match": "ipfix.ntop_dst_father_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_rtp_rtt": {
          "path_match": "ipfix.ntop_rtp_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_in_transit": {
          "path_match": "ipfix.ntop_rtp_in_transit",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_out_transit": {
          "path_match": "ipfix.ntop_rtp_out_transit",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_proc_actual_memory": {
          "path_match": "ipfix.ntop_src_proc_actual_memory",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_proc_peak_memory": {
          "path_match": "ipfix.ntop_src_proc_peak_memory",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_proc_avg_cpu_load": {
          "path_match": "ipfix.ntop_src_proc_avg_cpu_load",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_proc_page_faults": {
          "path_match": "ipfix.ntop_src_proc_page_faults",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_proc_actual_memory": {
          "path_match": "ipfix.ntop_dst_proc_actual_memory",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_proc_peak_memory": {
          "path_match": "ipfix.ntop_dst_proc_peak_memory",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_proc_avg_cpu_load": {
          "path_match": "ipfix.ntop_dst_proc_avg_cpu_load",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_proc_page_faults": {
          "path_match": "ipfix.ntop_dst_proc_page_faults",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_duration_in": {
          "path_match": "ipfix.ntop_duration_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_duration_out": {
          "path_match": "ipfix.ntop_duration_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_proc_pctg_iowait": {
          "path_match": "ipfix.ntop_src_proc_pctg_iowait",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_proc_pctg_iowait": {
          "path_match": "ipfix.ntop_dst_proc_pctg_iowait",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_dtmf_tones": {
          "path_match": "ipfix.ntop_rtp_dtmf_tones",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_untunneled_ipv6_src_addr": {
          "path_match": "ipfix.ntop_untunneled_ipv6_src_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_untunneled_ipv6_dst_addr": {
          "path_match": "ipfix.ntop_untunneled_ipv6_dst_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_dns_resp": {
          "path_match": "ipfix.ntop_dns_resp",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_diameter_req_msg_type": {
          "path_match": "ipfix.ntop_diameter_req_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_diameter_resp_msg_type": {
          "path_match": "ipfix.ntop_diameter_resp_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_diameter_req_origin_host": {
          "path_match": "ipfix.ntop_diameter_req_origin_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_diameter_resp_origin_host": {
          "path_match": "ipfix.ntop_diameter_resp_origin_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_diameter_req_user": {
          "path_match": "ipfix.ntop_diameter_req_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_diameter_resp_result_code": {
          "path_match": "ipfix.ntop_diameter_resp_result_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_diameter_exp_res_vendor_id": {
          "path_match": "ipfix.ntop_diameter_exp_res_vendor_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_diameter_exp_res_result_code": {
          "path_match": "ipfix.ntop_diameter_exp_res_result_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_s1ap_enb_ue_s1ap_id": {
          "path_match": "ipfix.ntop_s1ap_enb_ue_s1ap_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_s1ap_mme_ue_s1ap_id": {
          "path_match": "ipfix.ntop_s1ap_mme_ue_s1ap_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_s1ap_msg_emm_type_mme_to_enb": {
          "path_match": "ipfix.ntop_s1ap_msg_emm_type_mme_to_enb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_s1ap_msg_esm_type_mme_to_enb": {
          "path_match": "ipfix.ntop_s1ap_msg_esm_type_mme_to_enb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_s1ap_msg_emm_type_enb_to_mme": {
          "path_match": "ipfix.ntop_s1ap_msg_emm_type_enb_to_mme",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_s1ap_msg_esm_type_enb_to_mme": {
          "path_match": "ipfix.ntop_s1ap_msg_esm_type_enb_to_mme",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_s1ap_cause_enb_to_mme": {
          "path_match": "ipfix.ntop_s1ap_cause_enb_to_mme",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_s1ap_detailed_cause_enb_to_mme": {
          "path_match": "ipfix.ntop_s1ap_detailed_cause_enb_to_mme",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_tcp_win_min_in": {
          "path_match": "ipfix.ntop_tcp_win_min_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_tcp_win_max_in": {
          "path_match": "ipfix.ntop_tcp_win_max_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_tcp_win_mss_in": {
          "path_match": "ipfix.ntop_tcp_win_mss_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_tcp_win_scale_in": {
          "path_match": "ipfix.ntop_tcp_win_scale_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_tcp_win_min_out": {
          "path_match": "ipfix.ntop_tcp_win_min_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_tcp_win_max_out": {
          "path_match": "ipfix.ntop_tcp_win_max_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_tcp_win_mss_out": {
          "path_match": "ipfix.ntop_tcp_win_mss_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_tcp_win_scale_out": {
          "path_match": "ipfix.ntop_tcp_win_scale_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dhcp_remote_id": {
          "path_match": "ipfix.ntop_dhcp_remote_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dhcp_subscriber_id": {
          "path_match": "ipfix.ntop_dhcp_subscriber_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_src_proc_uid": {
          "path_match": "ipfix.ntop_src_proc_uid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_proc_uid": {
          "path_match": "ipfix.ntop_dst_proc_uid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_application": {
          "path_match": "ipfix.ntop_application",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_user": {
          "path_match": "ipfix.ntop_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dhcp_message_type": {
          "path_match": "ipfix.ntop_dhcp_message_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_rtp_in_packets_drop": {
          "path_match": "ipfix.ntop_rtp_in_packets_drop",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_out_packets_drop": {
          "path_match": "ipfix.ntop_rtp_out_packets_drop",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_out_mos": {
          "path_match": "ipfix.ntop_rtp_out_mos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_out_r_factor": {
          "path_match": "ipfix.ntop_rtp_out_r_factor",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_mos": {
          "path_match": "ipfix.ntop_rtp_mos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gptv2_s5_s8_gtpc_teid": {
          "path_match": "ipfix.ntop_gptv2_s5_s8_gtpc_teid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_rtp_r_factor": {
          "path_match": "ipfix.ntop_rtp_r_factor",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_rtp_ssrc": {
          "path_match": "ipfix.ntop_rtp_ssrc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_payload_hash": {
          "path_match": "ipfix.ntop_payload_hash",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_c2s_s5_s8_gtpu_teid": {
          "path_match": "ipfix.ntop_gtpv2_c2s_s5_s8_gtpu_teid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_s2c_s5_s8_gtpu_teid": {
          "path_match": "ipfix.ntop_gtpv2_s2c_s5_s8_gtpu_teid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_c2s_s5_s8_gtpu_ip": {
          "path_match": "ipfix.ntop_gtpv2_c2s_s5_s8_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_s2c_s5_s8_gtpu_ip": {
          "path_match": "ipfix.ntop_gtpv2_s2c_s5_s8_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_src_as_map": {
          "path_match": "ipfix.ntop_src_as_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dst_as_map": {
          "path_match": "ipfix.ntop_dst_as_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_diameter_hop_by_hop_id": {
          "path_match": "ipfix.ntop_diameter_hop_by_hop_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_upstream_sess_id": {
          "path_match": "ipfix.ntop_upstream_sess_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_downstream_sess_id": {
          "path_match": "ipfix.ntop_downstream_sess_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_src_long": {
          "path_match": "ipfix.ntop_src_long",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.ntop_src_lat": {
          "path_match": "ipfix.ntop_src_lat",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.ntop_dst_long": {
          "path_match": "ipfix.ntop_dst_long",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.ntop_dst_lat": {
          "path_match": "ipfix.ntop_dst_lat",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.ntop_diameter_clr_cancel_type": {
          "path_match": "ipfix.ntop_diameter_clr_cancel_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_diameter_clr_flags": {
          "path_match": "ipfix.ntop_diameter_clr_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_c2s_s5_s8_gtpc_ip": {
          "path_match": "ipfix.ntop_gtpv2_c2s_s5_s8_gtpc_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_s2c_s5_s8_gtpc_ip": {
          "path_match": "ipfix.ntop_gtpv2_s2c_s5_s8_gtpc_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_c2s_s5_s8_sgw_gtpu_teid": {
          "path_match": "ipfix.ntop_gtpv2_c2s_s5_s8_sgw_gtpu_teid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_s2c_s5_s8_sgw_gtpu_teid": {
          "path_match": "ipfix.ntop_gtpv2_s2c_s5_s8_sgw_gtpu_teid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_c2s_s5_s8_sgw_gtpu_ip": {
          "path_match": "ipfix.ntop_gtpv2_c2s_s5_s8_sgw_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_gtpv2_s2c_s5_s8_sgw_gtpu_ip": {
          "path_match": "ipfix.ntop_gtpv2_s2c_s5_s8_sgw_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_http_x_forwarded_for": {
          "path_match": "ipfix.ntop_http_x_forwarded_for",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_http_via": {
          "path_match": "ipfix.ntop_http_via",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_ssdp_host": {
          "path_match": "ipfix.ntop_ssdp_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_ssdp_usn": {
          "path_match": "ipfix.ntop_ssdp_usn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_netbios_query": {
          "path_match": "ipfix.ntop_netbios_query",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_netbios_query_type": {
          "path_match": "ipfix.ntop_netbios_query_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_netbios_resp": {
          "path_match": "ipfix.ntop_netbios_resp",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_netbios_query_os": {
          "path_match": "ipfix.ntop_netbios_query_os",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_ssdp_server": {
          "path_match": "ipfix.ntop_ssdp_server",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_ssdp_type": {
          "path_match": "ipfix.ntop_ssdp_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_ssdp_method": {
          "path_match": "ipfix.ntop_ssdp_method",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_nprobe_ipv4_addr": {
          "path_match": "ipfix.ntop_nprobe_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.ntop_src_to_dst_second_bytes": {
          "path_match": "ipfix.ntop_src_to_dst_second_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dst_to_src_second_bytes": {
          "path_match": "ipfix.ntop_dst_to_src_second_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_dicom_impl_uid": {
          "path_match": "ipfix.ntop_dicom_impl_uid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_impl_version": {
          "path_match": "ipfix.ntop_dicom_impl_version",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_modality": {
          "path_match": "ipfix.ntop_dicom_modality",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_manufacturer": {
          "path_match": "ipfix.ntop_dicom_manufacturer",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_institution_name": {
          "path_match": "ipfix.ntop_dicom_institution_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_institution_address": {
          "path_match": "ipfix.ntop_dicom_institution_address",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_station_name": {
          "path_match": "ipfix.ntop_dicom_station_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_device_serial": {
          "path_match": "ipfix.ntop_dicom_device_serial",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_sw_version": {
          "path_match": "ipfix.ntop_dicom_sw_version",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_ja3c_hash": {
          "path_match": "ipfix.ntop_dicom_ja3c_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_ja3s_hash": {
          "path_match": "ipfix.ntop_dicom_ja3s_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_src_host_name": {
          "path_match": "ipfix.ntop_dicom_src_host_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_dicom_dst_host_name": {
          "path_match": "ipfix.ntop_dicom_dst_host_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_ssl_cipher": {
          "path_match": "ipfix.ntop_ssl_cipher",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_ssl_unsafe_cipher": {
          "path_match": "ipfix.ntop_ssl_unsafe_cipher",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_ssl_version": {
          "path_match": "ipfix.ntop_ssl_version",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ntop_protocol_map": {
          "path_match": "ipfix.ntop_protocol_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_l4_src_port_map": {
          "path_match": "ipfix.ntop_l4_src_port_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_l4_dst_port_map": {
          "path_match": "ipfix.ntop_l4_dst_port_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_l4_server_port": {
          "path_match": "ipfix.ntop_l4_server_port",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ntop_l4_server_port_map": {
          "path_match": "ipfix.ntop_l4_server_port_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "ipfix.pan_app": {
          "path_match": "ipfix.pan_app",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.pan_user": {
          "path_match": "ipfix.pan_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },     



      {
        "ipfix.plixer_client_ipv4_addr": {
          "path_match": "ipfix.plixer_client_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.plixer_client_hostname": {
          "path_match": "ipfix.plixer_client_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.plixer_partner": {
          "path_match": "ipfix.plixer_partner",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.plixer_server_hostname": {
          "path_match": "ipfix.plixer_server_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.plixer_server_ipv4_addr": {
          "path_match": "ipfix.plixer_server_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.plixer_recipient_addr": {
          "path_match": "ipfix.plixer_recipient_addr",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.plixer_event_id": {
          "path_match": "ipfix.plixer_event_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.plixer_msg_id": {
          "path_match": "ipfix.plixer_msg_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.plixer_priority": {
          "path_match": "ipfix.plixer_priority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.plixer_recipient_report_status": {
          "path_match": "ipfix.plixer_recipient_report_status",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.plixer_recipients": {
          "path_match": "ipfix.plixer_recipients",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.plixer_origination_time": {
          "path_match": "ipfix.plixer_origination_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.plixer_encryption": {
          "path_match": "ipfix.plixer_encryption",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.plixer_service_ver": {
          "path_match": "ipfix.plixer_service_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.plixer_linked_msg_id": {
          "path_match": "ipfix.plixer_linked_msg_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.plixer_msg_subject": {
          "path_match": "ipfix.plixer_msg_subject",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.plixer_sender_addr": {
          "path_match": "ipfix.plixer_sender_addr",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.plixer_date_time": {
          "path_match": "ipfix.plixer_date_time",
          "mapping": {
            "type": "long"
          }
        }
      },



      {
        "ipfix.pluribus_latency_usec": {
          "path_match": "ipfix.pluribus_latency_usec",
          "mapping": {
            "type": "long"
          }
        }
      },
      
      
      
      {
        "ipfix.pmacct_tag1": {
          "path_match": "ipfix.pmacct_tag1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.pmacct_tag2": {
          "path_match": "ipfix.pmacct_tag2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.pmacct_tag3": {
          "path_match": "ipfix.pmacct_tag3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.pmacct_tag4": {
          "path_match": "ipfix.pmacct_tag4",
          "mapping": {
            "type": "long"
          }
        }
      },



      {
        "ipfix.procera_service": {
          "path_match": "ipfix.procera_service",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_base_service": {
          "path_match": "ipfix.procera_base_service",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_in_bytes": {
          "path_match": "ipfix.procera_in_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_bytes": {
          "path_match": "ipfix.procera_out_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_in_packets": {
          "path_match": "ipfix.procera_in_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_packets": {
          "path_match": "ipfix.procera_out_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_in_shaping_latency": {
          "path_match": "ipfix.procera_in_shaping_latency",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_shaping_latency": {
          "path_match": "ipfix.procera_out_shaping_latency",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_in_shaping_drops": {
          "path_match": "ipfix.procera_in_shaping_drops",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_shaping_drops": {
          "path_match": "ipfix.procera_out_shaping_drops",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_int_rtt": {
          "path_match": "ipfix.procera_int_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_ext_rtt": {
          "path_match": "ipfix.procera_ext_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_flow_behavior": {
          "path_match": "ipfix.procera_flow_behavior",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_content_cat": {
          "path_match": "ipfix.procera_content_cat",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_property": {
          "path_match": "ipfix.procera_property",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_server_hostname": {
          "path_match": "ipfix.procera_server_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_http_req_method": {
          "path_match": "ipfix.procera_http_req_method",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_http_user_agent": {
          "path_match": "ipfix.procera_http_user_agent",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_http_content_type": {
          "path_match": "ipfix.procera_http_content_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_http_url": {
          "path_match": "ipfix.procera_http_url",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_http_referrer": {
          "path_match": "ipfix.procera_http_referrer",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_http_resp_status": {
          "path_match": "ipfix.procera_http_resp_status",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_http_file_len": {
          "path_match": "ipfix.procera_http_file_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_http_location": {
          "path_match": "ipfix.procera_http_location",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_http_lang": {
          "path_match": "ipfix.procera_http_lang",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_subscriber": {
          "path_match": "ipfix.procera_subscriber",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_msisdn": {
          "path_match": "ipfix.procera_msisdn",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_imsi": {
          "path_match": "ipfix.procera_imsi",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_rat": {
          "path_match": "ipfix.procera_rat",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_device": {
          "path_match": "ipfix.procera_device",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_sgsn": {
          "path_match": "ipfix.procera_sgsn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_rnc": {
          "path_match": "ipfix.procera_rnc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_apn": {
          "path_match": "ipfix.procera_apn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_user_location_info": {
          "path_match": "ipfix.procera_user_location_info",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_ggsn": {
          "path_match": "ipfix.procera_ggsn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_qoe_in_int": {
          "path_match": "ipfix.procera_qoe_in_int",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.procera_qoe_in_ext": {
          "path_match": "ipfix.procera_qoe_in_ext",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.procera_qoe_out_int": {
          "path_match": "ipfix.procera_qoe_out_int",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.procera_qoe_out_ext": {
          "path_match": "ipfix.procera_qoe_out_ext",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.procera_local_ipv4_host": {
          "path_match": "ipfix.procera_local_ipv4_host",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.procera_local_ipv6_host": {
          "path_match": "ipfix.procera_local_ipv6_host",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.procera_remote_ipv4_host": {
          "path_match": "ipfix.procera_remote_ipv4_host",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.procera_remote_ipv6_host": {
          "path_match": "ipfix.procera_remote_ipv6_host",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.procera_http_req_ver": {
          "path_match": "ipfix.procera_http_req_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_template": {
          "path_match": "ipfix.procera_template",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_in_dscp": {
          "path_match": "ipfix.procera_in_dscp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_dscp": {
          "path_match": "ipfix.procera_out_dscp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_in_dot1q_vlanid_level_1": {
          "path_match": "ipfix.procera_in_dot1q_vlanid_level_1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_in_dot1q_vlanid_level_2": {
          "path_match": "ipfix.procera_in_dot1q_vlanid_level_2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_in_dot1q_vlanid_level_3": {
          "path_match": "ipfix.procera_in_dot1q_vlanid_level_3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_in_dot1q_vlanid_level_4": {
          "path_match": "ipfix.procera_in_dot1q_vlanid_level_4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_dot1q_vlanid_level_1": {
          "path_match": "ipfix.procera_out_dot1q_vlanid_level_1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_dot1q_vlanid_level_2": {
          "path_match": "ipfix.procera_out_dot1q_vlanid_level_2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_dot1q_vlanid_level_3": {
          "path_match": "ipfix.procera_out_dot1q_vlanid_level_3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_dot1q_vlanid_level_4": {
          "path_match": "ipfix.procera_out_dot1q_vlanid_level_4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_in_dot1q_priority_level_1": {
          "path_match": "ipfix.procera_in_dot1q_priority_level_1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_in_dot1q_priority_level_2": {
          "path_match": "ipfix.procera_in_dot1q_priority_level_2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_in_dot1q_priority_level_3": {
          "path_match": "ipfix.procera_in_dot1q_priority_level_3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_in_dot1q_priority_level_4": {
          "path_match": "ipfix.procera_in_dot1q_priority_level_4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_dot1q_priority_level_1": {
          "path_match": "ipfix.procera_out_dot1q_priority_level_1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_dot1q_priority_level_2": {
          "path_match": "ipfix.procera_out_dot1q_priority_level_2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_dot1q_priority_level_3": {
          "path_match": "ipfix.procera_out_dot1q_priority_level_3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_out_dot1q_priority_level_4": {
          "path_match": "ipfix.procera_out_dot1q_priority_level_4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_internal_jitter": {
          "path_match": "ipfix.procera_internal_jitter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.procera_service_object": {
          "path_match": "ipfix.procera_service_object",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.procera_remote_geoip": {
          "path_match": "ipfix.procera_remote_geoip",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "ipfix.redsocks_http_hostname": {
          "path_match": "ipfix.redsocks_http_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "ipfix.sonic_timestamp": {
          "path_match": "ipfix.sonic_timestamp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_flow_id": {
          "path_match": "ipfix.sonic_flow_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_initiator_gw_mac": {
          "path_match": "ipfix.sonic_initiator_gw_mac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_responder_gw_mac": {
          "path_match": "ipfix.sonic_responder_gw_mac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_initiator_ip": {
          "path_match": "ipfix.sonic_initiator_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sonic_responder_ip": {
          "path_match": "ipfix.sonic_responder_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sonic_initiator_gw_ip": {
          "path_match": "ipfix.sonic_initiator_gw_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sonic_responder_gw_ip": {
          "path_match": "ipfix.sonic_responder_gw_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sonic_initiator_iface": {
          "path_match": "ipfix.sonic_initiator_iface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_responder_iface": {
          "path_match": "ipfix.sonic_responder_iface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_initiator_port": {
          "path_match": "ipfix.sonic_initiator_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_responder_port": {
          "path_match": "ipfix.sonic_responder_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_init_to_resp_packets": {
          "path_match": "ipfix.sonic_init_to_resp_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_init_to_resp_bytes": {
          "path_match": "ipfix.sonic_init_to_resp_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_resp_to_init_packets": {
          "path_match": "ipfix.sonic_resp_to_init_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_resp_to_init_bytes": {
          "path_match": "ipfix.sonic_resp_to_init_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_flow_start_time": {
          "path_match": "ipfix.sonic_flow_start_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_flow_end_time": {
          "path_match": "ipfix.sonic_flow_end_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_internal_flags": {
          "path_match": "ipfix.sonic_internal_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_protocol_type": {
          "path_match": "ipfix.sonic_protocol_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_application_id": {
          "path_match": "ipfix.sonic_application_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_ips_id": {
          "path_match": "ipfix.sonic_ips_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_virus_id": {
          "path_match": "ipfix.sonic_virus_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_spyware_id": {
          "path_match": "ipfix.sonic_spyware_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_template_id": {
          "path_match": "ipfix.sonic_template_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_table": {
          "path_match": "ipfix.sonic_table",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_column_id": {
          "path_match": "ipfix.sonic_column_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_column": {
          "path_match": "ipfix.sonic_column",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_column_type": {
          "path_match": "ipfix.sonic_column_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_column_standard_ipfix_id": {
          "path_match": "ipfix.sonic_column_standard_ipfix_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_user_index": {
          "path_match": "ipfix.sonic_user_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_user": {
          "path_match": "ipfix.sonic_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_user_id": {
          "path_match": "ipfix.sonic_user_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_user_domain": {
          "path_match": "ipfix.sonic_user_domain",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_user_auth_type": {
          "path_match": "ipfix.sonic_user_auth_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_app_index": {
          "path_match": "ipfix.sonic_app_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_app_id": {
          "path_match": "ipfix.sonic_app_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_app": {
          "path_match": "ipfix.sonic_app",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_app_cat_id": {
          "path_match": "ipfix.sonic_app_cat_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_app_cat": {
          "path_match": "ipfix.sonic_app_cat",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_app_sig_id": {
          "path_match": "ipfix.sonic_app_sig_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_gav_index": {
          "path_match": "ipfix.sonic_gav_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_gav": {
          "path_match": "ipfix.sonic_gav",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_gav_sig_id": {
          "path_match": "ipfix.sonic_gav_sig_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_ips_index": {
          "path_match": "ipfix.sonic_ips_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_ips": {
          "path_match": "ipfix.sonic_ips",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_ips_cat_id": {
          "path_match": "ipfix.sonic_ips_cat_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_ips_cat": {
          "path_match": "ipfix.sonic_ips_cat",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_ips_sig_id": {
          "path_match": "ipfix.sonic_ips_sig_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_aspy_index": {
          "path_match": "ipfix.sonic_aspy_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_aspy": {
          "path_match": "ipfix.sonic_aspy",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_aspy_prod_id": {
          "path_match": "ipfix.sonic_aspy_prod_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_aspy_prod": {
          "path_match": "ipfix.sonic_aspy_prod",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_aspy_sig_id": {
          "path_match": "ipfix.sonic_aspy_sig_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_url": {
          "path_match": "ipfix.sonic_url",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_url_ip": {
          "path_match": "ipfix.sonic_url_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sonic_rating_index": {
          "path_match": "ipfix.sonic_rating_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_rating": {
          "path_match": "ipfix.sonic_rating",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_region_id": {
          "path_match": "ipfix.sonic_region_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_country_id": {
          "path_match": "ipfix.sonic_country_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_country": {
          "path_match": "ipfix.sonic_country",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_region": {
          "path_match": "ipfix.sonic_region",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_location_ip": {
          "path_match": "ipfix.sonic_location_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sonic_location_region_id": {
          "path_match": "ipfix.sonic_location_region_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_location_domain": {
          "path_match": "ipfix.sonic_location_domain",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_iface": {
          "path_match": "ipfix.sonic_if_stat_iface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_in_packets_rate": {
          "path_match": "ipfix.sonic_if_stat_in_packets_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_out_packets_rate": {
          "path_match": "ipfix.sonic_if_stat_out_packets_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_in_bytes_rate": {
          "path_match": "ipfix.sonic_if_stat_in_bytes_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_out_bytes_rate": {
          "path_match": "ipfix.sonic_if_stat_out_bytes_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_in_packet_size": {
          "path_match": "ipfix.sonic_if_stat_in_packet_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_out_packet_size": {
          "path_match": "ipfix.sonic_if_stat_out_packet_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_conn_rate": {
          "path_match": "ipfix.sonic_if_stat_conn_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_flow_init_bytes_rate": {
          "path_match": "ipfix.sonic_flow_init_bytes_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_flow_resp_bytes_rate": {
          "path_match": "ipfix.sonic_flow_resp_bytes_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_flow_init_packet_rate": {
          "path_match": "ipfix.sonic_flow_init_packet_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_flow_resp_packet_rate": {
          "path_match": "ipfix.sonic_flow_resp_packet_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_flow_init_packet_size": {
          "path_match": "ipfix.sonic_flow_init_packet_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_flow_resp_packet_size": {
          "path_match": "ipfix.sonic_flow_resp_packet_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_if_name": {
          "path_match": "ipfix.sonic_if_stat_if_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_if_type": {
          "path_match": "ipfix.sonic_if_stat_if_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_if_speed": {
          "path_match": "ipfix.sonic_if_stat_if_speed",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_if_state": {
          "path_match": "ipfix.sonic_if_stat_if_state",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_if_mtu": {
          "path_match": "ipfix.sonic_if_stat_if_mtu",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_if_mode": {
          "path_match": "ipfix.sonic_if_stat_if_mode",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_url_flow_id": {
          "path_match": "ipfix.sonic_url_flow_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_url_time_id": {
          "path_match": "ipfix.sonic_url_time_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_core_stat_core_id": {
          "path_match": "ipfix.sonic_core_stat_core_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_core_stat_core_util": {
          "path_match": "ipfix.sonic_core_stat_core_util",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_voip_flow_id": {
          "path_match": "ipfix.sonic_voip_flow_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_voip_time_id": {
          "path_match": "ipfix.sonic_voip_time_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_voip_init_call_id": {
          "path_match": "ipfix.sonic_voip_init_call_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_voip_resp_call_id": {
          "path_match": "ipfix.sonic_voip_resp_call_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_media_type": {
          "path_match": "ipfix.sonic_media_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_media_protocol": {
          "path_match": "ipfix.sonic_media_protocol",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_service": {
          "path_match": "ipfix.sonic_service",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_service_ip_type": {
          "path_match": "ipfix.sonic_service_ip_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_service_port_begin": {
          "path_match": "ipfix.sonic_service_port_begin",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_service_port_end": {
          "path_match": "ipfix.sonic_service_port_end",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_spam_sess_id": {
          "path_match": "ipfix.sonic_spam_sess_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_spam_flow_id": {
          "path_match": "ipfix.sonic_spam_flow_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_spam_time_id": {
          "path_match": "ipfix.sonic_spam_time_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_spam_spammer": {
          "path_match": "ipfix.sonic_spam_spammer",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_spam_type": {
          "path_match": "ipfix.sonic_spam_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_spam_to_email": {
          "path_match": "ipfix.sonic_spam_to_email",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_spam_from_email": {
          "path_match": "ipfix.sonic_spam_from_email",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_mem_total_ram": {
          "path_match": "ipfix.sonic_mem_total_ram",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_mem_avail_ram": {
          "path_match": "ipfix.sonic_mem_avail_ram",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_mem_used_ram": {
          "path_match": "ipfix.sonic_mem_used_ram",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_mem_db_ram": {
          "path_match": "ipfix.sonic_mem_db_ram",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_mem_flows": {
          "path_match": "ipfix.sonic_mem_flows",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_mem_per_flow": {
          "path_match": "ipfix.sonic_mem_per_flow",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_dev_iface_id": {
          "path_match": "ipfix.sonic_dev_iface_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_dev_ip": {
          "path_match": "ipfix.sonic_dev_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sonic_dev_mac": {
          "path_match": "ipfix.sonic_dev_mac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_dev_name": {
          "path_match": "ipfix.sonic_dev_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_vpn_in_spi_id": {
          "path_match": "ipfix.sonic_vpn_in_spi_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_vpn_out_spi_id": {
          "path_match": "ipfix.sonic_vpn_out_spi_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_vpn_tunnel": {
          "path_match": "ipfix.sonic_vpn_tunnel",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_vpn_local_gw": {
          "path_match": "ipfix.sonic_vpn_local_gw",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sonic_vpn_remote_gw": {
          "path_match": "ipfix.sonic_vpn_remote_gw",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sonic_vpn_tunnel_iface_id": {
          "path_match": "ipfix.sonic_vpn_tunnel_iface_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_vpn_policy_type": {
          "path_match": "ipfix.sonic_vpn_policy_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_vpn_protocol_type": {
          "path_match": "ipfix.sonic_vpn_protocol_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_vpn_encrypt_type": {
          "path_match": "ipfix.sonic_vpn_encrypt_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_vpn_auth_type": {
          "path_match": "ipfix.sonic_vpn_auth_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_vpn_start_time": {
          "path_match": "ipfix.sonic_vpn_start_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_vpn_end_time": {
          "path_match": "ipfix.sonic_vpn_end_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_init_vpn_spi_out": {
          "path_match": "ipfix.sonic_init_vpn_spi_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_resp_vpn_spi_out": {
          "path_match": "ipfix.sonic_resp_vpn_spi_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_init_to_resp_delta_packets": {
          "path_match": "ipfix.sonic_init_to_resp_delta_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_init_to_resp_delta_bytes": {
          "path_match": "ipfix.sonic_init_to_resp_delta_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_resp_to_init_delta_packets": {
          "path_match": "ipfix.sonic_resp_to_init_delta_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_resp_to_init_delta_bytes": {
          "path_match": "ipfix.sonic_resp_to_init_delta_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_flow_block_reason": {
          "path_match": "ipfix.sonic_flow_block_reason",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_mac": {
          "path_match": "ipfix.sonic_if_stat_mac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_ip": {
          "path_match": "ipfix.sonic_if_stat_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_security_type": {
          "path_match": "ipfix.sonic_if_stat_security_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_if_stat_zone": {
          "path_match": "ipfix.sonic_if_stat_zone",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_user_ip": {
          "path_match": "ipfix.sonic_user_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.sonic_url_rating_val1": {
          "path_match": "ipfix.sonic_url_rating_val1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_url_rating_val2": {
          "path_match": "ipfix.sonic_url_rating_val2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_url_rating_val3": {
          "path_match": "ipfix.sonic_url_rating_val3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_url_rating_val4": {
          "path_match": "ipfix.sonic_url_rating_val4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_app_bwm_attr": {
          "path_match": "ipfix.sonic_app_bwm_attr",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_voip_init_to_resp_lost_packets": {
          "path_match": "ipfix.sonic_voip_init_to_resp_lost_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_voip_resp_to_init_lost_packets": {
          "path_match": "ipfix.sonic_voip_resp_to_init_lost_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_voip_init_to_resp_avg_latency": {
          "path_match": "ipfix.sonic_voip_init_to_resp_avg_latency",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_voip_init_to_resp_max_latency": {
          "path_match": "ipfix.sonic_voip_init_to_resp_max_latency",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_voip_resp_to_init_avg_latency": {
          "path_match": "ipfix.sonic_voip_resp_to_init_avg_latency",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_voip_resp_to_init_max_latency": {
          "path_match": "ipfix.sonic_voip_resp_to_init_max_latency",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_app_content_type": {
          "path_match": "ipfix.sonic_app_content_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_snwl_option": {
          "path_match": "ipfix.sonic_snwl_option",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_app_risk_attr": {
          "path_match": "ipfix.sonic_app_risk_attr",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_app_tech_attr": {
          "path_match": "ipfix.sonic_app_tech_attr",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_app_attr_bit_mask": {
          "path_match": "ipfix.sonic_app_attr_bit_mask",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_top_apps_sigid": {
          "path_match": "ipfix.sonic_top_apps_sigid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sonic_top_apps_appname": {
          "path_match": "ipfix.sonic_top_apps_appname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sonic_top_apps_rate": {
          "path_match": "ipfix.sonic_top_apps_rate",
          "mapping": {
            "type": "long"
          }
        }
      },



      {
        "ipfix.sophos_afc_proto": {
          "path_match": "ipfix.sophos_afc_proto",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.sophos_afc_proto_name": {
          "path_match": "ipfix.sophos_afc_proto_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.sophos_flow_direction": {
          "path_match": "ipfix.sophos_flow_direction",
          "mapping": {
            "type": "long"
          }
        }
      },



      {
        "ipfix.velocloud_interface_type": {
          "path_match": "ipfix.velocloud_interface_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_dst_id": {
          "path_match": "ipfix.velocloud_dst_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.velocloud_vc_priority": {
          "path_match": "ipfix.velocloud_vc_priority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_policy_route_type": {
          "path_match": "ipfix.velocloud_policy_route_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_policy_link_select_type": {
          "path_match": "ipfix.velocloud_policy_link_select_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_policy_traffic_type": {
          "path_match": "ipfix.velocloud_policy_traffic_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_flow_path": {
          "path_match": "ipfix.velocloud_flow_path",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_internal_link_id": {
          "path_match": "ipfix.velocloud_internal_link_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.velocloud_replicated_pkts_in": {
          "path_match": "ipfix.velocloud_replicated_pkts_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_replicated_pkts_out": {
          "path_match": "ipfix.velocloud_replicated_pkts_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_pkts_lost_in": {
          "path_match": "ipfix.velocloud_pkts_lost_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_pkts_retransmitted": {
          "path_match": "ipfix.velocloud_pkts_retransmitted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_primary_ipv4": {
          "path_match": "ipfix.velocloud_primary_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.velocloud_jitter_ms_out": {
          "path_match": "ipfix.velocloud_jitter_ms_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_latency_ms_out": {
          "path_match": "ipfix.velocloud_latency_ms_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_jitter_ms_in": {
          "path_match": "ipfix.velocloud_jitter_ms_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_latency_ms_in": {
          "path_match": "ipfix.velocloud_latency_ms_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_site_id": {
          "path_match": "ipfix.velocloud_site_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.velocloud_link_name": {
          "path_match": "ipfix.velocloud_link_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.velocloud_pkts_lost_out": {
          "path_match": "ipfix.velocloud_pkts_lost_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.velocloud_biz_pol_rule_id": {
          "path_match": "ipfix.velocloud_biz_pol_rule_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.velocloud_firewall_policy_rule_id": {
          "path_match": "ipfix.velocloud_firewall_policy_rule_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.velocloud_route_next_hop_id": {
          "path_match": "ipfix.velocloud_route_next_hop_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.velocloud_loss_percent_out": {
          "path_match": "ipfix.velocloud_loss_percent_out",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "ipfix.velocloud_loss_percent_in": {
          "path_match": "ipfix.velocloud_loss_percent_in",
          "mapping": {
            "type": "float"
          }
        }
      },



      {
        "ipfix.viptela_vpn_id": {
          "path_match": "ipfix.viptela_vpn_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.viptela_unk_4322": {
          "path_match": "ipfix.viptela_unk_4322",
          "mapping": {
            "type": "long"
          }
        }
      },
      
      
      
      {
        "ipfix.vmware_tenant_proto": {
          "path_match": "ipfix.vmware_tenant_proto",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.vmware_tenant_src_ipv4": {
          "path_match": "ipfix.vmware_tenant_src_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.vmware_tenant_dst_ipv4": {
          "path_match": "ipfix.vmware_tenant_dst_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.vmware_tenant_src_ipv6": {
          "path_match": "ipfix.vmware_tenant_src_ipv6",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.vmware_tenant_dst_ipv6": {
          "path_match": "ipfix.vmware_tenant_dst_ipv6",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.vmware_tenant_src_port": {
          "path_match": "ipfix.vmware_tenant_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.vmware_tenant_dst_port": {
          "path_match": "ipfix.vmware_tenant_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.vmware_egress_iface_attr": {
          "path_match": "ipfix.vmware_egress_iface_attr",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.vmware_vxlan_export_role": {
          "path_match": "ipfix.vmware_vxlan_export_role",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.vmware_ingress_iface_attr": {
          "path_match": "ipfix.vmware_ingress_iface_attr",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.vmware_tunnel_type": {
          "path_match": "ipfix.vmware_tunnel_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.vmware_tunnel_key": {
          "path_match": "ipfix.vmware_tunnel_key",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.vmware_tunnel_src_ipv4_addr": {
          "path_match": "ipfix.vmware_tunnel_src_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.vmware_tunnel_dst_ipv4_addr": {
          "path_match": "ipfix.vmware_tunnel_dst_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "ipfix.vmware_tunnel_protocol_id": {
          "path_match": "ipfix.vmware_tunnel_protocol_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.vmware_tunnel_src_transport_port": {
          "path_match": "ipfix.vmware_tunnel_src_transport_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.vmware_tunnel_dst_transport_port": {
          "path_match": "ipfix.vmware_tunnel_dst_transport_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.vmware_virt_observation_id": {
          "path_match": "ipfix.vmware_virt_observation_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "ipfix.ziften_inbound": {
          "path_match": "ipfix.ziften_inbound",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ziften_pid": {
          "path_match": "ipfix.ziften_pid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ziften_parent_pid": {
          "path_match": "ipfix.ziften_parent_pid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ziften_image_path": {
          "path_match": "ipfix.ziften_image_path",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_filename": {
          "path_match": "ipfix.ziften_filename",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_platform": {
          "path_match": "ipfix.ziften_platform",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_agent_guid": {
          "path_match": "ipfix.ziften_agent_guid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_hostname": {
          "path_match": "ipfix.ziften_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_unk_269": {
          "path_match": "ipfix.ziften_unk_269",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_file_sig": {
          "path_match": "ipfix.ziften_file_sig",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_file_sig_algo": {
          "path_match": "ipfix.ziften_file_sig_algo",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_file_sig_algo_char": {
          "path_match": "ipfix.ziften_file_sig_algo_char",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_user_sid": {
          "path_match": "ipfix.ziften_user_sid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_parent_image_path": {
          "path_match": "ipfix.ziften_parent_image_path",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_parent_file_sig": {
          "path_match": "ipfix.ziften_parent_file_sig",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "ipfix.ziften_acct_id": {
          "path_match": "ipfix.ziften_acct_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ziften_mod_time_secs": {
          "path_match": "ipfix.ziften_mod_time_secs",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "ipfix.ziften_command": {
          "path_match": "ipfix.ziften_command",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "netflow.absoluteError": {
          "path_match": "netflow.absoluteError",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "netflow.anonymizationFlags": {
          "path_match": "netflow.anonymizationFlags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.anonymizationTechnique": {
          "path_match": "netflow.anonymizationTechnique",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.app_id": {
          "path_match": "netflow.app_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.application_description": {
          "path_match": "netflow.application_description",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.application_id": {
          "path_match": "netflow.application_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.application_name": {
          "path_match": "netflow.application_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.applicationCategoryName": {
          "path_match": "netflow.applicationCategoryName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.applicationGroupName": {
          "path_match": "netflow.applicationGroupName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.applicationSubCategoryName": {
          "path_match": "netflow.applicationSubCategoryName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.bgp_ipv4_next_hop": {
          "path_match": "netflow.bgp_ipv4_next_hop",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.bgp_ipv6_next_hop": {
          "path_match": "netflow.bgp_ipv6_next_hop",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.bgpNextAdjacentAsNumber": {
          "path_match": "netflow.bgpNextAdjacentAsNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.bgpPrevAdjacentAsNumber": {
          "path_match": "netflow.bgpPrevAdjacentAsNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.bgpValidityState": {
          "path_match": "netflow.bgpValidityState",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.biflowDirection": {
          "path_match": "netflow.biflowDirection",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.collectorCertificate": {
          "path_match": "netflow.collectorCertificate",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.collectorIPv4Address": {
          "path_match": "netflow.collectorIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.collectorIPv6Address": {
          "path_match": "netflow.collectorIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.collectionTimeMilliseconds": {
          "path_match": "netflow.collectionTimeMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.collectorTransportPort": {
          "path_match": "netflow.collectorTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.commonPropertiesId": {
          "path_match": "netflow.commonPropertiesId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.confidenceLevel": {
          "path_match": "netflow.confidenceLevel",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "netflow.conn_id": {
          "path_match": "netflow.conn_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.connectionSumDurationSeconds": {
          "path_match": "netflow.connectionSumDurationSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.connectionTransactionId": {
          "path_match": "netflow.connectionTransactionId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dataLinkFrameSection": {
          "path_match": "netflow.dataLinkFrameSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.dataLinkFrameSize": {
          "path_match": "netflow.dataLinkFrameSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dataLinkFrameType": {
          "path_match": "netflow.dataLinkFrameType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dataRecordsReliability": {
          "path_match": "netflow.dataRecordsReliability",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.destinationIPv6Prefix": {
          "path_match": "netflow.destinationIPv6Prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.digestHashValue": {
          "path_match": "netflow.digestHashValue",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.direction": {
          "path_match": "netflow.direction",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.distinctCountOfDestinationIPAddress": {
          "path_match": "netflow.distinctCountOfDestinationIPAddress",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.distinctCountOfDestinationIPv4Address": {
          "path_match": "netflow.distinctCountOfDestinationIPv4Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.distinctCountOfDestinationIPv6Address": {
          "path_match": "netflow.distinctCountOfDestinationIPv6Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.distinctCountOfSourceIPAddress": {
          "path_match": "netflow.distinctCountOfSourceIPAddress",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.distinctCountOfSourceIPv4Address": {
          "path_match": "netflow.distinctCountOfSourceIPv4Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.distinctCountOfSourceIPv6Address": {
          "path_match": "netflow.distinctCountOfSourceIPv6Address",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dot1qCustomerDEI": {
          "path_match": "netflow.dot1qCustomerDEI",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dot1qCustomerDestinationMacAddress": {
          "path_match": "netflow.dot1qCustomerDestinationMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.dot1qCustomerPriority": {
          "path_match": "netflow.dot1qCustomerPriority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dot1qCustomerSourceMacAddress": {
          "path_match": "netflow.dot1qCustomerSourceMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.dot1qCustomerVlanId": {
          "path_match": "netflow.dot1qCustomerVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dot1qDEI": {
          "path_match": "netflow.dot1qDEI",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dot1qPriority": {
          "path_match": "netflow.dot1qPriority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dot1qServiceInstanceId": {
          "path_match": "netflow.dot1qServiceInstanceId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dot1qServiceInstancePriority": {
          "path_match": "netflow.dot1qServiceInstancePriority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dot1qServiceInstanceTag": {
          "path_match": "netflow.dot1qServiceInstanceTag",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.dot1qVlanId": {
          "path_match": "netflow.dot1qVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.droppedLayer2OctetDeltaCount": {
          "path_match": "netflow.droppedLayer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.droppedLayer2OctetTotalCount": {
          "path_match": "netflow.droppedLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.droppedOctetDeltaCount": {
          "path_match": "netflow.droppedOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.droppedOctetTotalCount": {
          "path_match": "netflow.droppedOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.droppedPacketDeltaCount": {
          "path_match": "netflow.droppedPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.droppedPacketTotalCount": {
          "path_match": "netflow.droppedPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dst_as": {
          "path_match": "netflow.dst_as",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dst_mask": {
          "path_match": "netflow.dst_mask",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dst_tos": {
          "path_match": "netflow.dst_tos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.dst_vlan": {
          "path_match": "netflow.dst_vlan",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.egressBroadcastPacketTotalCount": {
          "path_match": "netflow.egressBroadcastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.egressInterfaceType": {
          "path_match": "netflow.egressInterfaceType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.egressPhysicalInterface": {
          "path_match": "netflow.egressPhysicalInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.egressUnicastPacketTotalCount": {
          "path_match": "netflow.egressUnicastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.egressVRFID": {
          "path_match": "netflow.egressVRFID",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.encryptedTechnology": {
          "path_match": "netflow.encryptedTechnology",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.engine_id": {
          "path_match": "netflow.engine_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.engine_type": {
          "path_match": "netflow.engine_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ethernetHeaderLength": {
          "path_match": "netflow.ethernetHeaderLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ethernetPayloadLength": {
          "path_match": "netflow.ethernetPayloadLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ethernetTotalLength": {
          "path_match": "netflow.ethernetTotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ethernetType": {
          "path_match": "netflow.ethernetType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.event_time_msec": {
          "path_match": "netflow.event_time_msec",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "netflow.exporterCertificate": {
          "path_match": "netflow.exporterCertificate",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.exporterIPv4Address": {
          "path_match": "netflow.exporterIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.exporterIPv6Address": {
          "path_match": "netflow.exporterIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.exporterTransportPort": {
          "path_match": "netflow.exporterTransportPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.exportingProcessId": {
          "path_match": "netflow.exportingProcessId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.exportInterface": {
          "path_match": "netflow.exportInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.exportProtocolVersion": {
          "path_match": "netflow.exportProtocolVersion",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.exportSctpStreamId": {
          "path_match": "netflow.exportSctpStreamId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.exportTransportProtocol": {
          "path_match": "netflow.exportTransportProtocol",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.first_switched": {
          "path_match": "netflow.first_switched",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "netflow.flow_active_timeout": {
          "path_match": "netflow.flow_active_timeout",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flow_end_msec": {
          "path_match": "netflow.flow_end_msec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flow_end_reason": {
          "path_match": "netflow.flow_end_reason",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flow_inactive_timeout": {
          "path_match": "netflow.flow_inactive_timeout",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flow_records": {
          "path_match": "netflow.flow_records",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flow_sampler_id": {
          "path_match": "netflow.flow_sampler_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flow_sampler_mode": {
          "path_match": "netflow.flow_sampler_mode",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flow_sampler_random_interval": {
          "path_match": "netflow.flow_sampler_random_interval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flow_seq_num": {
          "path_match": "netflow.flow_seq_num",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flow_start_msec": {
          "path_match": "netflow.flow_start_msec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowDurationMicroseconds": {
          "path_match": "netflow.flowDurationMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowDurationMilliseconds": {
          "path_match": "netflow.flowDurationMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowEndDeltaMicroseconds": {
          "path_match": "netflow.flowEndDeltaMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowEndMicroseconds": {
          "path_match": "netflow.flowEndMicroseconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "netflow.flowEndNanoseconds": {
          "path_match": "netflow.flowEndNanoseconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "netflow.flowEndSeconds": {
          "path_match": "netflow.flowEndSeconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "netflow.flowKeyIndicator": {
          "path_match": "netflow.flowKeyIndicator",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flows": {
          "path_match": "netflow.flows",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowSamplingTimeInterval": {
          "path_match": "netflow.flowSamplingTimeInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowSamplingTimeSpacing": {
          "path_match": "netflow.flowSamplingTimeSpacing",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowSelectedFlowDeltaCount": {
          "path_match": "netflow.flowSelectedFlowDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowSelectedOctetDeltaCount": {
          "path_match": "netflow.flowSelectedOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowSelectedPacketDeltaCount": {
          "path_match": "netflow.flowSelectedPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowSelectorAlgorithm": {
          "path_match": "netflow.flowSelectorAlgorithm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowset_id": {
          "path_match": "netflow.flowset_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowStartDeltaMicroseconds": {
          "path_match": "netflow.flowStartDeltaMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.flowStartMicroseconds": {
          "path_match": "netflow.flowStartMicroseconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "netflow.flowStartNanoseconds": {
          "path_match": "netflow.flowStartNanoseconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "netflow.flowStartSeconds": {
          "path_match": "netflow.flowStartSeconds",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "netflow.forwarding_status.reason": {
          "path_match": "netflow.forwarding_status.reason",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.forwarding_status.status": {
          "path_match": "netflow.forwarding_status.status",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.fragmentFlags": {
          "path_match": "netflow.fragmentFlags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.fw_event": {
          "path_match": "netflow.fw_event",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.fw_ext_event": {
          "path_match": "netflow.fw_ext_event",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.greKey": {
          "path_match": "netflow.greKey",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.hashDigestOutput": {
          "path_match": "netflow.hashDigestOutput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.hashFlowDomain": {
          "path_match": "netflow.hashFlowDomain",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.hashInitialiserValue": {
          "path_match": "netflow.hashInitialiserValue",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.hashIPPayloadOffset": {
          "path_match": "netflow.hashIPPayloadOffset",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.hashIPPayloadSize": {
          "path_match": "netflow.hashIPPayloadSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.hashOutputRangeMax": {
          "path_match": "netflow.hashOutputRangeMax",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.hashOutputRangeMin": {
          "path_match": "netflow.hashOutputRangeMin",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.hashSelectedRangeMax": {
          "path_match": "netflow.hashSelectedRangeMax",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.hashSelectedRangeMin": {
          "path_match": "netflow.hashSelectedRangeMin",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.icmp_code_ipv4": {
          "path_match": "netflow.icmp_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.icmp_code_ipv6": {
          "path_match": "netflow.icmp_code_ipv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.icmp_type": {
          "path_match": "netflow.icmp_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.icmp_type_ipv4": {
          "path_match": "netflow.icmp_type_ipv4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.icmp_type_ipv6": {
          "path_match": "netflow.icmp_type_ipv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.icmpTypeCodeIPv6": {
          "path_match": "netflow.icmpTypeCodeIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.if_desc": {
          "path_match": "netflow.if_desc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.if_name": {
          "path_match": "netflow.if_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ignoredDataRecordTotalCount": {
          "path_match": "netflow.ignoredDataRecordTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ignoredLayer2FrameTotalCount": {
          "path_match": "netflow.ignoredLayer2FrameTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ignoredLayer2OctetTotalCount": {
          "path_match": "netflow.ignoredLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ignoredOctetTotalCount": {
          "path_match": "netflow.ignoredOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ignoredPacketTotalCount": {
          "path_match": "netflow.ignoredPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.in_bytes": {
          "path_match": "netflow.in_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.in_dst_mac": {
          "path_match": "netflow.in_dst_mac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.in_permanent_bytes": {
          "path_match": "netflow.in_permanent_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.in_permanent_pkts": {
          "path_match": "netflow.in_permanent_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.in_pkts": {
          "path_match": "netflow.in_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.in_src_mac": {
          "path_match": "netflow.in_src_mac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.informationElementDataType": {
          "path_match": "netflow.informationElementDataType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.informationElementDescription": {
          "path_match": "netflow.informationElementDescription",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.informationElementId": {
          "path_match": "netflow.informationElementId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.informationElementIndex": {
          "path_match": "netflow.informationElementIndex",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.informationElementName": {
          "path_match": "netflow.informationElementName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.informationElementRangeBegin": {
          "path_match": "netflow.informationElementRangeBegin",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.informationElementRangeEnd": {
          "path_match": "netflow.informationElementRangeEnd",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.informationElementSemantics": {
          "path_match": "netflow.informationElementSemantics",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.informationElementUnits": {
          "path_match": "netflow.informationElementUnits",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ingressBroadcastPacketTotalCount": {
          "path_match": "netflow.ingressBroadcastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ingressInterfaceType": {
          "path_match": "netflow.ingressInterfaceType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ingressMulticastPacketTotalCount": {
          "path_match": "netflow.ingressMulticastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ingressPhysicalInterface": {
          "path_match": "netflow.ingressPhysicalInterface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ingressUnicastPacketTotalCount": {
          "path_match": "netflow.ingressUnicastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ingressVRFID": {
          "path_match": "netflow.ingressVRFID",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.initiatorPackets": {
          "path_match": "netflow.initiatorPackets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.input_snmp": {
          "path_match": "netflow.input_snmp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.intermediateProcessId": {
          "path_match": "netflow.intermediateProcessId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ip_dscp": {
          "path_match": "netflow.ip_dscp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ip_protocol_version": {
          "path_match": "netflow.ip_protocol_version",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ip_tos": {
          "path_match": "netflow.ip_tos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipHeaderLength": {
          "path_match": "netflow.ipHeaderLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipHeaderPacketSection": {
          "path_match": "netflow.ipHeaderPacketSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ipPayloadLength": {
          "path_match": "netflow.ipPayloadLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipPayloadPacketSection": {
          "path_match": "netflow.ipPayloadPacketSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ipPrecedence": {
          "path_match": "netflow.ipPrecedence",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.IPSecSPI": {
          "path_match": "netflow.IPSecSPI",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipTotalLength": {
          "path_match": "netflow.ipTotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipTTL": {
          "path_match": "netflow.ipTTL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipv4_dst_addr": {
          "path_match": "netflow.ipv4_dst_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ipv4_dst_prefix": {
          "path_match": "netflow.ipv4_dst_prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ipv4_ident": {
          "path_match": "netflow.ipv4_ident",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipv4_next_hop": {
          "path_match": "netflow.ipv4_next_hop",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ipv4_src_addr": {
          "path_match": "netflow.ipv4_src_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ipv4_src_prefix": {
          "path_match": "netflow.ipv4_src_prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ipv4IHL": {
          "path_match": "netflow.ipv4IHL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipv4Options": {
          "path_match": "netflow.ipv4Options",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipv6_dst_addr": {
          "path_match": "netflow.ipv6_dst_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ipv6_dst_mask": {
          "path_match": "netflow.ipv6_dst_mask",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipv6_flow_label": {
          "path_match": "netflow.ipv6_flow_label",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipv6_next_hop": {
          "path_match": "netflow.ipv6_next_hop",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ipv6_option_headers": {
          "path_match": "netflow.ipv6_option_headers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ipv6_src_addr": {
          "path_match": "netflow.ipv6_src_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ipv6_src_mask": {
          "path_match": "netflow.ipv6_src_mask",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.isMulticast": {
          "path_match": "netflow.isMulticast",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.l4_dst_port": {
          "path_match": "netflow.l4_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.l4_src_port": {
          "path_match": "netflow.l4_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.last_switched": {
          "path_match": "netflow.last_switched",
          "mapping": {
            "type": "date"
          }
        }
      },
      {
        "netflow.layer2FrameDeltaCount": {
          "path_match": "netflow.layer2FrameDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.layer2FrameTotalCount": {
          "path_match": "netflow.layer2FrameTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.layer2OctetDeltaCount": {
          "path_match": "netflow.layer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.layer2OctetDeltaSumOfSquares": {
          "path_match": "netflow.layer2OctetDeltaSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.layer2OctetTotalCount": {
          "path_match": "netflow.layer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.layer2OctetTotalSumOfSquares": {
          "path_match": "netflow.layer2OctetTotalSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.layer2SegmentId": {
          "path_match": "netflow.layer2SegmentId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.lineCardId": {
          "path_match": "netflow.lineCardId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.lowerCILimit": {
          "path_match": "netflow.lowerCILimit",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "netflow.max_pkt_length": {
          "path_match": "netflow.max_pkt_length",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.max_ttl": {
          "path_match": "netflow.max_ttl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.maxExportSeconds": {
          "path_match": "netflow.maxExportSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.maxFlowEndMicroseconds": {
          "path_match": "netflow.maxFlowEndMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.maxFlowEndMilliseconds": {
          "path_match": "netflow.maxFlowEndMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.maxFlowEndNanoseconds": {
          "path_match": "netflow.maxFlowEndNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.maxFlowEndSeconds": {
          "path_match": "netflow.maxFlowEndSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.maximumLayer2TotalLength": {
          "path_match": "netflow.maximumLayer2TotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.messageMD5Checksum": {
          "path_match": "netflow.messageMD5Checksum",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.messageScope": {
          "path_match": "netflow.messageScope",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.meteringProcessId": {
          "path_match": "netflow.meteringProcessId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.metroEvcId": {
          "path_match": "netflow.metroEvcId",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.metroEvcType": {
          "path_match": "netflow.metroEvcType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.min_pkt_length": {
          "path_match": "netflow.min_pkt_length",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.min_ttl": {
          "path_match": "netflow.min_ttl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.minExportSeconds": {
          "path_match": "netflow.minExportSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.minFlowStartMicroseconds": {
          "path_match": "netflow.minFlowStartMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.minFlowStartMilliseconds": {
          "path_match": "netflow.minFlowStartMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.minFlowStartNanoseconds": {
          "path_match": "netflow.minFlowStartNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.minFlowStartSeconds": {
          "path_match": "netflow.minFlowStartSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.minimumLayer2TotalLength": {
          "path_match": "netflow.minimumLayer2TotalLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.monitoringIntervalEndMilliSeconds": {
          "path_match": "netflow.monitoringIntervalEndMilliSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.monitoringIntervalStartMilliSeconds": {
          "path_match": "netflow.monitoringIntervalStartMilliSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.mpls_label_stack_octets.bottom_of_stack": {
          "path_match": "netflow.mpls_label_stack_octets.bottom_of_stack",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.mpls_label_stack_octets.experimental": {
          "path_match": "netflow.mpls_label_stack_octets.experimental",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.mpls_label_stack_octets.label": {
          "path_match": "netflow.mpls_label_stack_octets.label",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.mpls_label_stack_octets.ttl": {
          "path_match": "netflow.mpls_label_stack_octets.ttl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.mpls_top_label_ip": {
          "path_match": "netflow.mpls_top_label_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.mpls_top_label_type": {
          "path_match": "netflow.mpls_top_label_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.mplsLabelStackDepth": {
          "path_match": "netflow.mplsLabelStackDepth",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.mplsLabelStackSection": {
          "path_match": "netflow.mplsLabelStackSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.mplsPayloadPacketSection": {
          "path_match": "netflow.mplsPayloadPacketSection",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.mplsTopLabelExp": {
          "path_match": "netflow.mplsTopLabelExp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.mplsTopLabelIPv6Address": {
          "path_match": "netflow.mplsTopLabelIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.mplsTopLabelTTL": {
          "path_match": "netflow.mplsTopLabelTTL",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.mul_dst_bytes": {
          "path_match": "netflow.mul_dst_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.mul_dst_pkts": {
          "path_match": "netflow.mul_dst_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.mul_igmp_type": {
          "path_match": "netflow.mul_igmp_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.natEvent": {
          "path_match": "netflow.natEvent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.natOriginatingAddressRealm": {
          "path_match": "netflow.natOriginatingAddressRealm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.natPoolId": {
          "path_match": "netflow.natPoolId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.natPoolName": {
          "path_match": "netflow.natPoolName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.natType": {
          "path_match": "netflow.natType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.newConnectionDeltaCount": {
          "path_match": "netflow.newConnectionDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.nextHeaderIPv6": {
          "path_match": "netflow.nextHeaderIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.notSentFlowTotalCount": {
          "path_match": "netflow.notSentFlowTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.notSentLayer2OctetTotalCount": {
          "path_match": "netflow.notSentLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.notSentOctetTotalCount": {
          "path_match": "netflow.notSentOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.notSentPacketTotalCount": {
          "path_match": "netflow.notSentPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.nprobe_proto": {
          "path_match": "netflow.nprobe_proto",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.nprobe_proto_name": {
          "path_match": "netflow.nprobe_proto_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.observationDomainId": {
          "path_match": "netflow.observationDomainId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.observationDomainName": {
          "path_match": "netflow.observationDomainName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.observationPointId": {
          "path_match": "netflow.observationPointId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.observationPointType": {
          "path_match": "netflow.observationPointType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.observationTimeMicroseconds": {
          "path_match": "netflow.observationTimeMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.observationTimeNanoseconds": {
          "path_match": "netflow.observationTimeNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.observationTimeSeconds": {
          "path_match": "netflow.observationTimeSeconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.observedFlowTotalCount": {
          "path_match": "netflow.observedFlowTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.octetDeltaSumOfSquares": {
          "path_match": "netflow.octetDeltaSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.octetTotalSumOfSquares": {
          "path_match": "netflow.octetTotalSumOfSquares",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.opaqueOctets": {
          "path_match": "netflow.opaqueOctets",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.originalExporterIPv4Address": {
          "path_match": "netflow.originalExporterIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.originalExporterIPv6Address": {
          "path_match": "netflow.originalExporterIPv6Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.originalFlowsCompleted": {
          "path_match": "netflow.originalFlowsCompleted",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.originalFlowsInitiated": {
          "path_match": "netflow.originalFlowsInitiated",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.originalFlowsPresent": {
          "path_match": "netflow.originalFlowsPresent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.originalObservationDomainId": {
          "path_match": "netflow.originalObservationDomainId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.out_bytes": {
          "path_match": "netflow.out_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.out_dst_mac": {
          "path_match": "netflow.out_dst_mac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.out_pkts": {
          "path_match": "netflow.out_pkts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.out_src_mac": {
          "path_match": "netflow.out_src_mac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.output_snmp": {
          "path_match": "netflow.output_snmp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.p2pTechnology": {
          "path_match": "netflow.p2pTechnology",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.payloadLengthIPv6": {
          "path_match": "netflow.payloadLengthIPv6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.portId": {
          "path_match": "netflow.portId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.portRangeNumPorts": {
          "path_match": "netflow.portRangeNumPorts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.portRangeStepSize": {
          "path_match": "netflow.portRangeStepSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postDot1qCustomerVlanId": {
          "path_match": "netflow.postDot1qCustomerVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postDot1qVlanId": {
          "path_match": "netflow.postDot1qVlanId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postIpDiffServCodePoint": {
          "path_match": "netflow.postIpDiffServCodePoint",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postIpPrecedence": {
          "path_match": "netflow.postIpPrecedence",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postLayer2OctetDeltaCount": {
          "path_match": "netflow.postLayer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postLayer2OctetTotalCount": {
          "path_match": "netflow.postLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postMCastLayer2OctetDeltaCount": {
          "path_match": "netflow.postMCastLayer2OctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postMCastLayer2OctetTotalCount": {
          "path_match": "netflow.postMCastLayer2OctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postMCastPacketTotalCount": {
          "path_match": "netflow.postMCastPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postMCastOctetTotalCount": {
          "path_match": "netflow.postMCastOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postMplsTopLabelExp": {
          "path_match": "netflow.postMplsTopLabelExp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postNATPortBlockEnd": {
          "path_match": "netflow.postNATPortBlockEnd",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postNATPortBlockStart": {
          "path_match": "netflow.postNATPortBlockStart",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postOctetTotalCount": {
          "path_match": "netflow.postOctetTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.postPacketTotalCount": {
          "path_match": "netflow.postPacketTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.privateEnterpriseNumber": {
          "path_match": "netflow.privateEnterpriseNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.protocol": {
          "path_match": "netflow.protocol",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.pseudoWireControlWord": {
          "path_match": "netflow.pseudoWireControlWord",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.pseudoWireDestinationIPv4Address": {
          "path_match": "netflow.pseudoWireDestinationIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.pseudoWireId": {
          "path_match": "netflow.pseudoWireId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.pseudoWireType": {
          "path_match": "netflow.pseudoWireType",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.relativeError": {
          "path_match": "netflow.relativeError",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "netflow.responderPackets": {
          "path_match": "netflow.responderPackets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.rfc3550JitterMicroseconds": {
          "path_match": "netflow.rfc3550JitterMicroseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.rfc3550JitterMilliseconds": {
          "path_match": "netflow.rfc3550JitterMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.rfc3550JitterNanoseconds": {
          "path_match": "netflow.rfc3550JitterNanoseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.rtpSequenceNumber": {
          "path_match": "netflow.rtpSequenceNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.sampler_name": {
          "path_match": "netflow.sampler_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.sampling_algorithm": {
          "path_match": "netflow.sampling_algorithm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.sampling_interval": {
          "path_match": "netflow.sampling_interval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.samplingFlowInterval": {
          "path_match": "netflow.samplingFlowInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.samplingFlowSpacing": {
          "path_match": "netflow.samplingFlowSpacing",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.samplingPacketInterval": {
          "path_match": "netflow.samplingPacketInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.samplingPacketSpace": {
          "path_match": "netflow.samplingPacketSpace",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.samplingPopulation": {
          "path_match": "netflow.samplingPopulation",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.samplingProbability": {
          "path_match": "netflow.samplingProbability",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "netflow.samplingSize": {
          "path_match": "netflow.samplingSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.samplingTimeInterval": {
          "path_match": "netflow.samplingTimeInterval",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.samplingTimeSpace": {
          "path_match": "netflow.samplingTimeSpace",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.scope_system": {
          "path_match": "netflow.scope_system",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.sectionExportedOctets": {
          "path_match": "netflow.sectionExportedOctets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.sectionOffset": {
          "path_match": "netflow.sectionOffset",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.selectionSequenceId": {
          "path_match": "netflow.selectionSequenceId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.selectorAlgorithm": {
          "path_match": "netflow.selectorAlgorithm",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.selectorId": {
          "path_match": "netflow.selectorId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.selectorIDTotalFlowsObserved": {
          "path_match": "netflow.selectorIDTotalFlowsObserved",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.selectorIDTotalFlowsSelected": {
          "path_match": "netflow.selectorIDTotalFlowsSelected",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.selectorIdTotalPktsObserved": {
          "path_match": "netflow.selectorIdTotalPktsObserved",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.selectorIdTotalPktsSelected": {
          "path_match": "netflow.selectorIdTotalPktsSelected",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.selectorName": {
          "path_match": "netflow.selectorName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.sessionScope": {
          "path_match": "netflow.sessionScope",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.sourceIPv6Prefix": {
          "path_match": "netflow.sourceIPv6Prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.src_as": {
          "path_match": "netflow.src_as",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.src_mask": {
          "path_match": "netflow.src_mask",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.src_tos": {
          "path_match": "netflow.src_tos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.src_vlan": {
          "path_match": "netflow.src_vlan",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.staIPv4Address": {
          "path_match": "netflow.staIPv4Address",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.staMacAddress": {
          "path_match": "netflow.staMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.sub_app_tag": {
          "path_match": "netflow.sub_app_tag",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.systemInitTimeMilliseconds": {
          "path_match": "netflow.systemInitTimeMilliseconds",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcp_dst_port": {
          "path_match": "netflow.tcp_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcp_flags": {
          "path_match": "netflow.tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcp_src_port": {
          "path_match": "netflow.tcp_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpAcknowledgementNumber": {
          "path_match": "netflow.tcpAcknowledgementNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpAckTotalCount": {
          "path_match": "netflow.tcpAckTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpDestinationPort": {
          "path_match": "netflow.tcpDestinationPort",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpFinTotalCount": {
          "path_match": "netflow.tcpFinTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpHeaderLength": {
          "path_match": "netflow.tcpHeaderLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpOptions": {
          "path_match": "netflow.tcpOptions",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpPshTotalCount": {
          "path_match": "netflow.tcpPshTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpRstTotalCount": {
          "path_match": "netflow.tcpRstTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpSequenceNumber": {
          "path_match": "netflow.tcpSequenceNumber",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpSynTotalCount": {
          "path_match": "netflow.tcpSynTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpUrgentPointer": {
          "path_match": "netflow.tcpUrgentPointer",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpUrgTotalCount": {
          "path_match": "netflow.tcpUrgTotalCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpWindowScale": {
          "path_match": "netflow.tcpWindowScale",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tcpWindowSize": {
          "path_match": "netflow.tcpWindowSize",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.templateId": {
          "path_match": "netflow.templateId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.total_bytes_exp": {
          "path_match": "netflow.total_bytes_exp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.total_flows_exp": {
          "path_match": "netflow.total_flows_exp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.total_pkts_exp": {
          "path_match": "netflow.total_pkts_exp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.totalLengthIPv4": {
          "path_match": "netflow.totalLengthIPv4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.transportOctetDeltaCount": {
          "path_match": "netflow.transportOctetDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.transportPacketDeltaCount": {
          "path_match": "netflow.transportPacketDeltaCount",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.tunnelTechnology": {
          "path_match": "netflow.tunnelTechnology",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.udp_dst_port": {
          "path_match": "netflow.udp_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.udp_src_port": {
          "path_match": "netflow.udp_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.udpMessageLength": {
          "path_match": "netflow.udpMessageLength",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.upperCILimit": {
          "path_match": "netflow.upperCILimit",
          "mapping": {
            "type": "double"
          }
        }
      },
      {
        "netflow.user_id": {
          "path_match": "netflow.user_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.username": {
          "path_match": "netflow.username",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.userName": {
          "path_match": "netflow.userName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.valueDistributionMethod": {
          "path_match": "netflow.valueDistributionMethod",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.virtualStationInterfaceId": {
          "path_match": "netflow.virtualStationInterfaceId",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.virtualStationInterfaceName": {
          "path_match": "netflow.virtualStationInterfaceName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.virtualStationName": {
          "path_match": "netflow.virtualStationName",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.virtualStationUUID": {
          "path_match": "netflow.virtualStationUUID",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.VRFname": {
          "path_match": "netflow.VRFname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.wlan_id": {
          "path_match": "netflow.wlan_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.wlanChannelId": {
          "path_match": "netflow.wlanChannelId",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.wlanSSID": {
          "path_match": "netflow.wlanSSID",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.wtpMacAddress": {
          "path_match": "netflow.wtpMacAddress",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.xlate_dst_addr_ipv4": {
          "path_match": "netflow.xlate_dst_addr_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.xlate_dst_addr_ipv6": {
          "path_match": "netflow.xlate_dst_addr_ipv6",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.xlate_dst_port": {
          "path_match": "netflow.xlate_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.xlate_src_addr_ipv4": {
          "path_match": "netflow.xlate_src_addr_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.xlate_src_addr_ipv6": {
          "path_match": "netflow.xlate_src_addr_ipv6",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.xlate_src_port": {
          "path_match": "netflow.xlate_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },



      {
        "netflow.cisco_avc_p2p_tech": {
          "path_match": "netflow.cisco_avc_p2p_tech",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_tunnel_tech": {
          "path_match": "netflow.cisco_avc_tunnel_tech",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_encrypt_tech": {
          "path_match": "netflow.cisco_avc_encrypt_tech",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_ipt_dialing_phone": {
          "path_match": "netflow.cisco_ipt_dialing_phone",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_ipt_dialing_user": {
          "path_match": "netflow.cisco_ipt_dialing_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_ipt_dialed_phone": {
          "path_match": "netflow.cisco_ipt_dialed_phone",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_ipt_dialed_user": {
          "path_match": "netflow.cisco_ipt_dialed_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_ipt_call_duration": {
          "path_match": "netflow.cisco_ipt_call_duration",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_ipt_call_end_reason": {
          "path_match": "netflow.cisco_ipt_call_end_reason",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_ipt_calls_dialed": {
          "path_match": "netflow.cisco_ipt_calls_dialed",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_ipt_calls_connected": {
          "path_match": "netflow.cisco_ipt_calls_connected",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_ipt_calls_failed": {
          "path_match": "netflow.cisco_ipt_calls_failed",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_nexus_fastpath_src_addr": {
          "path_match": "netflow.cisco_nexus_fastpath_src_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_nexus_fastpath_src_port": {
          "path_match": "netflow.cisco_nexus_fastpath_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_nexus_fastpath_dst_addr": {
          "path_match": "netflow.cisco_nexus_fastpath_dst_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_nexus_fastpath_dst_port": {
          "path_match": "netflow.cisco_nexus_fastpath_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_endpoint_process_user": {
          "path_match": "netflow.cisco_endpoint_process_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_endpoint_process_name": {
          "path_match": "netflow.cisco_endpoint_process_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_endpoint_process_hash": {
          "path_match": "netflow.cisco_endpoint_process_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_endpoint_process_parent_user": {
          "path_match": "netflow.cisco_endpoint_process_parent_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_endpoint_process_parent_name": {
          "path_match": "netflow.cisco_endpoint_process_parent_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_endpoint_process_parent_hash": {
          "path_match": "netflow.cisco_endpoint_process_parent_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_pfr_policy_id": {
          "path_match": "netflow.cisco_pfr_policy_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_pfr_map_name": {
          "path_match": "netflow.cisco_pfr_map_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_pfr_reason": {
          "path_match": "netflow.cisco_pfr_reason",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_fw_ingress_acl_id": {
          "path_match": "netflow.cisco_fw_ingress_acl_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_fw_egress_acl_id": {
          "path_match": "netflow.cisco_fw_egress_acl_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_fw_ext_event": {
          "path_match": "netflow.cisco_fw_ext_event",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_fw_event_level": {
          "path_match": "netflow.cisco_fw_event_level",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_event_level_id": {
          "path_match": "netflow.cisco_fw_event_level_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_config_value": {
          "path_match": "netflow.cisco_fw_config_value",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_erm_code": {
          "path_match": "netflow.cisco_fw_erm_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_erm_descr": {
          "path_match": "netflow.cisco_fw_erm_descr",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_trustsec_src_id": {
          "path_match": "netflow.cisco_trustsec_src_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_trustsec_dst_id": {
          "path_match": "netflow.cisco_trustsec_dst_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_trustsec_src_name": {
          "path_match": "netflow.cisco_trustsec_src_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_trustsec_dst_name": {
          "path_match": "netflow.cisco_trustsec_dst_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_trustsec_switch_derived_sgt": {
          "path_match": "netflow.cisco_trustsec_switch_derived_sgt",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_fw_blackout_secs": {
          "path_match": "netflow.cisco_fw_blackout_secs",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_half_open_sessions_rate_1min_max": {
          "path_match": "netflow.cisco_fw_half_open_sessions_rate_1min_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_half_open_sessions_rate_1min": {
          "path_match": "netflow.cisco_fw_half_open_sessions_rate_1min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_zonepair_id": {
          "path_match": "netflow.cisco_fw_zonepair_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_sessions_max": {
          "path_match": "netflow.cisco_fw_sessions_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_zonepair": {
          "path_match": "netflow.cisco_fw_zonepair",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_fw_ext_event_descr": {
          "path_match": "netflow.cisco_fw_ext_event_descr",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_fw_drop_pass_summary_packets": {
          "path_match": "netflow.cisco_fw_drop_pass_summary_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_half_open_sessions": {
          "path_match": "netflow.cisco_fw_half_open_sessions",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_waas_dre_input": {
          "path_match": "netflow.cisco_waas_dre_input",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_waas_dre_output": {
          "path_match": "netflow.cisco_waas_dre_output",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_waas_lz_input": {
          "path_match": "netflow.cisco_waas_lz_input",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_waas_lz_output": {
          "path_match": "netflow.cisco_waas_lz_output",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_waas_conn_mode": {
          "path_match": "netflow.cisco_waas_conn_mode",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_waas_input_bytes": {
          "path_match": "netflow.cisco_waas_input_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_waas_output_bytes": {
          "path_match": "netflow.cisco_waas_output_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_short_term_packets_drop": {
          "path_match": "netflow.cisco_avc_transport_short_term_packets_drop",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_long_term_packets_drop": {
          "path_match": "netflow.cisco_avc_transport_long_term_packets_drop",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_media_bytes": {
          "path_match": "netflow.cisco_avc_app_media_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_media_byte_rate": {
          "path_match": "netflow.cisco_avc_app_media_byte_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_media_packets": {
          "path_match": "netflow.cisco_avc_app_media_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_media_packet_rate": {
          "path_match": "netflow.cisco_avc_app_media_packet_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_media_packet_rate_variation": {
          "path_match": "netflow.cisco_avc_app_media_packet_rate_variation",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_media_event": {
          "path_match": "netflow.cisco_avc_app_media_event",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_monitor_event": {
          "path_match": "netflow.cisco_avc_app_monitor_event",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_packets_expected": {
          "path_match": "netflow.cisco_avc_transport_packets_expected",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_rtt": {
          "path_match": "netflow.cisco_avc_transport_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_packet_sets_lost": {
          "path_match": "netflow.cisco_avc_transport_packet_sets_lost",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_short_term_packets_lost": {
          "path_match": "netflow.cisco_avc_transport_short_term_packets_lost",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_long_term_packets_lost": {
          "path_match": "netflow.cisco_avc_transport_long_term_packets_lost",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_packet_loss_rate": {
          "path_match": "netflow.cisco_avc_transport_packet_loss_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_rtp_ssrc": {
          "path_match": "netflow.cisco_avc_transport_rtp_ssrc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_rtp_jitter_mean": {
          "path_match": "netflow.cisco_avc_transport_rtp_jitter_mean",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_rtp_jitter_min": {
          "path_match": "netflow.cisco_avc_transport_rtp_jitter_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_rtp_jitter_max": {
          "path_match": "netflow.cisco_avc_transport_rtp_jitter_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_controlled_tc": {
          "path_match": "netflow.cisco_avc_controlled_tc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_in_policy_tc": {
          "path_match": "netflow.cisco_avc_in_policy_tc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_media_packet_rate_variation_min": {
          "path_match": "netflow.cisco_avc_app_media_packet_rate_variation_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_media_packet_rate_variation_max": {
          "path_match": "netflow.cisco_avc_app_media_packet_rate_variation_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_rtp_flows": {
          "path_match": "netflow.cisco_avc_transport_rtp_flows",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_rtp_payload_type": {
          "path_match": "netflow.cisco_avc_transport_rtp_payload_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_packet_loss_rate_min": {
          "path_match": "netflow.cisco_avc_transport_packet_loss_rate_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_packet_loss_rate_max": {
          "path_match": "netflow.cisco_avc_transport_packet_loss_rate_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_rtt_sum": {
          "path_match": "netflow.cisco_avc_transport_rtt_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_rtt_min": {
          "path_match": "netflow.cisco_avc_transport_rtt_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_rtt_max": {
          "path_match": "netflow.cisco_avc_transport_rtt_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_metadata_global_session_id": {
          "path_match": "netflow.cisco_avc_metadata_global_session_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_metadata_multi_party_session_id": {
          "path_match": "netflow.cisco_avc_metadata_multi_party_session_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_metadata_clock_rate": {
          "path_match": "netflow.cisco_avc_metadata_clock_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_network_delay_avg": {
          "path_match": "netflow.cisco_avc_network_delay_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_one_way_delay": {
          "path_match": "netflow.cisco_avc_one_way_delay",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_tcp_window_size_min": {
          "path_match": "netflow.cisco_avc_tcp_window_size_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_tcp_window_size_max": {
          "path_match": "netflow.cisco_avc_tcp_window_size_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_tcp_max_segment_size": {
          "path_match": "netflow.cisco_avc_tcp_max_segment_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_tcp_window_size_sum": {
          "path_match": "netflow.cisco_avc_tcp_window_size_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_rtp_jitter_interarrival_avg": {
          "path_match": "netflow.cisco_avc_rtp_jitter_interarrival_avg",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_pfr_src_site_id": {
          "path_match": "netflow.cisco_pfr_src_site_id",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_pfr_dst_site_id": {
          "path_match": "netflow.cisco_pfr_dst_site_id",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_avc_transport_byte_loss_rate": {
          "path_match": "netflow.cisco_avc_transport_byte_loss_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_pfr_event_tc_nomitigation_err_bw_count": {
          "path_match": "netflow.cisco_pfr_event_tc_nomitigation_err_bw_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_pfr_event_tc_nomitigation_err_perf_count": {
          "path_match": "netflow.cisco_pfr_event_tc_nomitigation_err_perf_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_pfr_dst_site_prefix": {
          "path_match": "netflow.cisco_pfr_dst_site_prefix",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_pfr_dst_site_prefix_mask": {
          "path_match": "netflow.cisco_pfr_dst_site_prefix_mask",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_pfr_label_id": {
          "path_match": "netflow.cisco_pfr_label_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_pfr_br_addr": {
          "path_match": "netflow.cisco_pfr_br_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_pfr_state": {
          "path_match": "netflow.cisco_pfr_state",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_pfr_reason_id": {
          "path_match": "netflow.cisco_pfr_reason_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_pfr_threshold": {
          "path_match": "netflow.cisco_pfr_threshold",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_pfr_priority": {
          "path_match": "netflow.cisco_pfr_priority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_long_term_rtt": {
          "path_match": "netflow.cisco_avc_long_term_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_mos_below_counts": {
          "path_match": "netflow.cisco_avc_mos_below_counts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_rsvp_bandwidth_pool": {
          "path_match": "netflow.cisco_avc_rsvp_bandwidth_pool",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_rollup_counter": {
          "path_match": "netflow.cisco_avc_rollup_counter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_kth_tier_percent": {
          "path_match": "netflow.cisco_avc_kth_tier_percent",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_kth_bw_fee": {
          "path_match": "netflow.cisco_avc_kth_bw_fee",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_src_port_min": {
          "path_match": "netflow.cisco_avc_src_port_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_src_port_max": {
          "path_match": "netflow.cisco_avc_src_port_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_dst_port_min": {
          "path_match": "netflow.cisco_avc_dst_port_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_dst_port_max": {
          "path_match": "netflow.cisco_avc_dst_port_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_link_capacity": {
          "path_match": "netflow.cisco_avc_link_capacity",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_ingress_bw": {
          "path_match": "netflow.cisco_avc_ingress_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_ingress_bw_max": {
          "path_match": "netflow.cisco_avc_ingress_bw_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_egress_bw": {
          "path_match": "netflow.cisco_avc_egress_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_egress_bw_max": {
          "path_match": "netflow.cisco_avc_egress_bw_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_ingress_rollup_bw": {
          "path_match": "netflow.cisco_avc_ingress_rollup_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_egress_rollup_bw": {
          "path_match": "netflow.cisco_avc_egress_rollup_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_cost_target_bw": {
          "path_match": "netflow.cisco_avc_cost_target_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_kth_rollup_bw": {
          "path_match": "netflow.cisco_avc_kth_rollup_bw",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_link_group_name": {
          "path_match": "netflow.cisco_avc_link_group_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_bgp_community": {
          "path_match": "netflow.cisco_avc_bgp_community",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_avc_bgp_prepend": {
          "path_match": "netflow.cisco_avc_bgp_prepend",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_cost_discard_rollup_count": {
          "path_match": "netflow.cisco_avc_cost_discard_rollup_count",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_user": {
          "path_match": "netflow.cisco_fw_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_fw_xlate_src_addr_ipv4": {
          "path_match": "netflow.cisco_fw_xlate_src_addr_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_fw_xlate_dst_addr_ipv4": {
          "path_match": "netflow.cisco_fw_xlate_dst_addr_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_fw_xlate_src_port": {
          "path_match": "netflow.cisco_fw_xlate_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_xlate_dst_port": {
          "path_match": "netflow.cisco_fw_xlate_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_fw_event": {
          "path_match": "netflow.cisco_fw_event",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_client_long_lived_network_delay_max": {
          "path_match": "netflow.cisco_avc_client_long_lived_network_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_client_long_lived_network_delay_min": {
          "path_match": "netflow.cisco_avc_client_long_lived_network_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_long_lived_network_delay_max": {
          "path_match": "netflow.cisco_avc_server_long_lived_network_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_long_lived_network_delay_min": {
          "path_match": "netflow.cisco_avc_server_long_lived_network_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_policy_qos_class_hierarchy": {
          "path_match": "netflow.cisco_policy_qos_class_hierarchy",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_server_bytes": {
          "path_match": "netflow.cisco_avc_server_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_client_bytes": {
          "path_match": "netflow.cisco_avc_client_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_concurrent_sessions": {
          "path_match": "netflow.cisco_avc_concurrent_sessions",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_waas_segment": {
          "path_match": "netflow.cisco_waas_segment",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_waas_passthru_reason": {
          "path_match": "netflow.cisco_waas_passthru_reason",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_long_lived_network_delay_sum": {
          "path_match": "netflow.cisco_avc_server_long_lived_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_client_long_lived_network_delay_sum": {
          "path_match": "netflow.cisco_avc_client_long_lived_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_total_long_lived_network_delay_sum": {
          "path_match": "netflow.cisco_avc_total_long_lived_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_total_long_lived_network_delay_samples": {
          "path_match": "netflow.cisco_avc_total_long_lived_network_delay_samples",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_long_lived_network_delay_samples": {
          "path_match": "netflow.cisco_avc_server_long_lived_network_delay_samples",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_client_long_lived_network_delay_samples": {
          "path_match": "netflow.cisco_avc_client_long_lived_network_delay_samples",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_client_packets": {
          "path_match": "netflow.cisco_avc_client_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_packets": {
          "path_match": "netflow.cisco_avc_server_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_client_retrans_bytes": {
          "path_match": "netflow.cisco_avc_client_retrans_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_client_retrans_packets": {
          "path_match": "netflow.cisco_avc_client_retrans_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_retrans_bytes": {
          "path_match": "netflow.cisco_avc_server_retrans_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_retrans_packets": {
          "path_match": "netflow.cisco_avc_server_retrans_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transact_time_delta": {
          "path_match": "netflow.cisco_avc_transact_time_delta",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transact_time_total": {
          "path_match": "netflow.cisco_avc_transact_time_total",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transact_time_max": {
          "path_match": "netflow.cisco_avc_transact_time_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_transact_time_min": {
          "path_match": "netflow.cisco_avc_transact_time_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_resps": {
          "path_match": "netflow.cisco_avc_server_resps",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_resp_histogram1": {
          "path_match": "netflow.cisco_avc_resp_histogram1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_resp_histogram2": {
          "path_match": "netflow.cisco_avc_resp_histogram2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_resp_histogram3": {
          "path_match": "netflow.cisco_avc_resp_histogram3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_resp_histogram4": {
          "path_match": "netflow.cisco_avc_resp_histogram4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_resp_histogram5": {
          "path_match": "netflow.cisco_avc_resp_histogram5",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_resp_histogram6": {
          "path_match": "netflow.cisco_avc_resp_histogram6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_resp_histogram7": {
          "path_match": "netflow.cisco_avc_resp_histogram7",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_late_resps": {
          "path_match": "netflow.cisco_avc_server_late_resps",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_resp_time_sum": {
          "path_match": "netflow.cisco_avc_server_resp_time_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_resp_time_max": {
          "path_match": "netflow.cisco_avc_server_resp_time_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_resp_time_min": {
          "path_match": "netflow.cisco_avc_server_resp_time_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_delay_sum": {
          "path_match": "netflow.cisco_avc_app_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_delay_max": {
          "path_match": "netflow.cisco_avc_app_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_delay_min": {
          "path_match": "netflow.cisco_avc_app_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_total_delay_sum": {
          "path_match": "netflow.cisco_avc_total_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_total_delay_max": {
          "path_match": "netflow.cisco_avc_total_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_total_delay_min": {
          "path_match": "netflow.cisco_avc_total_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_total_network_delay_sum": {
          "path_match": "netflow.cisco_avc_total_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_total_network_delay_max": {
          "path_match": "netflow.cisco_avc_total_network_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_total_network_delay_min": {
          "path_match": "netflow.cisco_avc_total_network_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_client_network_delay_sum": {
          "path_match": "netflow.cisco_avc_client_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_client_network_delay_max": {
          "path_match": "netflow.cisco_avc_client_network_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_client_network_delay_min": {
          "path_match": "netflow.cisco_avc_client_network_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_network_delay_sum": {
          "path_match": "netflow.cisco_avc_server_network_delay_sum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_network_delay_max": {
          "path_match": "netflow.cisco_avc_server_network_delay_max",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_network_delay_min": {
          "path_match": "netflow.cisco_avc_server_network_delay_min",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_rtp_short_term_mos": {
          "path_match": "netflow.cisco_avc_rtp_short_term_mos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_rtp_mos": {
          "path_match": "netflow.cisco_avc_rtp_mos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_rtp_mos_total": {
          "path_match": "netflow.cisco_avc_rtp_mos_total",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_http_uri_stats": {
          "path_match": "netflow.cisco_avc_app_http_uri_stats",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_policy_qos_queue_id": {
          "path_match": "netflow.cisco_avc_policy_qos_queue_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_policy_qos_queue_drops": {
          "path_match": "netflow.cisco_avc_policy_qos_queue_drops",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_eta_idp_old": {
          "path_match": "netflow.cisco_eta_idp_old",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_eta_slpt_old": {
          "path_match": "netflow.cisco_eta_slpt_old",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_wlan_id": {
          "path_match": "netflow.cisco_wlan_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_category": {
          "path_match": "netflow.cisco_avc_app_category",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_app_sub_category": {
          "path_match": "netflow.cisco_avc_app_sub_category",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_app_group": {
          "path_match": "netflow.cisco_avc_app_group",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_app_http_host": {
          "path_match": "netflow.cisco_avc_app_http_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_client_ipv4_addr": {
          "path_match": "netflow.cisco_avc_client_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_avc_server_ipv4_addr": {
          "path_match": "netflow.cisco_avc_server_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_avc_client_ipv6_addr": {
          "path_match": "netflow.cisco_avc_client_ipv6_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_avc_server_ipv6_addr": {
          "path_match": "netflow.cisco_avc_server_ipv6_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.cisco_avc_client_l4_port": {
          "path_match": "netflow.cisco_avc_client_l4_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_server_l4_port": {
          "path_match": "netflow.cisco_avc_server_l4_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_conn_id": {
          "path_match": "netflow.cisco_avc_conn_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_traffic_class": {
          "path_match": "netflow.cisco_avc_app_traffic_class",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_app_business_relevance": {
          "path_match": "netflow.cisco_avc_app_business_relevance",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_udid": {
          "path_match": "netflow.cisco_nvzflow_udid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_user": {
          "path_match": "netflow.cisco_nvzflow_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_os_name": {
          "path_match": "netflow.cisco_nvzflow_os_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_os_ver": {
          "path_match": "netflow.cisco_nvzflow_os_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_sys_vendor": {
          "path_match": "netflow.cisco_nvzflow_sys_vendor",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_sys_type": {
          "path_match": "netflow.cisco_nvzflow_sys_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_proc_acct": {
          "path_match": "netflow.cisco_nvzflow_proc_acct",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_parent_proc_acct": {
          "path_match": "netflow.cisco_nvzflow_parent_proc_acct",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_proc": {
          "path_match": "netflow.cisco_nvzflow_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_proc_hash": {
          "path_match": "netflow.cisco_nvzflow_proc_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_parent_proc": {
          "path_match": "netflow.cisco_nvzflow_parent_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_parent_proc_hash": {
          "path_match": "netflow.cisco_nvzflow_parent_proc_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_dns_suffix": {
          "path_match": "netflow.cisco_nvzflow_dns_suffix",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_dst_hostname": {
          "path_match": "netflow.cisco_nvzflow_dst_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_l4_bytes_in": {
          "path_match": "netflow.cisco_nvzflow_l4_bytes_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_l4_bytes_out": {
          "path_match": "netflow.cisco_nvzflow_l4_bytes_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_os_edition": {
          "path_match": "netflow.cisco_nvzflow_os_edition",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_module_list": {
          "path_match": "netflow.cisco_nvzflow_module_list",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_hash_list": {
          "path_match": "netflow.cisco_nvzflow_hash_list",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_coord_list": {
          "path_match": "netflow.cisco_nvzflow_coord_list",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_iface_info_uid": {
          "path_match": "netflow.cisco_nvzflow_iface_info_uid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_iface_index": {
          "path_match": "netflow.cisco_nvzflow_iface_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_iface_type": {
          "path_match": "netflow.cisco_nvzflow_iface_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_iface_name": {
          "path_match": "netflow.cisco_nvzflow_iface_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_iface_details_list": {
          "path_match": "netflow.cisco_nvzflow_iface_details_list",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_user_acct_type": {
          "path_match": "netflow.cisco_nvzflow_user_acct_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_proc_user_acct_type": {
          "path_match": "netflow.cisco_nvzflow_proc_user_acct_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_nvzflow_parent_proc_user_acct_type": {
          "path_match": "netflow.cisco_nvzflow_parent_proc_user_acct_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_timestamp_abs_monitor_interval_start": {
          "path_match": "netflow.cisco_timestamp_abs_monitor_interval_start",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_timestamp_abs_monitor_interval_end": {
          "path_match": "netflow.cisco_timestamp_abs_monitor_interval_end",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_avc_app_family": {
          "path_match": "netflow.cisco_avc_app_family",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_avc_app_set": {
          "path_match": "netflow.cisco_avc_app_set",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_sdwan_ingress_overlay_sess_id": {
          "path_match": "netflow.cisco_sdwan_ingress_overlay_sess_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_egress_overlay_sess_id": {
          "path_match": "netflow.cisco_sdwan_egress_overlay_sess_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_vpn_id": {
          "path_match": "netflow.cisco_sdwan_vpn_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_tloc_overlay_sess_id": {
          "path_match": "netflow.cisco_sdwan_tloc_overlay_sess_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_tloc_local_ip": {
          "path_match": "netflow.cisco_sdwan_tloc_local_ip",
          "mapping": {
            "type": "ip4_addr"
          }
        }
      },
      {
        "netflow.cisco_sdwan_tloc_local_color": {
          "path_match": "netflow.cisco_sdwan_tloc_local_color",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_sdwan_tloc_remote_ip": {
          "path_match": "netflow.cisco_sdwan_tloc_remote_ip",
          "mapping": {
            "type": "ip4_addr"
          }
        }
      },
      {
        "netflow.cisco_sdwan_tloc_remote_color": {
          "path_match": "netflow.cisco_sdwan_tloc_remote_color",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_sdwan_tloc_tunnel_proto": {
          "path_match": "netflow.cisco_sdwan_tloc_tunnel_proto",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_sdwan_connection_id": {
          "path_match": "netflow.cisco_sdwan_connection_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_drop_cause": {
          "path_match": "netflow.cisco_sdwan_drop_cause",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_dropped_bytes": {
          "path_match": "netflow.cisco_sdwan_dropped_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_sla_not_met": {
          "path_match": "netflow.cisco_sdwan_sla_not_met",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_pref_color_not_met": {
          "path_match": "netflow.cisco_sdwan_pref_color_not_met",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_qos_queue_id": {
          "path_match": "netflow.cisco_sdwan_qos_queue_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_drop_cause_descr": {
          "path_match": "netflow.cisco_sdwan_drop_cause_descr",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.cisco_sdwan_appqoe_fec_packets": {
          "path_match": "netflow.cisco_sdwan_appqoe_fec_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_appqoe_fec_packets_reconstructed": {
          "path_match": "netflow.cisco_sdwan_appqoe_fec_packets_reconstructed",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_appqoe_orig_tunnel_pkt_dup_packets": {
          "path_match": "netflow.cisco_sdwan_appqoe_orig_tunnel_pkt_dup_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_appqoe_dup_tunnel_pkt_dup_packets": {
          "path_match": "netflow.cisco_sdwan_appqoe_dup_tunnel_pkt_dup_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_appqoe_pkt_dup_packets_recovered": {
          "path_match": "netflow.cisco_sdwan_appqoe_pkt_dup_packets_recovered",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.cisco_sdwan_cloud_express_packets": {
          "path_match": "netflow.cisco_sdwan_cloud_express_packets",
          "mapping": {
            "type": "long"
          }
        }
      },



      {
        "netflow.ericsson_nat_context_id": {
          "path_match": "netflow.ericsson_nat_context_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ericsson_nat_context_name": {
          "path_match": "netflow.ericsson_nat_context_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ericsson_nat_assign_ts_secs": {
          "path_match": "netflow.ericsson_nat_assign_ts_secs",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ericsson_nat_unassign_ts_secs": {
          "path_match": "netflow.ericsson_nat_unassign_ts_secs",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ericsson_nat_int_ipv4": {
          "path_match": "netflow.ericsson_nat_internal_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ericsson_nat_ext_ipv4": {
          "path_match": "netflow.ericsson_nat_external_ipv4",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ericsson_nat_ext_port_start": {
          "path_match": "netflow.ericsson_nat_external_port_start",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ericsson_nat_ext_port_end": {
          "path_match": "netflow.ericsson_nat_external_port_end",
          "mapping": {
            "type": "long"
          }
        }
      },


      
      {
        "netflow.ntop_client_tcp_flags": {
          "path_match": "ipfix.ntop_client_tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_server_tcp_flags": {
          "path_match": "ipfix.ntop_server_tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_frags": {
          "path_match": "netflow.ntop_src_frags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_frags": {
          "path_match": "netflow.ntop_dst_frags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_to_dst_max_throughput": {
          "path_match": "netflow.ntop_src_to_dst_max_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_to_dst_min_throughput": {
          "path_match": "netflow.ntop_src_to_dst_min_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_to_dst_avg_throughput": {
          "path_match": "netflow.ntop_src_to_dst_avg_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_to_src_max_throughput": {
          "path_match": "netflow.ntop_dst_to_src_max_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_to_src_min_throughput": {
          "path_match": "netflow.ntop_dst_to_src_min_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_to_src_avg_throughput": {
          "path_match": "netflow.ntop_dst_to_src_avg_throughput",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_upto_128_bytes": {
          "path_match": "netflow.ntop_packets_upto_128_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_128_to_256_bytes": {
          "path_match": "netflow.ntop_packets_128_to_256_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_256_to_512_bytes": {
          "path_match": "netflow.ntop_packets_256_to_512_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_512_to_1024_bytes": {
          "path_match": "netflow.ntop_packets_512_to_1024_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_1024_to_1514_bytes": {
          "path_match": "netflow.ntop_packets_1024_to_1514_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_over_1514_bytes": {
          "path_match": "netflow.ntop_packets_over_1514_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_cumulative_icmp_type": {
          "path_match": "netflow.ntop_cumulative_icmp_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_country": {
          "path_match": "netflow.ntop_src_country",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_src_city": {
          "path_match": "netflow.ntop_src_city",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dst_country": {
          "path_match": "netflow.ntop_dst_country",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dst_city": {
          "path_match": "netflow.ntop_dst_city",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_flow_proto_port": {
          "path_match": "netflow.ntop_flow_proto_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_tunnel_id": {
          "path_match": "netflow.ntop_tunnel_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_longest_flow_packet": {
          "path_match": "netflow.ntop_longest_flow_packet",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_shortest_flow_packet": {
          "path_match": "netflow.ntop_shortest_flow_packet",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_retrans_in_packets": {
          "path_match": "netflow.ntop_retrans_in_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_retrans_out_packets": {
          "path_match": "netflow.ntop_retrans_out_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_ooorder_in_packets": {
          "path_match": "netflow.ntop_ooorder_in_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_ooorder_out_packets": {
          "path_match": "netflow.ntop_ooorder_out_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_untunneled_protocol": {
          "path_match": "netflow.ntop_untunneled_protocol",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_untunneled_ipv4_src_addr": {
          "path_match": "netflow.ntop_untunneled_ipv4_src_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_untunneled_l4_src_port": {
          "path_match": "netflow.ntop_untunneled_l4_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_untunneled_ipv4_dst_addr": {
          "path_match": "netflow.ntop_untunneled_ipv4_dst_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_untunneled_l4_dst_port": {
          "path_match": "netflow.ntop_untunneled_l4_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_l7_proto": {
          "path_match": "netflow.ntop_l7_proto",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_l7_proto_name": {
          "path_match": "netflow.ntop_l7_proto_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_downstram_tunnel_id": {
          "path_match": "netflow.ntop_downstram_tunnel_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_flow_user": {
          "path_match": "netflow.ntop_flow_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_flow_server": {
          "path_match": "netflow.ntop_flow_server",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_client_nw_latency_ms": {
          "path_match": "netflow.ntop_client_nw_latency_ms",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_server_nw_latency_ms": {
          "path_match": "netflow.ntop_server_nw_latency_ms",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_appl_latency_ms": {
          "path_match": "netflow.ntop_appl_latency_ms",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_plugin": {
          "path_match": "netflow.ntop_plugin",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_retrans_in_bytes": {
          "path_match": "netflow.ntop_retrans_in_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_retrans_out_bytes": {
          "path_match": "netflow.ntop_retrans_out_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_call_id": {
          "path_match": "netflow.ntop_sip_call_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_sip_calling_party": {
          "path_match": "netflow.ntop_sip_calling_party",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_sip_called_party": {
          "path_match": "netflow.ntop_sip_called_party",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_sip_rtp_codecs": {
          "path_match": "netflow.ntop_sip_rtp_codecs",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_sip_invite_time": {
          "path_match": "netflow.ntop_sip_invite_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_trying_time": {
          "path_match": "netflow.ntop_sip_trying_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_ringing_time": {
          "path_match": "netflow.ntop_sip_ringing_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_ok_time": {
          "path_match": "netflow.ntop_sip_ok_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_invite_failure_time": {
          "path_match": "netflow.ntop_sip_invite_failure_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_bye_time": {
          "path_match": "netflow.ntop_sip_bye_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_bye_ok_time": {
          "path_match": "netflow.ntop_sip_bye_ok_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_cancel_time": {
          "path_match": "netflow.ntop_sip_cancel_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_cancel_ok_time": {
          "path_match": "netflow.ntop_sip_cancel_ok_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_rtp_ipv4_src_addr": {
          "path_match": "netflow.ntop_sip_rtp_ipv4_src_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_sip_rtp_l4_src_port": {
          "path_match": "netflow.ntop_sip_rtp_l4_src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_rtp_ipv4_dst_addr": {
          "path_match": "netflow.ntop_sip_rtp_ipv4_dst_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_sip_rtp_l4_dst_port": {
          "path_match": "netflow.ntop_sip_rtp_l4_dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_resp_code": {
          "path_match": "netflow.ntop_sip_resp_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_reason_cause": {
          "path_match": "netflow.ntop_sip_reason_cause",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_first_seq": {
          "path_match": "netflow.ntop_rtp_first_seq",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_first_ts": {
          "path_match": "netflow.ntop_rtp_first_ts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_last_seq": {
          "path_match": "netflow.ntop_rtp_last_seq",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_last_ts": {
          "path_match": "netflow.ntop_rtp_last_ts",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_in_jitter": {
          "path_match": "netflow.ntop_rtp_in_jitter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_out_jitter": {
          "path_match": "netflow.ntop_rtp_out_jitter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_in_packets_lost": {
          "path_match": "netflow.ntop_rtp_in_packets_lost",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_out_packets_lost": {
          "path_match": "netflow.ntop_rtp_out_packets_lost",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_out_payload_type": {
          "path_match": "netflow.ntop_rtp_out_payload_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_in_max_delta": {
          "path_match": "netflow.ntop_rtp_in_max_delta",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_out_max_delta": {
          "path_match": "netflow.ntop_rtp_out_max_delta",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_in_payload_type": {
          "path_match": "netflow.ntop_rtp_in_payload_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_proc_id": {
          "path_match": "netflow.ntop_src_proc_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_proc": {
          "path_match": "netflow.ntop_src_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_http_url": {
          "path_match": "netflow.ntop_http_url",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_http_ret_code": {
          "path_match": "netflow.ntop_http_ret_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_http_referrer": {
          "path_match": "netflow.ntop_http_referrer",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_http_user_agent": {
          "path_match": "netflow.ntop_http_user_agent",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_http_mime": {
          "path_match": "netflow.ntop_http_mime",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_smtp_mail_from": {
          "path_match": "netflow.ntop_smtp_mail_from",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_smtp_rcpt_to": {
          "path_match": "netflow.ntop_smtp_rcpt_to",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_http_host": {
          "path_match": "netflow.ntop_http_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_ssl_server": {
          "path_match": "netflow.ntop_ssl_server",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_bittorrent_hash": {
          "path_match": "netflow.ntop_bittorrent_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_mysql_server_ver": {
          "path_match": "netflow.ntop_mysql_server_ver",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_mysql_user": {
          "path_match": "netflow.ntop_mysql_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_mysql_db": {
          "path_match": "netflow.ntop_mysql_db",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_mysql_query": {
          "path_match": "netflow.ntop_mysql_query",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_mysql_resp": {
          "path_match": "netflow.ntop_mysql_resp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_oracle_user": {
          "path_match": "netflow.ntop_oracle_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_oracle_query": {
          "path_match": "netflow.ntop_oracle_query",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_oracle_resp_code": {
          "path_match": "netflow.ntop_oracle_resp_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_oracle_resp_string": {
          "path_match": "netflow.ntop_oracle_resp_string",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_oracle_query_duration": {
          "path_match": "netflow.ntop_oracle_query_duration",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dns_query": {
          "path_match": "netflow.ntop_dns_query",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dns_query_id": {
          "path_match": "netflow.ntop_dns_query_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dns_query_type": {
          "path_match": "netflow.ntop_dns_query_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dns_ret_code": {
          "path_match": "netflow.ntop_dns_ret_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dns_answers": {
          "path_match": "netflow.ntop_dns_answers",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_pop_user": {
          "path_match": "netflow.ntop_pop_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_req_msg_type": {
          "path_match": "netflow.ntop_gtpv1_req_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_resp_msg_type": {
          "path_match": "netflow.ntop_gtpv1_resp_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_c2s_teid_data": {
          "path_match": "netflow.ntop_gtpv1_c2s_teid_data",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_c2s_teid_ctrl": {
          "path_match": "netflow.ntop_gtpv1_c2s_teid_ctrl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_s2c_teid_data": {
          "path_match": "netflow.ntop_gtpv1_s2c_teid_data",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_s2c_teid_ctrl": {
          "path_match": "netflow.ntop_gtpv1_s2c_teid_ctrl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_end_user_ip": {
          "path_match": "netflow.ntop_gtpv1_end_user_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_end_user_imsi": {
          "path_match": "netflow.ntop_gtpv1_end_user_imsi",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_end_user_msisdn": {
          "path_match": "netflow.ntop_gtpv1_end_user_msisdn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_end_user_imei": {
          "path_match": "netflow.ntop_gtpv1_end_user_imei",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_apn": {
          "path_match": "netflow.ntop_gtpv1_apn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_rai_mcc": {
          "path_match": "netflow.ntop_gtpv1_rai_mcc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_rai_mnc": {
          "path_match": "netflow.ntop_gtpv1_rai_mnc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_uli_cell_lac": {
          "path_match": "netflow.ntop_gtpv1_uli_cell_lac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_uli_cell_ci": {
          "path_match": "netflow.ntop_gtpv1_uli_cell_ci",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_uli_sac": {
          "path_match": "netflow.ntop_gtpv1_uli_sac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_rai_type": {
          "path_match": "netflow.ntop_gtpv1_rai_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_radius_req_msg_type": {
          "path_match": "netflow.ntop_radius_req_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_radius_resp_msg_type": {
          "path_match": "netflow.ntop_radius_resp_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_radius_user": {
          "path_match": "netflow.ntop_radius_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_radius_calling_station_id": {
          "path_match": "netflow.ntop_radius_calling_station_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_radius_called_station_id": {
          "path_match": "netflow.ntop_radius_called_station_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_radius_nas_ip": {
          "path_match": "netflow.ntop_radius_nas_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_radius_nas_id": {
          "path_match": "netflow.ntop_radius_nas_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_radius_user_imsi": {
          "path_match": "netflow.ntop_radius_user_imsi",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_radius_user_imei": {
          "path_match": "netflow.ntop_radius_user_imei",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_radius_framed_ip": {
          "path_match": "netflow.ntop_radius_framed_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_radius_acct_sess_id": {
          "path_match": "netflow.ntop_radius_acct_sess_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_radius_acct_status_type": {
          "path_match": "netflow.ntop_radius_acct_status_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_radius_acct_in_octets": {
          "path_match": "netflow.ntop_radius_acct_in_octets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_radius_acct_out_octets": {
          "path_match": "netflow.ntop_radius_acct_out_octets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_radius_acct_in_packets": {
          "path_match": "netflow.ntop_radius_acct_in_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_radius_acct_out_packets": {
          "path_match": "netflow.ntop_radius_acct_out_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_imap_login": {
          "path_match": "netflow.ntop_imap_login",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_req_msg_type": {
          "path_match": "netflow.ntop_gtpv2_req_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_resp_msg_type": {
          "path_match": "netflow.ntop_gtpv2_resp_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_c2s_s1u_gtpu_teid": {
          "path_match": "netflow.ntop_gtpv2_c2s_s1u_gtpu_teid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_c2s_s1u_gtpu_ip": {
          "path_match": "netflow.ntop_gtpv2_c2s_s1u_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_s2c_s1u_gtpu_teid": {
          "path_match": "netflow.ntop_gtpv2_s2c_s1u_gtpu_teid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_s2c_s1u_gtpu_ip": {
          "path_match": "netflow.ntop_gtpv2_s2c_s1u_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_end_user_imsi": {
          "path_match": "netflow.ntop_gtpv2_end_user_imsi",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_and_user_msisdn": {
          "path_match": "netflow.ntop_gtpv2_and_user_msisdn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_apn": {
          "path_match": "netflow.ntop_gtpv2_apn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_uli_mcc": {
          "path_match": "netflow.ntop_gtpv2_uli_mcc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_uli_mnc": {
          "path_match": "netflow.ntop_gtpv2_uli_mnc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_uli_cell_tac": {
          "path_match": "netflow.ntop_gtpv2_uli_cell_tac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_uli_cell_id": {
          "path_match": "netflow.ntop_gtpv2_uli_cell_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_rat_type": {
          "path_match": "netflow.ntop_gtpv2_rat_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_pdn_ip": {
          "path_match": "netflow.ntop_gtpv2_pdn_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_end_user_imei": {
          "path_match": "netflow.ntop_gtpv2_end_user_imei",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_src_as_path_1": {
          "path_match": "netflow.ntop_src_as_path_1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_as_path_2": {
          "path_match": "netflow.ntop_src_as_path_2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_as_path_3": {
          "path_match": "netflow.ntop_src_as_path_3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_as_path_4": {
          "path_match": "netflow.ntop_src_as_path_4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_as_path_5": {
          "path_match": "netflow.ntop_src_as_path_5",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_as_path_6": {
          "path_match": "netflow.ntop_src_as_path_6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_as_path_7": {
          "path_match": "netflow.ntop_src_as_path_7",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_as_path_8": {
          "path_match": "netflow.ntop_src_as_path_8",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_as_path_9": {
          "path_match": "netflow.ntop_src_as_path_9",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_as_path_10": {
          "path_match": "netflow.ntop_src_as_path_10",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_as_path_1": {
          "path_match": "netflow.ntop_dst_as_path_1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_as_path_2": {
          "path_match": "netflow.ntop_dst_as_path_2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_as_path_3": {
          "path_match": "netflow.ntop_dst_as_path_3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_as_path_4": {
          "path_match": "netflow.ntop_dst_as_path_4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_as_path_5": {
          "path_match": "netflow.ntop_dst_as_path_5",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_as_path_6": {
          "path_match": "netflow.ntop_dst_as_path_6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_as_path_7": {
          "path_match": "netflow.ntop_dst_as_path_7",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_as_path_8": {
          "path_match": "netflow.ntop_dst_as_path_8",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_as_path_9": {
          "path_match": "netflow.ntop_dst_as_path_9",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_as_path_10": {
          "path_match": "netflow.ntop_dst_as_path_10",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_sip_uac": {
          "path_match": "ipfix.ntop_sip_uac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_sip_uas": {
          "path_match": "ipfix.ntop_sip_uas",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_mysql_appl_latency_usec": {
          "path_match": "netflow.ntop_mysql_appl_latency_usec",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv0_req_msg_type": {
          "path_match": "netflow.ntop_gtpv0_req_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv0_resp_msg_type": {
          "path_match": "netflow.ntop_gtpv0_resp_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv0_tid": {
          "path_match": "netflow.ntop_gtpv0_tid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv0_end_user_ip": {
          "path_match": "netflow.ntop_gtpv0_end_user_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_gtpv0_end_user_msisdn": {
          "path_match": "netflow.ntop_gtpv0_end_user_msisdn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv0_apn": {
          "path_match": "netflow.ntop_gtpv0_apn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_gtpv0_rai_mcc": {
          "path_match": "netflow.ntop_gtpv0_rai_mcc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv0_rai_mnc": {
          "path_match": "netflow.ntop_gtpv0_rai_mnc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv0_rai_cell_lac": {
          "path_match": "netflow.ntop_gtpv0_rai_cell_lac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv0_rai_cell_rac": {
          "path_match": "netflow.ntop_gtpv0_rai_cell_rac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv0_resp_cause": {
          "path_match": "netflow.ntop_gtpv0_resp_cause",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_resp_cause": {
          "path_match": "netflow.ntop_gtpv1_resp_cause",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_resp_cause": {
          "path_match": "netflow.ntop_gtpv2_resp_cause",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_ttl_5_32": {
          "path_match": "netflow.ntop_packets_ttl_5_32",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_ttl_32_64": {
          "path_match": "netflow.ntop_packets_ttl_32_64",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_ttl_64_96": {
          "path_match": "netflow.ntop_packets_ttl_64_96",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_ttl_96_128": {
          "path_match": "netflow.ntop_packets_ttl_96_128",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_ttl_128_160": {
          "path_match": "netflow.ntop_packets_ttl_128_160",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_ttl_160_192": {
          "path_match": "netflow.ntop_packets_ttl_160_192",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_ttl_192_224": {
          "path_match": "netflow.ntop_packets_ttl_192_224",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_ttl_224_225": {
          "path_match": "netflow.ntop_packets_ttl_224_225",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_rai_lac": {
          "path_match": "netflow.ntop_gtpv1_rai_lac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_rai_rac": {
          "path_match": "netflow.ntop_gtpv1_rai_rac",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_uli_mcc": {
          "path_match": "netflow.ntop_gtpv1_uli_mcc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv1_uli_mnc": {
          "path_match": "netflow.ntop_gtpv1_uli_mnc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_ttl_2_5": {
          "path_match": "netflow.ntop_packets_ttl_2_5",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_packets_ttl_eq_1": {
          "path_match": "netflow.ntop_packets_ttl_eq_1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_sip_call_id": {
          "path_match": "netflow.ntop_rtp_sip_call_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_in_src_osi_sap": {
          "path_match": "netflow.ntop_in_src_osi_sap",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_out_dst_osi_sap": {
          "path_match": "netflow.ntop_out_dst_osi_sap",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_whois_das_domain": {
          "path_match": "netflow.ntop_whois_das_domain",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dns_ttl_answer": {
          "path_match": "netflow.ntop_dns_ttl_answer",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dhcp_client_mac": {
          "path_match": "netflow.ntop_dhcp_client_mac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dhcp_client_ip": {
          "path_match": "netflow.ntop_dhcp_client_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_dhcp_client": {
          "path_match": "netflow.ntop_dhcp_client",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_ftp_login": {
          "path_match": "netflow.ntop_ftp_login",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_ftp_password": {
          "path_match": "netflow.ntop_ftp_password",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_ftp_command": {
          "path_match": "netflow.ntop_ftp_command",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_ftp_command_ret_code": {
          "path_match": "netflow.ntop_ftp_command_ret_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_http_method": {
          "path_match": "netflow.ntop_http_method",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_http_site": {
          "path_match": "netflow.ntop_http_site",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_sip_c_ip": {
          "path_match": "netflow.ntop_sip_c_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_sip_call_state": {
          "path_match": "netflow.ntop_sip_call_state",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_rtp_in_mos": {
          "path_match": "netflow.ntop_rtp_in_mos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_in_r_factor": {
          "path_match": "netflow.ntop_rtp_in_r_factor",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_proc_user": {
          "path_match": "netflow.ntop_src_proc_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_src_father_proc_pid": {
          "path_match": "netflow.ntop_src_father_proc_pid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_father_proc": {
          "path_match": "netflow.ntop_src_father_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dst_proc_pid": {
          "path_match": "netflow.ntop_dst_proc_pid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_proc": {
          "path_match": "netflow.ntop_dst_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dst_proc_user": {
          "path_match": "netflow.ntop_dst_proc_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dst_father_proc_pid": {
          "path_match": "netflow.ntop_dst_father_proc_pid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_father_proc": {
          "path_match": "netflow.ntop_dst_father_proc",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_rtp_rtt": {
          "path_match": "netflow.ntop_rtp_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_in_transit": {
          "path_match": "netflow.ntop_rtp_in_transit",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_out_transit": {
          "path_match": "netflow.ntop_rtp_out_transit",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_proc_actual_memory": {
          "path_match": "netflow.ntop_src_proc_actual_memory",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_proc_peak_memory": {
          "path_match": "netflow.ntop_src_proc_peak_memory",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_proc_avg_cpu_load": {
          "path_match": "netflow.ntop_src_proc_avg_cpu_load",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_proc_page_faults": {
          "path_match": "netflow.ntop_src_proc_page_faults",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_proc_actual_memory": {
          "path_match": "netflow.ntop_dst_proc_actual_memory",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_proc_peak_memory": {
          "path_match": "netflow.ntop_dst_proc_peak_memory",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_proc_avg_cpu_load": {
          "path_match": "netflow.ntop_dst_proc_avg_cpu_load",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_proc_page_faults": {
          "path_match": "netflow.ntop_dst_proc_page_faults",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_duration_in": {
          "path_match": "netflow.ntop_duration_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_duration_out": {
          "path_match": "netflow.ntop_duration_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_proc_pctg_iowait": {
          "path_match": "netflow.ntop_src_proc_pctg_iowait",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_proc_pctg_iowait": {
          "path_match": "netflow.ntop_dst_proc_pctg_iowait",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_dtmf_tones": {
          "path_match": "netflow.ntop_rtp_dtmf_tones",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_untunneled_ipv6_src_addr": {
          "path_match": "netflow.ntop_untunneled_ipv6_src_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_untunneled_ipv6_dst_addr": {
          "path_match": "netflow.ntop_untunneled_ipv6_dst_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_dns_resp": {
          "path_match": "netflow.ntop_dns_resp",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_diameter_req_msg_type": {
          "path_match": "netflow.ntop_diameter_req_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_diameter_resp_msg_type": {
          "path_match": "netflow.ntop_diameter_resp_msg_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_diameter_req_origin_host": {
          "path_match": "netflow.ntop_diameter_req_origin_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_diameter_resp_origin_host": {
          "path_match": "netflow.ntop_diameter_resp_origin_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_diameter_req_user": {
          "path_match": "netflow.ntop_diameter_req_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_diameter_resp_result_code": {
          "path_match": "netflow.ntop_diameter_resp_result_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_diameter_exp_res_vendor_id": {
          "path_match": "netflow.ntop_diameter_exp_res_vendor_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_diameter_exp_res_result_code": {
          "path_match": "netflow.ntop_diameter_exp_res_result_code",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_s1ap_enb_ue_s1ap_id": {
          "path_match": "netflow.ntop_s1ap_enb_ue_s1ap_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_s1ap_mme_ue_s1ap_id": {
          "path_match": "netflow.ntop_s1ap_mme_ue_s1ap_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_s1ap_msg_emm_type_mme_to_enb": {
          "path_match": "netflow.ntop_s1ap_msg_emm_type_mme_to_enb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_s1ap_msg_esm_type_mme_to_enb": {
          "path_match": "netflow.ntop_s1ap_msg_esm_type_mme_to_enb",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_s1ap_msg_emm_type_enb_to_mme": {
          "path_match": "netflow.ntop_s1ap_msg_emm_type_enb_to_mme",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_s1ap_msg_esm_type_enb_to_mme": {
          "path_match": "netflow.ntop_s1ap_msg_esm_type_enb_to_mme",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_s1ap_cause_enb_to_mme": {
          "path_match": "netflow.ntop_s1ap_cause_enb_to_mme",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_s1ap_detailed_cause_enb_to_mme": {
          "path_match": "netflow.ntop_s1ap_detailed_cause_enb_to_mme",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_tcp_win_min_in": {
          "path_match": "netflow.ntop_tcp_win_min_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_tcp_win_max_in": {
          "path_match": "netflow.ntop_tcp_win_max_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_tcp_win_mss_in": {
          "path_match": "netflow.ntop_tcp_win_mss_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_tcp_win_scale_in": {
          "path_match": "netflow.ntop_tcp_win_scale_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_tcp_win_min_out": {
          "path_match": "netflow.ntop_tcp_win_min_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_tcp_win_max_out": {
          "path_match": "netflow.ntop_tcp_win_max_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_tcp_win_mss_out": {
          "path_match": "netflow.ntop_tcp_win_mss_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_tcp_win_scale_out": {
          "path_match": "netflow.ntop_tcp_win_scale_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dhcp_remote_id": {
          "path_match": "netflow.ntop_dhcp_remote_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dhcp_subscriber_id": {
          "path_match": "netflow.ntop_dhcp_subscriber_id",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_src_proc_uid": {
          "path_match": "netflow.ntop_src_proc_uid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_proc_uid": {
          "path_match": "netflow.ntop_dst_proc_uid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_application": {
          "path_match": "netflow.ntop_application",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_user": {
          "path_match": "netflow.ntop_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dhcp_message_type": {
          "path_match": "netflow.ntop_dhcp_message_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_rtp_in_packets_drop": {
          "path_match": "netflow.ntop_rtp_in_packets_drop",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_out_packets_drop": {
          "path_match": "netflow.ntop_rtp_out_packets_drop",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_out_mos": {
          "path_match": "netflow.ntop_rtp_out_mos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_out_r_factor": {
          "path_match": "netflow.ntop_rtp_out_r_factor",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_mos": {
          "path_match": "netflow.ntop_rtp_mos",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gptv2_s5_s8_gtpc_teid": {
          "path_match": "netflow.ntop_gptv2_s5_s8_gtpc_teid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_rtp_r_factor": {
          "path_match": "netflow.ntop_rtp_r_factor",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_rtp_ssrc": {
          "path_match": "netflow.ntop_rtp_ssrc",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_payload_hash": {
          "path_match": "netflow.ntop_payload_hash",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_c2s_s5_s8_gtpu_teid": {
          "path_match": "netflow.ntop_gtpv2_c2s_s5_s8_gtpu_teid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_s2c_s5_s8_gtpu_teid": {
          "path_match": "netflow.ntop_gtpv2_s2c_s5_s8_gtpu_teid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_c2s_s5_s8_gtpu_ip": {
          "path_match": "netflow.ntop_gtpv2_c2s_s5_s8_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_s2c_s5_s8_gtpu_ip": {
          "path_match": "netflow.ntop_gtpv2_s2c_s5_s8_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_src_as_map": {
          "path_match": "netflow.ntop_src_as_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dst_as_map": {
          "path_match": "netflow.ntop_dst_as_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_diameter_hop_by_hop_id": {
          "path_match": "netflow.ntop_diameter_hop_by_hop_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_upstream_sess_id": {
          "path_match": "netflow.ntop_upstream_sess_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_downstream_sess_id": {
          "path_match": "netflow.ntop_downstream_sess_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_src_long": {
          "path_match": "netflow.ntop_src_long",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "netflow.ntop_src_lat": {
          "path_match": "netflow.ntop_src_lat",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "netflow.ntop_dst_long": {
          "path_match": "netflow.ntop_dst_long",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "netflow.ntop_dst_lat": {
          "path_match": "netflow.ntop_dst_lat",
          "mapping": {
            "type": "float"
          }
        }
      },
      {
        "netflow.ntop_diameter_clr_cancel_type": {
          "path_match": "netflow.ntop_diameter_clr_cancel_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_diameter_clr_flags": {
          "path_match": "netflow.ntop_diameter_clr_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_c2s_s5_s8_gtpc_ip": {
          "path_match": "netflow.ntop_gtpv2_c2s_s5_s8_gtpc_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_s2c_s5_s8_gtpc_ip": {
          "path_match": "netflow.ntop_gtpv2_s2c_s5_s8_gtpc_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_c2s_s5_s8_sgw_gtpu_teid": {
          "path_match": "netflow.ntop_gtpv2_c2s_s5_s8_sgw_gtpu_teid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_s2c_s5_s8_sgw_gtpu_teid": {
          "path_match": "netflow.ntop_gtpv2_s2c_s5_s8_sgw_gtpu_teid",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_c2s_s5_s8_sgw_gtpu_ip": {
          "path_match": "netflow.ntop_gtpv2_c2s_s5_s8_sgw_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_gtpv2_s2c_s5_s8_sgw_gtpu_ip": {
          "path_match": "netflow.ntop_gtpv2_s2c_s5_s8_sgw_gtpu_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_http_x_forwarded_for": {
          "path_match": "netflow.ntop_http_x_forwarded_for",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_http_via": {
          "path_match": "netflow.ntop_http_via",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_ssdp_host": {
          "path_match": "netflow.ntop_ssdp_host",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_ssdp_usn": {
          "path_match": "netflow.ntop_ssdp_usn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_netbios_query": {
          "path_match": "netflow.ntop_netbios_query",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_netbios_query_type": {
          "path_match": "netflow.ntop_netbios_query_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_netbios_resp": {
          "path_match": "netflow.ntop_netbios_resp",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_netbios_query_os": {
          "path_match": "netflow.ntop_netbios_query_os",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_ssdp_server": {
          "path_match": "netflow.ntop_ssdp_server",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_ssdp_type": {
          "path_match": "netflow.ntop_ssdp_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_ssdp_method": {
          "path_match": "netflow.ntop_ssdp_method",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_nprobe_ipv4_addr": {
          "path_match": "netflow.ntop_nprobe_ipv4_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.ntop_src_to_dst_second_bytes": {
          "path_match": "ipfix.ntop_src_to_dst_second_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dst_to_src_second_bytes": {
          "path_match": "ipfix.ntop_dst_to_src_second_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_dicom_impl_uid": {
          "path_match": "ipfix.ntop_dicom_impl_uid",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_impl_version": {
          "path_match": "ipfix.ntop_dicom_impl_version",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_modality": {
          "path_match": "ipfix.ntop_dicom_modality",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_manufacturer": {
          "path_match": "ipfix.ntop_dicom_manufacturer",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_institution_name": {
          "path_match": "ipfix.ntop_dicom_institution_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_institution_address": {
          "path_match": "ipfix.ntop_dicom_institution_address",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_station_name": {
          "path_match": "ipfix.ntop_dicom_station_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_device_serial": {
          "path_match": "ipfix.ntop_dicom_device_serial",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_sw_version": {
          "path_match": "ipfix.ntop_dicom_sw_version",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_ja3c_hash": {
          "path_match": "ipfix.ntop_dicom_ja3c_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_ja3s_hash": {
          "path_match": "ipfix.ntop_dicom_ja3s_hash",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_src_host_name": {
          "path_match": "ipfix.ntop_dicom_src_host_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_dicom_dst_host_name": {
          "path_match": "ipfix.ntop_dicom_dst_host_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_ssl_cipher": {
          "path_match": "ipfix.ntop_ssl_cipher",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_ssl_unsafe_cipher": {
          "path_match": "ipfix.ntop_ssl_unsafe_cipher",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_ssl_version": {
          "path_match": "ipfix.ntop_ssl_version",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.ntop_protocol_map": {
          "path_match": "ipfix.ntop_protocol_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_l4_src_port_map": {
          "path_match": "ipfix.ntop_l4_src_port_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_l4_dst_port_map": {
          "path_match": "ipfix.ntop_l4_dst_port_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_l4_server_port": {
          "path_match": "ipfix.ntop_l4_server_port",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.ntop_l4_server_port_map": {
          "path_match": "ipfix.ntop_l4_server_port_map",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "netflow.pan_app": {
          "path_match": "netflow.pan_app",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.pan_user": {
          "path_match": "netflow.pan_user",
          "mapping": {
            "type": "keyword"
          }
        }
      },



      {
        "netflow.riverbed_passthru_reason": {
          "path_match": "netflow.riverbed_passthru_reason",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.riverbed_wan_visibility": {
          "path_match": "netflow.riverbed_wan_visibility",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.riverbed_cfe_inpath_addr": {
          "path_match": "netflow.riverbed_cfe_inpath_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.riverbed_sfe_inpath_addr": {
          "path_match": "netflow.riverbed_sfe_inpath_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.riverbed_cfe_tcp_port": {
          "path_match": "netflow.riverbed_cfe_tcp_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.riverbed_cfe_tcp_port_name": {
          "path_match": "netflow.riverbed_cfe_tcp_port_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.riverbed_sfe_tcp_port": {
          "path_match": "netflow.riverbed_sfe_tcp_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.riverbed_sfe_tcp_port_name": {
          "path_match": "netflow.riverbed_sfe_tcp_port_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.riverbed_outer_inpath_addr": {
          "path_match": "netflow.riverbed_outer_inpath_addr",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "netflow.riverbed_outer_tcp_port": {
          "path_match": "netflow.riverbed_outer_tcp_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.riverbed_outer_tcp_port_name": {
          "path_match": "netflow.riverbed_outer_tcp_port_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.riverbed_retrans_packets": {
          "path_match": "netflow.riverbed_retrans_packets",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.riverbed_retrans_bytes": {
          "path_match": "netflow.riverbed_retrans_bytes",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.riverbed_tcp_conn_rtt": {
          "path_match": "netflow.riverbed_tcp_conn_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.riverbed_fe_type": {
          "path_match": "netflow.riverbed_fe_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.riverbed_unk_51130": {
          "path_match": "netflow.riverbed_unk_51130",
          "mapping": {
            "type": "long"
          }
        }
      },



      {
        "netflow.streamcore_wan_rtt": {
          "path_match": "netflow.streamcore_wan_rtt",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_net_app_resp_time": {
          "path_match": "netflow.streamcore_net_app_resp_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_total_app_resp_time": {
          "path_match": "netflow.streamcore_total_app_resp_time",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_tcp_retrans_rate": {
          "path_match": "netflow.streamcore_tcp_retrans_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_call_direction": {
          "path_match": "netflow.streamcore_call_direction",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_hostname": {
          "path_match": "netflow.streamcore_hostname",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.streamcore_url": {
          "path_match": "netflow.streamcore_url",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.streamcore_ssl_cn": {
          "path_match": "netflow.streamcore_ssl_cn",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.streamcore_ssl_org": {
          "path_match": "netflow.streamcore_ssl_org",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "netflow.streamcore_mos_lq": {
          "path_match": "netflow.streamcore_mos_lq",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_net_delay": {
          "path_match": "netflow.streamcore_net_delay",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_net_loss": {
          "path_match": "netflow.streamcore_net_loss",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_net_jitter": {
          "path_match": "netflow.streamcore_net_jitter",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_net_discard": {
          "path_match": "netflow.streamcore_net_discard",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_rtp_clockrate_in": {
          "path_match": "netflow.streamcore_rtp_clockrate_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_rtp_clockrate_out": {
          "path_match": "netflow.streamcore_rtp_clockrate_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_codec_in": {
          "path_match": "netflow.streamcore_codec_in",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_codec_out": {
          "path_match": "netflow.streamcore_codec_out",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_id_rule_1": {
          "path_match": "netflow.streamcore_id_rule_1",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_id_rule_2": {
          "path_match": "netflow.streamcore_id_rule_2",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_id_rule_3": {
          "path_match": "netflow.streamcore_id_rule_3",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_id_rule_4": {
          "path_match": "netflow.streamcore_id_rule_4",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_id_rule_5": {
          "path_match": "netflow.streamcore_id_rule_5",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_id_rule_6": {
          "path_match": "netflow.streamcore_id_rule_6",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_id_rule_7": {
          "path_match": "netflow.streamcore_id_rule_7",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_id_rule_8": {
          "path_match": "netflow.streamcore_id_rule_8",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_id_rule_9": {
          "path_match": "netflow.streamcore_id_rule_9",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "netflow.streamcore_id_rule_10": {
          "path_match": "netflow.streamcore_id_rule_10",
          "mapping": {
            "type": "long"
          }
        }
      },
      


      {
        "sflow.agent_ip": {
          "path_match": "sflow.agent_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "sflow.drops": {
          "path_match": "sflow.drops",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.dst_ip": {
          "path_match": "sflow.dst_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "sflow.dst_mac": {
          "path_match": "sflow.dst_mac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "sflow.dst_mask_len": {
          "path_match": "sflow.dst_mask_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.dst_port": {
          "path_match": "sflow.dst_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.dst_priority": {
          "path_match": "sflow.dst_priority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.dst_vlan": {
          "path_match": "sflow.dst_vlan",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.eth_dst": {
          "path_match": "sflow.eth_dst",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "sflow.eth_src": {
          "path_match": "sflow.eth_src",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "sflow.eth_type": {
          "path_match": "sflow.eth_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.flow_sequence_number": {
          "path_match": "sflow.flow_sequence_number",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.frame_length": {
          "path_match": "sflow.frame_length",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.frame_length_times_sampling_rate": {
          "path_match": "sflow.frame_length_times_sampling_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.header_size": {
          "path_match": "sflow.header_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.input_interface": {
          "path_match": "sflow.input_interface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.input_interface_format": {
          "path_match": "sflow.input_interface_format",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.input_interface_value": {
          "path_match": "sflow.input_interface_value",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_address_next_hop_router": {
          "path_match": "sflow.ip_address_next_hop_router",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "sflow.ip_checksum": {
          "path_match": "sflow.ip_checksum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_dscp": {
          "path_match": "sflow.ip_dscp",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_ecn": {
          "path_match": "sflow.ip_ecn",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_flags": {
          "path_match": "sflow.ip_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_fragment_offset": {
          "path_match": "sflow.ip_fragment_offset",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_header_length": {
          "path_match": "sflow.ip_header_length",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_identification": {
          "path_match": "sflow.ip_identification",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_next_header": {
          "path_match": "sflow.ip_next_header",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_options": {
          "path_match": "sflow.ip_options",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_packet_length": {
          "path_match": "sflow.ip_packet_length",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_priority": {
          "path_match": "sflow.ip_priority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_protocol": {
          "path_match": "sflow.ip_protocol",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_total_length": {
          "path_match": "sflow.ip_total_length",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_ttl": {
          "path_match": "sflow.ip_ttl",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_type": {
          "path_match": "sflow.ip_type",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.ip_version": {
          "path_match": "sflow.ip_version",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.output_interface": {
          "path_match": "sflow.output_interface",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.output_interface_format": {
          "path_match": "sflow.output_interface_format",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.output_interface_value": {
          "path_match": "sflow.output_interface_value",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.packet_length": {
          "path_match": "sflow.packet_length",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.padded": {
          "path_match": "sflow.padded",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.protocol": {
          "path_match": "sflow.protocol",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "sflow.protocol_name": {
          "path_match": "sflow.protocol_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "sflow.sample_length": {
          "path_match": "sflow.sample_length",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.sample_pool": {
          "path_match": "sflow.sample_pool",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.sample_seq_number": {
          "path_match": "sflow.sample_seq_number",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.sampling_rate": {
          "path_match": "sflow.sampling_rate",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.sequence_number": {
          "path_match": "sflow.sequence_number",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.sflow_type": {
          "path_match": "sflow.sflow_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "sflow.sflow_version": {
          "path_match": "sflow.sflow_version",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.size_header": {
          "path_match": "sflow.size_header",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.source_id_index": {
          "path_match": "sflow.source_id_index",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.source_id_index_name": {
          "path_match": "sflow.source_id_index_name",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "sflow.source_id_type": {
          "path_match": "sflow.source_id_type",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "sflow.src_ip": {
          "path_match": "sflow.src_ip",
          "mapping": {
            "type": "ip"
          }
        }
      },
      {
        "sflow.src_mac": {
          "path_match": "sflow.src_mac",
          "mapping": {
            "type": "keyword"
          }
        }
      },
      {
        "sflow.src_mask_len": {
          "path_match": "sflow.src_mask_len",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.src_port": {
          "path_match": "sflow.src_port",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.src_priority": {
          "path_match": "sflow.src_priority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.src_vlan": {
          "path_match": "sflow.src_vlan",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.stripped": {
          "path_match": "sflow.stripped",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.sub_agent_id": {
          "path_match": "sflow.sub_agent_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.tcp_ack_number": {
          "path_match": "sflow.tcp_ack_number",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.tcp_checksum": {
          "path_match": "sflow.tcp_checksum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.tcp_flags": {
          "path_match": "sflow.tcp_flags",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.tcp_header_length": {
          "path_match": "sflow.tcp_header_length",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.tcp_is_ack": {
          "path_match": "sflow.tcp_is_ack",
          "mapping": {
            "type": "integer"
          }
        }
      },
      {
        "sflow.tcp_is_cwr": {
          "path_match": "sflow.tcp_is_cwr",
          "mapping": {
            "type": "integer"
          }
        }
      },
      {
        "sflow.tcp_is_ecn_echo": {
          "path_match": "sflow.tcp_is_ecn_echo",
          "mapping": {
            "type": "integer"
          }
        }
      },
      {
        "sflow.tcp_is_fin": {
          "path_match": "sflow.tcp_is_fin",
          "mapping": {
            "type": "integer"
          }
        }
      },
      {
        "sflow.tcp_is_nonce": {
          "path_match": "sflow.tcp_is_nonce",
          "mapping": {
            "type": "integer"
          }
        }
      },
      {
        "sflow.tcp_is_push": {
          "path_match": "sflow.tcp_is_push",
          "mapping": {
            "type": "integer"
          }
        }
      },
      {
        "sflow.tcp_is_reset": {
          "path_match": "sflow.tcp_is_reset",
          "mapping": {
            "type": "integer"
          }
        }
      },
      {
        "sflow.tcp_is_syn": {
          "path_match": "sflow.tcp_is_syn",
          "mapping": {
            "type": "integer"
          }
        }
      },
      {
        "sflow.tcp_is_urgent": {
          "path_match": "sflow.tcp_is_urgent",
          "mapping": {
            "type": "integer"
          }
        }
      },        
      {
        "sflow.tcp_options": {
          "path_match": "sflow.tcp_options",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.tcp_reserved": {
          "path_match": "sflow.tcp_reserved",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.tcp_seq_number": {
          "path_match": "sflow.tcp_seq_number",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.tcp_urgent_pointer": {
          "path_match": "sflow.tcp_urgent_pointer",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.tcp_window_size": {
          "path_match": "sflow.tcp_window_size",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.udp_checksum": {
          "path_match": "sflow.udp_checksum",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.udp_length": {
          "path_match": "sflow.udp_length",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.uptime_in_ms": {
          "path_match": "sflow.uptime_in_ms",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.vlan_cfi": {
          "path_match": "sflow.vlan_cfi",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.vlan_id": {
          "path_match": "sflow.vlan_id",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.vlan_priority": {
          "path_match": "sflow.vlan_priority",
          "mapping": {
            "type": "long"
          }
        }
      },
      {
        "sflow.vlan_type": {
          "path_match": "sflow.vlan_type",
          "mapping": {
            "type": "long"
          }
        }
      },


      {
        "string_fields": {
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string",
          "match": "*"
        }
      }
    ],
    "properties": {
      "@timestamp": {
        "type": "date"
      },
      "@version": {
        "type": "keyword"
      },
      "agent": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "ephemeral_id" : {
            "type" : "keyword"
          },
          "hostname": {
            "type": "keyword"
          },
          "id" : {
            "type" : "keyword"
          },
          "name": {
            "type": "keyword"
          },
          "type": {
            "type": "keyword"
          },
          "version" : {
            "type" : "keyword"
          }
        }
      },
      "as": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "organization": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "name": {
                "type": "keyword"
              }
            }
          }
        }
      },
      "client": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "address": {
            "type": "keyword"
          },
          "as": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "number": {
                "type": "keyword"
              },
              "organization": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "name": {
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "bytes": {
            "type": "long"
          },
          "domain": {
            "type": "keyword"
          },
          "geo": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "city_name": {
                "type": "keyword"
              },
              "country_name": {
                "type": "keyword"
              },
              "country_iso_code": {
                "type": "keyword"
              },
              "location": {
                "type": "geo_point"
              }
            }
          },
          "ip": {
            "type": "ip"
          },
          "mac": {
            "type": "keyword"
          },
          "nat": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "ip": {
                "type": "ip"
              },
              "port": {
                "type": "long"
              }
            }
          },
          "packets": {
            "type": "long"
          },
          "port": {
            "type": "long"
          },
          "registered_domain": {
            "type": "keyword"
          },
          "top_level_domain": {
            "type": "keyword"
          },
          "user": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "domain": {
                "type": "keyword"
              },
              "email": {
                "type": "keyword"
              },
              "full_name": {
                "type": "keyword"
              },
              "group": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "domain": {
                    "type": "keyword"
                  },
                  "id": {
                    "type": "keyword"
                  },
                  "name": {
                    "type": "keyword"
                  }
                }
              },
              "hash": {
                "type": "keyword"
              },
              "id": {
                "type": "keyword"
              },
              "name": {
                "type": "keyword"
              }
            }
          }
        }
      },
      "destination": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "address": {
            "type": "keyword"
          },
          "as": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "number": {
                "type": "keyword"
              },
              "organization": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "name": {
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "bytes": {
            "type": "long"
          },
          "domain": {
            "type": "keyword"
          },
          "geo": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "city_name": {
                "type": "keyword"
              },
              "country_name": {
                "type": "keyword"
              },
              "country_iso_code": {
                "type": "keyword"
              },
              "location": {
                "type": "geo_point"
              }
            }
          },
          "ip": {
            "type": "ip"
          },
          "mac": {
            "type": "keyword"
          },
          "nat": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "ip": {
                "type": "ip"
              },
              "port": {
                "type": "long"
              }
            }
          },
          "packets": {
            "type": "long"
          },
          "port": {
            "type": "long"
          },
          "registered_domain": {
            "type": "keyword"
          },
          "top_level_domain": {
            "type": "keyword"
          },
          "user": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "domain": {
                "type": "keyword"
              },
              "email": {
                "type": "keyword"
              },
              "full_name": {
                "type": "keyword"
              },
              "group": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "domain": {
                    "type": "keyword"
                  },
                  "id": {
                    "type": "keyword"
                  },
                  "name": {
                    "type": "keyword"
                  }
                }
              },
              "hash": {
                "type": "keyword"
              },
              "id": {
                "type": "keyword"
              },
              "name": {
                "type": "keyword"
              }
            }
          }
        }
      },
      "ecs": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "version": {
            "type": "keyword"
          }
        }
      },
      "event": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "category": {
            "type": "keyword"
          },
          "dataset": {
            "type": "keyword"
          },
          "duration": {
            "type": "long"
          },
          "end": {
            "type": "date"
          },
          "kind": {
            "type": "keyword"
          },
          "module": {
            "type": "keyword"
          },
          "severity": {
            "type": "long"
          },
          "start": {
            "type": "date"
          },
          "type": {
            "type": "keyword"
          }
        }
      },
      "flow": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "bgp_next_hop": {
            "type": "ip"
          },
          "bgp_valid_state": {
            "type": "long"
          },
          "client_rep_tags": {
            "type": "keyword"
          },
          "direction": {
            "type": "keyword"
          },
          "dst_mac_oui": {
            "type": "keyword"
          },
          "dst_mask_len": {
            "type": "long"
          },
          "dst_port_name": {
            "type": "keyword"
          },
          "dst_rep_tags": {
            "type": "keyword"
          },
          "input_ifname": {
            "type": "keyword"
          },
          "input_snmp": {
            "type": "keyword"
          },
          "next_hop": {
            "type": "ip"
          },
          "output_ifname": {
            "type": "keyword"
          },
          "output_snmp": {
            "type": "keyword"
          },
          "rep_tags": {
            "type": "keyword"
          },
          "sampling_interval": {
            "type": "long"
          },
          "server_rep_tags": {
            "type": "keyword"
          },
          "service_name": {
            "type": "keyword"
          },
          "service_port": {
            "type": "long"
          },
          "src_mac_oui": {
            "type": "keyword"
          },
          "src_mask_len": {
            "type": "long"
          },
          "src_port_name": {
            "type": "keyword"
          },
          "src_rep_tags": {
            "type": "keyword"
          },
          "tcp_flags": {
            "type": "keyword"
          },
          "tos": {
            "type": "long"
          },
          "traffic_direction": {
            "type": "keyword"
          },
          "traffic_locality": {
            "type": "keyword"
          },
          "vlan": {
            "type": "long"
          },
          "wifi_sta_mac": {
            "type": "keyword"
          },
          "wifi_ssid": {
            "type": "keyword"
          },
          "wifi_wtp_mac": {
            "type": "keyword"
          }
        }
      },
      "geo": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "city_name": {
            "type": "keyword"
          },
          "country_name": {
            "type": "keyword"
          },
          "country_iso_code": {
            "type": "keyword"
          }
        }
      },
      "host": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "architecture": {
            "type": "keyword"
          },
          "hostname": {
            "type": "keyword"
          },
          "name": {
            "type": "keyword"
          },
          "id": {
            "type": "keyword"
          },
          "ip": {
            "type": "ip"
          },
          "os": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "family": {
                "type": "keyword"
              },
              "name": {
                "type": "keyword"
              },
              "platform": {
                "type": "keyword"
              },
              "version": {
                "type": "keyword"
              }
            }
          }
        }
      },
      "log": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "level": {
            "type": "keyword"
          }
        }
      },
      "message": {
        "type": "text",
        "norms" : false
      },
      "network": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "application": {
            "type": "keyword"
          },
          "bytes": {
            "type": "long"
          },
          "iana_number": {
            "type": "long"
          },
          "packets": {
            "type": "long"
          },
          "transport": {
            "type": "keyword"
          },
          "type": {
            "type": "keyword"
          }
        }
      },
      "observer": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "address": {
            "type": "keyword"
          },
          "egress": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "interface": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "alias": {
                    "type": "keyword"
                  },
                  "id": {
                    "type": "keyword"
                  },
                  "name": {
                    "type": "keyword"
                  }
                }
              },
              "vlan": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "id": {
                    "type": "keyword"
                  },
                  "name": {
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "hostname": {
            "type": "keyword"
          },
          "ingress": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "interface": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "alias": {
                    "type": "keyword"
                  },
                  "id": {
                    "type": "keyword"
                  },
                  "name": {
                    "type": "keyword"
                  }
                }
              },
              "vlan": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "id": {
                    "type": "keyword"
                  },
                  "name": {
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "ip": {
            "type": "ip"
          },
          "mac": {
            "type": "keyword"
          }
        }
      },
      "server": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "address": {
            "type": "keyword"
          },
          "as": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "number": {
                "type": "keyword"
              },
              "organization": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "name": {
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "bytes": {
            "type": "long"
          },
          "domain": {
            "type": "keyword"
          },
          "geo": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "city_name": {
                "type": "keyword"
              },
              "country_name": {
                "type": "keyword"
              },
              "country_iso_code": {
                "type": "keyword"
              },
              "location": {
                "type": "geo_point"
              }
            }
          },
          "ip": {
            "type": "ip"
          },
          "mac": {
            "type": "keyword"
          },
          "nat": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "ip": {
                "type": "ip"
              },
              "port": {
                "type": "long"
              }
            }
          },
          "packets": {
            "type": "long"
          },
          "port": {
            "type": "long"
          },
          "registered_domain": {
            "type": "keyword"
          },
          "top_level_domain": {
            "type": "keyword"
          },
          "user": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "domain": {
                "type": "keyword"
              },
              "email": {
                "type": "keyword"
              },
              "full_name": {
                "type": "keyword"
              },
              "group": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "domain": {
                    "type": "keyword"
                  },
                  "id": {
                    "type": "keyword"
                  },
                  "name": {
                    "type": "keyword"
                  }
                }
              },
              "hash": {
                "type": "keyword"
              },
              "id": {
                "type": "keyword"
              },
              "name": {
                "type": "keyword"
              }
            }
          }
        }
      },
      "source": {
        "dynamic": true,
        "type": "object",
        "properties": {
          "address": {
            "type": "keyword"
          },
          "as": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "number": {
                "type": "keyword"
              },
              "organization": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "name": {
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "bytes": {
            "type": "long"
          },
          "domain": {
            "type": "keyword"
          },
          "geo": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "city_name": {
                "type": "keyword"
              },
              "country_name": {
                "type": "keyword"
              },
              "country_iso_code": {
                "type": "keyword"
              },
              "location": {
                "type": "geo_point"
              }
            }
          },
          "ip": {
            "type": "ip"
          },
          "mac": {
            "type": "keyword"
          },
          "nat": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "ip": {
                "type": "ip"
              },
              "port": {
                "type": "long"
              }
            }
          },
          "packets": {
            "type": "long"
          },
          "port": {
            "type": "long"
          },
          "registered_domain": {
            "type": "keyword"
          },
          "top_level_domain": {
            "type": "keyword"
          },
          "user": {
            "dynamic": true,
            "type": "object",
            "properties": {
              "domain": {
                "type": "keyword"
              },
              "email": {
                "type": "keyword"
              },
              "full_name": {
                "type": "keyword"
              },
              "group": {
                "dynamic": true,
                "type": "object",
                "properties": {
                  "domain": {
                    "type": "keyword"
                  },
                  "id": {
                    "type": "keyword"
                  },
                  "name": {
                    "type": "keyword"
                  }
                }
              },
              "hash": {
                "type": "keyword"
              },
              "id": {
                "type": "keyword"
              },
              "name": {
                "type": "keyword"
              }
            }
          }
        }
      },
      "tags": {
        "type": "keyword"
      },
      "type": {
        "type": "keyword"
      }
    }
  }
}
