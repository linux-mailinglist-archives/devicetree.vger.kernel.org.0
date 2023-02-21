Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B19A69D76D
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 01:14:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233463AbjBUAOf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 19:14:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233462AbjBUAOe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 19:14:34 -0500
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2066.outbound.protection.outlook.com [40.107.247.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49DB820D25
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 16:14:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RqoQ2GS1B5uUoCmTBXllRXpZgqYAQzFR98p15pNR7Esi3x+welHty4jl2Z8hIWzKkQS5fwYi5rQ6MHQOntpEPanE/KNSreXDp8YpgVnq9x37H4Q9IObhiRYF2MJ+KpZ9P/z7oKJ04VOhNetOqvFKiiFAMkFoB8CyhGErcMP9ZRzxWhPtRHMdtMrTKZ5I5By7ZVW5Sw5LKXbz2z40NrCktKZ33EresYz7yWWm9fPtvvjU1QWgSMVqXxzQkwKZy4ZPV1kxNwRsVxBEEgCTScLkWidxsJUsFEY4Lqgqei05ns/yY98+BOQNYXziNbSKVv9aooZTvVKjiZUw0fk+jYL6NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SJXBeECvxJX/gTztlFdMPZL7yH0K9PS0g8a6w0bejeM=;
 b=WPgOs5eSQUh9BZDkhb/LZ8wyLeAG4eVQKEOJXdgeJmspjnVQlp41vkBJWPt6Gepp4gcl4PtbSSteiS2VWM7NmlnT0Hv8M9OVAgj4ilwjJaC4jcqS8ngERarYPaWFeC5tW2IEL0UxHAXle7Q5ubIyurxI8+n5/zWPw7cqeM81RdI5PUFpMTsqeR0fkX0K8eqpfYVgUB5XcPsat+zDyF/HG9D3RmeHLw/K9qN8L1J4NJ1iEw2AZnmiLViUkQjXtXsoPypu76go76ddZ/QpdbkuUPAYPxwwKPNtknfkdWU5Bpx7bZF/BdYyCEhce+GTdReo2w6NKtvszIImpUNyX5BkRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SJXBeECvxJX/gTztlFdMPZL7yH0K9PS0g8a6w0bejeM=;
 b=REzBzYE97kfzNFeOhoudh9eXAgQZd3yiEY/Atq0mEJQnSqvIAQ697vZNNStOyFKq1g50sewNUXblfokDoxs/kVep0sQGn62l2tQlVjKPXn0Wz2gwcjfT71af94DMTF7idPRYgRPxO/Y3Rv3mRufshnRsaGRdZXmuOi94huyrFJpHYwBrwIhOe01pWbJ0uyQUQsaE9/74+1upl83Bsxkpk2pswNtGpklm+DHIIuLUG8BLNSnPLddpQsiAJmXFMkF36FNClcMBQPJDUSs+8rCd8cV1sUL/mpXrjqew/IM5+IC3XLsGrhuJSnCMAM0DW0eg/CgNBdIqzU6Jcz6boD2M+A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=suse.com;
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com (2603:10a6:20b:348::19)
 by DU0PR04MB9322.eurprd04.prod.outlook.com (2603:10a6:10:355::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.18; Tue, 21 Feb
 2023 00:14:28 +0000
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::7bca:4b0c:401e:e1bb]) by AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::7bca:4b0c:401e:e1bb%3]) with mapi id 15.20.6111.021; Tue, 21 Feb 2023
 00:14:28 +0000
Message-ID: <4b28da3e-9126-8409-dd9c-3899762e28bb@suse.com>
Date:   Tue, 21 Feb 2023 08:14:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
Content-Language: en-US
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        sebastian.reichel@collabora.com, heiko@sntech.de
References: <cover.1675498628.git.wqu@suse.com>
 <583D2908-ECED-4226-A6CD-683F0D5BEA71@gmail.com>
