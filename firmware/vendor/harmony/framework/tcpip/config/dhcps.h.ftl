<#--
/*******************************************************************************
  DHCP server Freemarker Template File

  Company:
    Microchip Technology Inc.

  File Name:
    dhcps.h.ftl

  Summary:
    DHCP server Freemarker Template File

  Description:

*******************************************************************************/

/*******************************************************************************
Copyright (c) 2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS  WITHOUT  WARRANTY  OF  ANY  KIND,
EITHER EXPRESS  OR  IMPLIED,  INCLUDING  WITHOUT  LIMITATION,  ANY  WARRANTY  OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A  PARTICULAR  PURPOSE.
IN NO EVENT SHALL MICROCHIP OR  ITS  LICENSORS  BE  LIABLE  OR  OBLIGATED  UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,  BREACH  OF  WARRANTY,  OR
OTHER LEGAL  EQUITABLE  THEORY  ANY  DIRECT  OR  INDIRECT  DAMAGES  OR  EXPENSES
INCLUDING BUT NOT LIMITED TO ANY  INCIDENTAL,  SPECIAL,  INDIRECT,  PUNITIVE  OR
CONSEQUENTIAL DAMAGES, LOST  PROFITS  OR  LOST  DATA,  COST  OF  PROCUREMENT  OF
SUBSTITUTE  GOODS,  TECHNOLOGY,  SERVICES,  OR  ANY  CLAIMS  BY  THIRD   PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE  THEREOF),  OR  OTHER  SIMILAR  COSTS.
*******************************************************************************/
-->
<#if CONFIG_TCPIP_STACK_USE_DHCP_SERVER == true>
/*** DHCP Server Configuration ***/
#define TCPIP_STACK_USE_DHCP_SERVER
#define TCPIP_DHCPS_TASK_PROCESS_RATE                               ${CONFIG_TCPIP_DHCPS_TASK_PROCESS_RATE}
#define TCPIP_DHCPS_LEASE_ENTRIES_DEFAULT                           ${CONFIG_TCPIP_DHCPS_LEASE_ENTRIES_DEFAULT}
#define TCPIP_DHCPS_LEASE_SOLVED_ENTRY_TMO                          ${CONFIG_TCPIP_DHCPS_LEASE_SOLVED_ENTRY_TMO}
#define TCPIP_DHCPS_LEASE_REMOVED_BEFORE_ACK                        ${CONFIG_TCPIP_DHCPS_LEASE_REMOVED_BEFORE_ACK}
<#if CONFIG_TCPIP_DHCP_SERVER_DELETE_OLD_ENTRIES == true>
#define TCPIP_DHCP_SERVER_DELETE_OLD_ENTRIES                        true
<#else>
#define TCPIP_DHCP_SERVER_DELETE_OLD_ENTRIES                        false
</#if>
#define TCPIP_DHCPS_LEASE_DURATION	TCPIP_DHCPS_LEASE_SOLVED_ENTRY_TMO

<#if CONFIG_TCPIP_DHCP_SERVER_IDX0 == true>
/*** DHCP Server Instance 0 Configuration ***/
<#if CONFIG_TCPIP_DHCPS_DEFAULT_IP_ADDRESS_RANGE_START_IDX0?has_content>
#define TCPIP_DHCPS_DEFAULT_IP_ADDRESS_RANGE_START_IDX0             "${CONFIG_TCPIP_DHCPS_DEFAULT_IP_ADDRESS_RANGE_START_IDX0}"
<#else>
#define TCPIP_DHCPS_DEFAULT_IP_ADDRESS_RANGE_START_IDX0             0
</#if>

<#if CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_IP_ADDRESS_IDX0?has_content>
#define TCPIP_DHCPS_DEFAULT_SERVER_IP_ADDRESS_IDX0                  "${CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_IP_ADDRESS_IDX0}"
<#else>
#define TCPIP_DHCPS_DEFAULT_SERVER_IP_ADDRESS_IDX0                  0
</#if>

<#if CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_NETMASK_ADDRESS_IDX0?has_content>
#define TCPIP_DHCPS_DEFAULT_SERVER_NETMASK_ADDRESS_IDX0             "${CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_NETMASK_ADDRESS_IDX0}"
<#else>
#define TCPIP_DHCPS_DEFAULT_SERVER_NETMASK_ADDRESS_IDX0             0
</#if>

<#if CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_GATEWAY_ADDRESS_IDX0?has_content>
#define TCPIP_DHCPS_DEFAULT_SERVER_GATEWAY_ADDRESS_IDX0             "${CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_GATEWAY_ADDRESS_IDX0}"
<#else>
#define TCPIP_DHCPS_DEFAULT_SERVER_GATEWAY_ADDRESS_IDX0             0
</#if>

