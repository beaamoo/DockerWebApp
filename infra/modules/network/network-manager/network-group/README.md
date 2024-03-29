# Network Manager Network Groups `[Microsoft.Network/networkManagers/networkGroups]`

This module deploys a Network Manager Network Group.
A network group is a collection of same-type network resources that you can associate with network manager configurations. You can add same-type network resources after you create the network group.

## Navigation

- [Resource Types](#Resource-Types)
- [Parameters](#Parameters)
- [Outputs](#Outputs)
- [Cross-referenced modules](#Cross-referenced-modules)

## Resource Types

| Resource Type | API Version |
| :-- | :-- |
| `Microsoft.Network/networkManagers/networkGroups` | [2023-02-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2023-02-01/networkManagers/networkGroups) |
| `Microsoft.Network/networkManagers/networkGroups/staticMembers` | [2023-02-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2023-02-01/networkManagers/networkGroups/staticMembers) |

## Parameters

**Required parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`name`](#parameter-name) | string | The name of the network group. |

**Conditional parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`networkManagerName`](#parameter-networkmanagername) | string | The name of the parent network manager. Required if the template is used in a standalone deployment. |

**Optional parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`description`](#parameter-description) | string | A description of the network group. |
| [`enableDefaultTelemetry`](#parameter-enabledefaulttelemetry) | bool | Enable telemetry via a Globally Unique Identifier (GUID). |
| [`staticMembers`](#parameter-staticmembers) | array | Static Members to create for the network group. Contains virtual networks to add to the network group. |

### Parameter: `description`

A description of the network group.
- Required: No
- Type: string
- Default: `''`

### Parameter: `enableDefaultTelemetry`

Enable telemetry via a Globally Unique Identifier (GUID).
- Required: No
- Type: bool
- Default: `True`

### Parameter: `name`

The name of the network group.
- Required: Yes
- Type: string

### Parameter: `networkManagerName`

The name of the parent network manager. Required if the template is used in a standalone deployment.
- Required: Yes
- Type: string

### Parameter: `staticMembers`

Static Members to create for the network group. Contains virtual networks to add to the network group.
- Required: No
- Type: array
- Default: `[]`


## Outputs

| Output | Type | Description |
| :-- | :-- | :-- |
| `name` | string | The name of the deployed network group. |
| `resourceGroupName` | string | The resource group the network group was deployed into. |
| `resourceId` | string | The resource ID of the deployed network group. |

## Cross-referenced modules

_None_