From:   Qu Wenruo <wqu@suse.com>
In-Reply-To: <583D2908-ECED-4226-A6CD-683F0D5BEA71@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR04CA0021.namprd04.prod.outlook.com
 (2603:10b6:a03:40::34) To AS8PR04MB8465.eurprd04.prod.outlook.com
 (2603:10a6:20b:348::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8465:EE_|DU0PR04MB9322:EE_
X-MS-Office365-Filtering-Correlation-Id: 98c5f810-b247-4f80-a8eb-08db13a098b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7M4pr44su8rFpmvtT8JKmsOS4UlFPOVvHojCX2Y9IQy56SsWq/GJbuaynoviW+x7kI/M1jH10DkmqPBr4uBIw7AxhIPFh1My4AuGEvMOIUoCabSslBZyeC0i86ewnhYspdBDFkzGvoOGcsbs+LTrAJSVOw+fcHnv5yM4ZnZQjxMlZVEfGC2eS8yqcI+sNWfN/tivQQBW2v/Ipq+KSQAW26sw+yxXLNfdiG/klztKSQb66L3bQhIJWRnYDqkshZCGjJrfPJcS0luN46DzufvqsTyRli/TBDoZjZq0M6rXHgU7YT+KjK6xOr+AxipMXbeTvs7APaOEf174reFOlAWKTnzCi/J+HgohOGR2ZxGrnYM5tAzaXanEkWjSwlhOhskfc2vF/+mDGNFB8wmDWsM6A3+K5T5NPNrrDvdtdVJhNkAj5easln8z8LwG5DXyCqx9JMVq7+1vaC6iQsORTAcDRTyCg4RN5iIkm9E+yg8uopOZB9O9Bx9COXAsTgXenP4Mv3JODb1bqNtxGiZ0SFWP3ZLP3rnpVC6RTT5rRMBl6p0qkWD0oRmG2zWqXdMo1nOxEDPHpw6v8RgOfTp45SZeJyAEIN3lAcAn8qQZwsqKnYS7BIlhxmSzH6M5YLowv/MqwkkRWuFrLnSEU2GLE2fjMENwLaBVF1X+o+OWj6u3/S0KKZkcTdVkj9VIgVa23xJ7ij7tYfWqImdMk+4KblaCv/xfFEqaD1vsOQpGA6vfAxDl3Kv5mm82JcGCWP14GuUf
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8465.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(136003)(376002)(396003)(346002)(366004)(39860400002)(451199018)(83380400001)(66946007)(316002)(6506007)(66556008)(66476007)(2616005)(6916009)(6666004)(8676002)(41300700001)(8936002)(53546011)(4326008)(6512007)(186003)(966005)(6486002)(478600001)(36756003)(31696002)(86362001)(2906002)(5660300002)(38100700002)(31686004)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0I4eUJOMlJFWWJ0L2E1UDhUYmFYUitFSUhPVlN1T09ISFdPWk1CeEtHdDRr?=
 =?utf-8?B?WFRrOXhTUnhiVXNrV1NYRmlJVkFUNitiYVFwUGNXLzRoc0dNRUd5NDVLU3ln?=
 =?utf-8?B?WDZlMUpnaVJvdHQvbkxIMXBwdXlZc3JLRzJ4RFR2U1o1czRxUlBSYVB3NGhr?=
 =?utf-8?B?ajZiYnNDNU52aTV0ZzZGa2c4Um4yZ3dQa3lUUUZDZzg4OUlNa0t6Rk0xYXlv?=
 =?utf-8?B?NVNiclpxcGpnaEpsTy9zcTJqRUdmc3hKc2Z5eVQyRDhYaG9LQUpHcjlMV3dV?=
 =?utf-8?B?RkQ1dnl2STdEYUJHelZ5R2N4NVM5K2lnejhGSk44SWRZK05JckxKYUpPR0ha?=
 =?utf-8?B?bEsyYVVYQlBjVmhyWDhrb1JhOGdzaWpjVzR2dk1LQnZJRUF5ZTUrQWRtTVhy?=
 =?utf-8?B?TnppbnE2Q09ZL3J0Y3RUMnRQTEUxQkdsazdwT2RyRWhDUFFRb3ViSmZZdHRi?=
 =?utf-8?B?eWozSDBLZm05WVp3NUIvWjBhSjg0TG1nSWorK2RXOVdqODJqajR1M0hucURH?=
 =?utf-8?B?SkF3NTBwQ0xacms5V0UwVVBJRDFOL1UzaDlwQzMvaFhzZkU5Q0x5eWppdGlo?=
 =?utf-8?B?N2FacmN6V2sxYmhxWjVia3ZOdkVYbGFySTRQQ2o5M3BDWlUyYVVCSnBUZWRk?=
 =?utf-8?B?QlpsNG0yQXpTeVNKV3YvNnRwbC9UenZqekdrTTIzMzJaNjU5VVdZb0U1Njkz?=
 =?utf-8?B?eWpBMDlmaHBOYUdNd0hDMFdTcE9zVVJFSG1vYlErblBmMTNHLzZEMDhNOVQ5?=
 =?utf-8?B?a0UzM1ZTMnM5Ykswd0pDMHh2a2ltU0pqVFhOSnhzZVBvR3g1WnVGN2xocnRN?=
 =?utf-8?B?a1AzUktHUGllYkhZeGR3L3BRazNXL2g4R08wdEtNNDJycFBnQ0g4T2R1TTRH?=
 =?utf-8?B?YmQwUGpHTmtHcVhZaW5KZnR5MENXZkdDUkVDbkRmSWNtS29CVDZtUTRSSUR3?=
 =?utf-8?B?aThKVEZVaTd2QkVSMzVhSHhtUXhuakRuNFVCQjVrU0NHY1djOXRwQ0hUU3ZQ?=
 =?utf-8?B?bGhXVlNQVVdaQ1lCd1JuOVM5NVcrbFdjenZ1UjlCUlFpbkdlWkwxYmE3TWgv?=
 =?utf-8?B?Z3AzdGtFUDJKNXRxS0xxVEdUVEpZK3lIQzdiRERTLy9RZFJHSjdoL3BlaXVK?=
 =?utf-8?B?Wmdta3FKYXNmdHBGTjNCUmFOcEFxRWllS2JoTUlQd3ZkZEJMSHk0NTg5T1Z5?=
 =?utf-8?B?d3owYUZHM004azMwVzBESDJhNnY2eEdxWkI5S0tBTUpVNEQ2ZjVSUndQUGlJ?=
 =?utf-8?B?bkVnajc2ajV0N2tiOHRlTTIzSjVWZ0dYY2NIVllxZng2ZmVCTmJuckwzaFV0?=
 =?utf-8?B?QThSUTJJbWl6ODQ0dnk0bllCQS9SNVV4bjBqVzF0eU9Ba1E4dHRYUzNiazFE?=
 =?utf-8?B?TlY4a21oTllZTnBHdEthRkZIdzV3cHZyd29peU1jQk5iUUUxVzZLc2NvQ21B?=
 =?utf-8?B?M2ZBTmZlMHpaSCtxdGpZeWV6MjMxSStxTkEvWHh3SFlsZVJWbDNqazkyUExR?=
 =?utf-8?B?RE5IK0loOTNTMHhtRlZUTVhLWmxzK3JoT0F5T2huVjJPRHBnSXBWZksvandP?=
 =?utf-8?B?NGNiejJ3QnR5VHc2UklFcjJBeHgzcFdzTi9DRU1tbkRYOGIxbjIxbis0ZzFJ?=
 =?utf-8?B?TzIvZ1dMZWNZNk9CcFJPVWIxQnh0YThVNCtYcE5zNDdGOVhLVUNEVmVzN1lX?=
 =?utf-8?B?TzJ2MndCRlRqMFcrbkV3VkVUR25QcmJPeW5zK0w3WXhVdFdpbXB5bXhHaVcx?=
 =?utf-8?B?Y21DdmZHclZsRUU5cnB3TVZ5SmV2d2VqS2pCTk55bVVpVDRKUTc4VjFDdm9G?=
 =?utf-8?B?R3NBUWlPcVZWNDA1VVhRd0JlTWhBWVhDcGRRWFdqSVhxUFQ3cmJQeW56L3R3?=
 =?utf-8?B?NmpHQ2lZSTBBc0pyL2pBUTJKT0JwYWgxcEh4d0w3d3pVbjBWTEEwbUNnSFli?=
 =?utf-8?B?MDB6ejcvUE14TzJKWnpqMEdQdUU2MFRaaTNZY3AxTEV2bHZvb2wxVXV5dXBn?=
 =?utf-8?B?ckNsYk5HYys1dWp0RjBRQXJ5TnAxT1hZZUFqS2ZrTnkvdXdhZmp3aWx3VXpn?=
 =?utf-8?B?Uzc3eGE1bmMvd2k1cVZMTnNQZHVmbXJTRDh0bTJZTXFjTGFPVCtnVThhYlcr?=
 =?utf-8?B?anhSNys3dTYxbkdyTFRaUDBRSDNwdnFoYjRIb1hIcHI1MFU3amhoSlFyZDd4?=
 =?utf-8?Q?K3ZdH/yV4cK3gdwLWlAK2IE=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98c5f810-b247-4f80-a8eb-08db13a098b1
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8465.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2023 00:14:28.1625
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3hwa31uRDtM3olw/FB/JeSv+rPLpqnIWQXOxnkZp4orOvnu0EsZEJ1/vc9zWL6Ho
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9322
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2023/2/21 02:25, Piotr Oniszczuk wrote:
> 
> 
>> Wiadomość napisana przez Qu Wenruo <wqu@suse.com 
>> <mailto:wqu@suse.com>> w dniu 04.02.2023, o godz. 09:47:
>>
>> This series is based on the existing upstream work from Sebastian
>> Reichel:
>> https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588 <https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588>
>>
>> And I'm a completely newbie to arm64 world, thus if there is something
>> wrong, feel free to point out and I'm pretty happy to learn from the
>> failure.
>>
>> [BACKGROUND]
>> RK3588S and RK3588 have PCIE supports, it's done by the following 3
>> controllers:
>>
>> - PCIE2.0x1 lane @fe180000 (both RK3588S and RK3588)
>> - PCIE2.0x1 lane @fe190000 (both RK3588S and RK3588)
>>  Thes two are all connected to a naneng combo phy each, normally shared
>>  with SATA or USB.
>>
>> - PCIE2.0x1 lane @fe170000 (RK3588 exlusive)
>>  This one is also connected to a naneng combo phy, normally shared
>>  with SATA or USB.
>>
>> - PCIE3.0x4 lanes @fe15000 (RK3588 exclusive)
>>
>> And unlike other boards, ROCK5B is utilizing PCIE extensively, its
>> network controller (RTL8125 2.5Gbps Ethernet) is connected to the
>> PCIE2.0 lane at fe190000, and an M.2 slot is attached to the PCIE3.0x4
>> lanes.
>>
>> [WORKING]
>> Currently the series is able to bring up the PCIE3.0x4 lanes and
>> properly boot from an NVME at that M.2 slot of Rock5B boards.
>>
>> [NOT WORKING]
>> All PCIE2.0 lanes connected to naneng combo phy are not working.
>> I tried forward porting the extra handling from downstream, but it only
>> results hanging at probing (causing RCU stall).
>>
>> [EXTRA WANRING]
>> - PCI MSI initialization warning
>>  WARNING: CPU: 7 PID: 1 at drivers/pci/msi/msi.h:121 
>> pci_msi_setup_msi_irqs+0x38/0x4c
>>
>>  This seems to be caused by the fact that we are still using legcacy
>>  msi irqs?
>>
>>  I checked up the gic and its dts, can not figure out why (all pretty
>>  the same just like rk3399 and rk3568).
>>  Any help would be appreciated.
>>
>> - pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bus 
>> 00-0f] (conflicts with (null) [bus 00-0f])
>>  The vendoer kernel also has this problem, but my RK3399 board with
>>  upstream kernel didn't trigger this at all, but something else like:
>>
>>    pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), 
>> reconfiguring
>>
>>  Then:
>>
>>    pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
>>
>>  Not sure if it's something missing or can be just ignored.
>>
>> [PCI DMESG]
>> With this patchset, the PCI initialization and nvme would look like this:
>>
>> [    0.142984] rockchip-dw-pcie fe150000.pcie: host bridge 
>> /pcie@fe150000 ranges:
>> [    0.143653] rockchip-dw-pcie fe150000.pcie:       IO 
>> 0x00f0100000..0x00f01fffff -> 0x00f0100000
>> [    0.144463] rockchip-dw-pcie fe150000.pcie:      MEM 
>> 0x00f0200000..0x00f0ffffff -> 0x00f0200000
>> [    0.145261] rockchip-dw-pcie fe150000.pcie:      MEM 
>> 0x0900000000..0x093fffffff -> 0x0900000000
>> [    0.154022] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 ob, 8 
>> ib, align 64K, limit 8G
>> [    0.360415] rockchip-dw-pcie fe150000.pcie: PCIe Gen.3 x4 link up
>> [    0.361099] rockchip-dw-pcie fe150000.pcie: PCI host bridge to bus 
>> 0000:00
>> [    0.361731] pci_bus 0000:00: root bus resource [bus 00-0f]
>> [    0.362236] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] 
>> (bus address [0xf0100000-0xf01fffff])
>> [    0.363113] pci_bus 0000:00: root bus resource [mem 
>> 0xf0200000-0xf0ffffff]
>> [    0.363744] pci_bus 0000:00: root bus resource [mem 
>> 0x900000000-0x93fffffff pref]
>> [    0.364450] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400
>> [    0.365005] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x3fffffff]
>> [    0.365583] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x3fffffff]
>> [    0.366159] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x0000ffff 
>> pref]
>> [    0.366801] pci 0000:00:00.0: supports D1 D2
>> [    0.367193] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
>> [    0.368647] pci_bus 0000:01: busn_res: can not insert [bus 01-ff] 
>> under [bus 00-0f] (conflicts with (null) [bus 00-0f])
>> [    0.369681] pci 0000:01:00.0: [1d97:5216] type 00 class 0x010802
>> [    0.370277] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x0000ffff 
>> 64bit]
>> [    0.370975] pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0001ffff 
>> pref]
>> [    0.372130] pci 0000:00:00.0: BAR 0: no space for [mem size 0x40000000]
>> [    0.372742] pci 0000:00:00.0: BAR 0: failed to assign [mem size 
>> 0x40000000]
>> [    0.373381] pci 0000:00:00.0: BAR 1: no space for [mem size 0x40000000]
>> [    0.373988] pci 0000:00:00.0: BAR 1: failed to assign [mem size 
>> 0x40000000]
>> [    0.374628] pci 0000:00:00.0: BAR 14: assigned [mem 
>> 0xf0200000-0xf02fffff]
>> [    0.375259] pci 0000:00:00.0: BAR 6: assigned [mem 
>> 0xf0300000-0xf030ffff pref]
>> [    0.375923] pci 0000:01:00.0: BAR 6: assigned [mem 
>> 0xf0200000-0xf021ffff pref]
>> [    0.376590] pci 0000:01:00.0: BAR 0: assigned [mem 
>> 0xf0220000-0xf022ffff 64bit]
>> [    0.377281] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
>> [    0.377762] pci 0000:00:00.0:   bridge window [mem 
>> 0xf0200000-0xf02fffff]
>> [    0.426841] pcieport 0000:00:00.0: PME: Signaling with IRQ 33
>> [    0.427487] pcieport 0000:00:00.0: AER: enabled with IRQ 33
>> [    0.625353] nvme nvme0: pci function 0000:01:00.0
>> [    0.625774] nvme 0000:01:00.0: enabling device (0000 -> 0002)
>> [    0.717069] nvme nvme0: Shutdown timeout set to 8 seconds
>> [    0.723025] nvme nvme0: allocated 64 MiB host memory buffer.
>> [    0.816820] nvme nvme0: 1/0/0 default/read/poll queues
>> [    0.818079] sdhci-pltfm: SDHCI platform and OF driver helper
>> [    0.820678]  nvme0n1: p1 p2
>>
>>
> 
> Qu, all
> 
> I’m playing with your work on my rock5b as I want to have working Eth on 
> rock5b.
> 
> My code is from 
> https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588 <https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588> + your’s PCIE3 patches.
> 
> SBC boots from sd card, I see PCIE related logs in dmesg. but no rtl8125 
> is detected.
> PCIE logs are like this:
> 
>      8.207810] rockchip-dw-pcie fe150000.pcie: host bridge 
> /pcie@fe150000 ranges:
> [    8.208501] rockchip-dw-pcie fe150000.pcie: Parsing ranges property...
> [    8.209089] rockchip-dw-pcie fe150000.pcie:       IO 
> 0x00f0100000..0x00f01fffff -> 0x00f0100000
> [    8.209944] rockchip-dw-pcie fe150000.pcie:      MEM 
> 0x00f0200000..0x00f0ffffff -> 0x00f0200000
> [    8.210740] rockchip-dw-pcie fe150000.pcie:      MEM 
> 0x0900000000..0x093fffffff -> 0x0900000000
> [    8.218918] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 ob, 8 
> ib, align 64K, limit 8G
> [    9.324473] rockchip-dw-pcie fe150000.pcie: Phy link never came up
> [    9.325186] rockchip-dw-pcie fe150000.pcie: PCI host bridge to bus 
> 0000:00
> [    9.325786] pci_bus 0000:00: root bus resource [bus 00-0f]
> [    9.326266] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] 
> (bus address [0xf0100000-0xf01fffff])
> [    9.327097] pci_bus 0000:00: root bus resource [mem 
> 0xf0200000-0xf0ffffff]
> [    9.327713] pci_bus 0000:00: root bus resource [mem 
> 0x900000000-0x93fffffff pref]
> [    9.328364] pci_bus 0000:00: scanning bus
> [    9.328729] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400
> [    9.329258] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x3fffffff]
> [    9.329807] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x3fffffff]
> [    9.330354] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x0000ffff pref]
> [    9.330984] pci 0000:00:00.0: supports D1 D2
> [    9.331356] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> [    9.331858] pci 0000:00:00.0: PME# disabled
> [    9.332309] pci 0000:00:00.0: vgaarb: pci_notify
> [    9.333735] pci_bus 0000:00: fixups for bus
> [    9.334106] pci 0000:00:00.0: scanning [bus 01-ff] behind bridge, pass 0
> [    9.334731] pci_bus 0000:01: busn_res: can not insert [bus 01-ff] 
> under [bus 00-0f] (conflicts with (null) [bus 00-0f])
> [    9.335668] pci_bus 0000:01: scanning bus
> [    9.336052] pci_bus 0000:01: fixups for bus
> [    9.336416] pci_bus 0000:01: bus scan returning with max=01
> [    9.336903] pci 0000:00:00.0: scanning [bus 01-ff] behind bridge, pass 1
> [    9.337503] pci_bus 0000:00: bus scan returning with max=ff
> [    9.337994] pci 0000:00:00.0: BAR 0: no space for [mem size 0x40000000]
> [    9.338570] pci 0000:00:00.0: BAR 0: failed to assign [mem size 
> 0x40000000]
> [    9.339175] pci 0000:00:00.0: BAR 1: no space for [mem size 0x40000000]
> [    9.339749] pci 0000:00:00.0: BAR 1: failed to assign [mem size 
> 0x40000000]
> [    9.340356] pci 0000:00:00.0: BAR 6: assigned [mem 
> 0xf0200000-0xf020ffff pref]
> [    9.340991] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> 
> and nothing more :-(
> 
> Are you progressing maybe with pcie on rock5b?
> 
> 
fe150000 is the PCIE3.0 controller, on Rock5B, that's the M.2 slot.

But for R8125, it's on a PCIE2.0 controller, which is using naneng combo 
phy.

I'm not able to bring the PCIE2.0 part up yet, it always hangs at 
PCIE2.0 initialization, thus only the PCIE3.0 part is submitted to the list.

Thanks,
Qu