<#if CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_PRIMARY_DNS_ADDRESS_IDX0?has_content>
#define TCPIP_DHCPS_DEFAULT_SERVER_PRIMARY_DNS_ADDRESS_IDX0         "${CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_PRIMARY_DNS_ADDRESS_IDX0}"
<#else>
#define TCPIP_DHCPS_DEFAULT_SERVER_PRIMARY_DNS_ADDRESS_IDX0         0
</#if>

<#if CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_SECONDARY_DNS_ADDRESS_IDX0?has_content>
#define TCPIP_DHCPS_DEFAULT_SERVER_SECONDARY_DNS_ADDRESS_IDX0       "${CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_SECONDARY_DNS_ADDRESS_IDX0}"
<#else>
#define TCPIP_DHCPS_DEFAULT_SERVER_SECONDARY_DNS_ADDRESS_IDX0       0
</#if>

#define TCPIP_DHCP_SERVER_INTERFACE_INDEX_IDX0                      ${CONFIG_TCPIP_DHCP_SERVER_INTERFACE_INDEX_IDX0}

<#if CONFIG_TCPIP_DHCP_SERVER_POOL_ENABLED_IDX0 == true>
#define TCPIP_DHCP_SERVER_POOL_ENABLED_IDX0                         true
<#else>
#define TCPIP_DHCP_SERVER_POOL_ENABLED_IDX0                         false
</#if>
</#if>

<#if CONFIG_TCPIP_DHCP_SERVER_IDX1 == true>
/*** DHCP Server Instance 1 Configuration ***/
<#if CONFIG_TCPIP_DHCPS_DEFAULT_IP_ADDRESS_RANGE_START_IDX1?has_content>
#define TCPIP_DHCPS_DEFAULT_IP_ADDRESS_RANGE_START_IDX1             "${CONFIG_TCPIP_DHCPS_DEFAULT_IP_ADDRESS_RANGE_START_IDX1}"
<#else>
#define TCPIP_DHCPS_DEFAULT_IP_ADDRESS_RANGE_START_IDX1             0
</#if>

<#if CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_IP_ADDRESS_IDX1?has_content>
#define TCPIP_DHCPS_DEFAULT_SERVER_IP_ADDRESS_IDX1                  "${CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_IP_ADDRESS_IDX1}"
<#else>
#define TCPIP_DHCPS_DEFAULT_SERVER_IP_ADDRESS_IDX1                  0
</#if>

<#if CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_NETMASK_ADDRESS_IDX1?has_content>
#define TCPIP_DHCPS_DEFAULT_SERVER_NETMASK_ADDRESS_IDX1             "${CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_NETMASK_ADDRESS_IDX1}"
<#else>
#define TCPIP_DHCPS_DEFAULT_SERVER_NETMASK_ADDRESS_IDX1             0
</#if>

<#if CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_GATEWAY_ADDRESS_IDX1?has_content>
#define TCPIP_DHCPS_DEFAULT_SERVER_GATEWAY_ADDRESS_IDX1             "${CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_GATEWAY_ADDRESS_IDX1}"
<#else>
#define TCPIP_DHCPS_DEFAULT_SERVER_GATEWAY_ADDRESS_IDX1             0
</#if>

<#if CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_PRIMARY_DNS_ADDRESS_IDX1?has_content>
#define TCPIP_DHCPS_DEFAULT_SERVER_PRIMARY_DNS_ADDRESS_IDX1         "${CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_PRIMARY_DNS_ADDRESS_IDX1}"
<#else>
#define TCPIP_DHCPS_DEFAULT_SERVER_PRIMARY_DNS_ADDRESS_IDX1         0
</#if>

<#if CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_SECONDARY_DNS_ADDRESS_IDX1?has_content>
#define TCPIP_DHCPS_DEFAULT_SERVER_SECONDARY_DNS_ADDRESS_IDX1       "${CONFIG_TCPIP_DHCPS_DEFAULT_SERVER_SECONDARY_DNS_ADDRESS_IDX1}"
<#else>
#define TCPIP_DHCPS_DEFAULT_SERVER_SECONDARY_DNS_ADDRESS_IDX1       0
</#if>

#define TCPIP_DHCP_SERVER_INTERFACE_INDEX_IDX1                      ${CONFIG_TCPIP_DHCP_SERVER_INTERFACE_INDEX_IDX1}

<#if CONFIG_TCPIP_DHCP_SERVER_POOL_ENABLED_IDX1 == true>
#define TCPIP_DHCP_SERVER_POOL_ENABLED_IDX1                         true
<#else>
#define TCPIP_DHCP_SERVER_POOL_ENABLED_IDX1                         false
</#if>
</#if>

</#if>

<#--
/*******************************************************************************
 End of File
*/
-->
