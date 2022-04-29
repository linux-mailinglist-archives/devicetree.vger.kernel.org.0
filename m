Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B47AF514F41
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 17:24:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234758AbiD2P15 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 11:27:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbiD2P15 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 11:27:57 -0400
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2102.outbound.protection.outlook.com [40.107.104.102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCA70D4471
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 08:24:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iib6fwhXrbg1FUG7nKmODW/tRu+sPw2BX6M3paXSOOOjWDRLBNNbPzKlhYh7EqJiuIDm2AorkVB8oXUOtd2EwQ9Md1z0GjEhF3uyj6PtDIF+YvH2yHi7Gtiu8ONK1ta90ORLiSdUc0iMBeMmpmygN6rDCB8YODrXg+3G5J/d2/miF/RFDzYQUGBftv2bRnsSq21vHGv2VXgEd5jxYiMkomZ/9gceYV9QWK+sGDI48ueWCscOCMoQpqJ4V5pTrN3QIaoFB15WEPAjKJgJogFezeGAj/a33QuYficSSY34P0gu2i7f+PG7BnhDx9YBuJphQiXKo7VJ821MyrTc+LTdqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBCO3flUXUgcXIZlL2ut8YBFiXo46oLurcpPOhADT2o=;
 b=CrIs/n5CytbmlqjO4qGN1eyUtX/FHdV1nnQ/wJ3CZt1o75VlUsP/nE6xci90RevemUamhbsR6T6OCX7GDZ4XLcCplW9hc7YaSJmq27ZZo4QDh/Zj1rJcY1CCEEvb+ygUg51J5iCB9nZb4pr94lX364SwuUMcmZ8OfmudcN0cShlSEfNcPm2McTu0cuoJ8m75gicBGun89vjCrZWaOXStdHjCVI/0Cv0dcT0x1TRa0z9LnOvpP1qQI9PZ2EWkLhMJCZjCURNI/r/MLZQX3e3wLc4ab4Fof9ugxL9sZ1aQiuyowxeaRJiyfyhZSxtC327B/B0rXjRClU33M45HNUdanw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GBCO3flUXUgcXIZlL2ut8YBFiXo46oLurcpPOhADT2o=;
 b=VVe5G8YJvVtFQQKdBxMKjOK6qwWfAxF5pox3VI7+AJv/q/0M/TUpN+vExJ44miIb9JnE4mmbOSdicjEruBKgVY3Y6mSHd8wmaaUXo0b35MSnfM1R3agu5QXMWAfWf3XezqruknAgl7xLSdBtzoHRC5LX8V6IRuVpaMQ/+5Z+WN0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by VI1PR1001MB1406.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:dc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Fri, 29 Apr
 2022 15:24:35 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c8f:a38e:4ca3:d480]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c8f:a38e:4ca3:d480%9]) with mapi id 15.20.5206.013; Fri, 29 Apr 2022
 15:24:35 +0000
Message-ID: <3f4da592-d0f7-df6c-5215-c72244bb617e@kontron.de>
Date:   Fri, 29 Apr 2022 17:24:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] arm64: dts: imx8m: correct usb power domain
Content-Language: en-US
To:     Jun Li <jun.li@nxp.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>
Cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "aford173@gmail.com" <aford173@gmail.com>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Jacky Bai <ping.bai@nxp.com>
References: <1651218184-22066-1-git-send-email-jun.li@nxp.com>
 <1241eccc-5267-b241-7da5-ce5e62cdb6a3@kontron.de>
 <PA4PR04MB96405F791707A549A1A69B5F89FC9@PA4PR04MB9640.eurprd04.prod.outlook.com>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <PA4PR04MB96405F791707A549A1A69B5F89FC9@PA4PR04MB9640.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM0PR02CA0080.eurprd02.prod.outlook.com
 (2603:10a6:208:154::21) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 75881fed-eec2-44f8-c3a4-08da29f45dde
X-MS-TrafficTypeDiagnostic: VI1PR1001MB1406:EE_
X-Microsoft-Antispam-PRVS: <VI1PR1001MB1406F6CE71216E9FC9FB9B10E9FC9@VI1PR1001MB1406.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fPvsujPrNx3VPboK9jBDH+RvR16ZIe8dpF+7oEEeCoKT0TYy3IMbq8dZh86lFtjgAhD/uXD6nwGys9SGR6Ulp5um0JoC0X//fSnGh2ZAgjuoxcydWSqHEZ1duqxpoNyo+zVO+ThsVWR/dOuW8U6iwOCvVhElY7LS9Qe8rRTTjlKsqeBbs3NZRAs1B2UH+R2Bxb5aGozx8+m33VU2p6VwQ1Zvzz+NVneJLNyXt9a40G0VhCIkaT36cmJubTzOLAqVpkcSbp3MOLLyfEcrfx3ORR3+1pQCz4JLkz/kEV+r9WmqJUjYVGv/ZfPi6wy+Iz0NWY8eRjbRd3IrqiJKO37cfqP5LT9CwPmDbYTN8ybaaL7nl6HL0zhbABALt4SMs+Q+y20SWGqx8HlnSsAJ2InwTFkOsWNOTWJZRtvcosMr7TCYhJzFj/Fo0AfBGI3/H0uRR/0oyIkQGsDfITNh1PyOHgrnhj9A3feMf+tv06zesGIA/5lRrET0sgYOD8bYcm0hmRlZO9SVRmSBcffIN8HeFzRa6rjzN/9POPzqS1xxUfXeQqEqUZJ+V0VjSZ/2BytVOF9VtnI4wg3570viemdpplydxXa3X60NylhzVrCCR+ulcdG1/widr5vY3NAoP/0X1oianiTmnE9ZM591KlcXFeXBLqXVpL+Ix+pBSQp6iROM5x4NA6UizuBd52Vt77iF5URKoNH4YET54YWMRSu+n8Rt9VXgHgsY8LfkeOizYhffDbsZk+NNqtIa+PwqEDjK
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(2906002)(6486002)(38100700002)(31696002)(86362001)(5660300002)(26005)(6512007)(83380400001)(44832011)(53546011)(508600001)(6506007)(8936002)(316002)(31686004)(4326008)(186003)(66476007)(8676002)(66946007)(66556008)(2616005)(54906003)(110136005)(36756003)(7416002)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWtCT0l4NU9lcEdjN2lKZyt3UmJ0ZUJpYUQybnJnV3pNUWNtWEs1OVF2SXYx?=
 =?utf-8?B?Ly9xYWJOQVJ6QngrbFp6cFRQUDVMaENEdHRtVDc1cnJ0UXkveld2cnFpbFoz?=
 =?utf-8?B?YldVV1NjRzVsV1grQlVNbVVIQ3lqSjZBOVcyZEVDcGZMemlhemlwQ2txNnZI?=
 =?utf-8?B?QTViclZOYVRXcTJ1c3ZmbVA4bkFWenJ4YWtvWW9sN0VUZElLc0tRM0NhRCts?=
 =?utf-8?B?Q0R5Y2c4TE9JVS9NSlVrZUNsa3Z0UzlYZ1R0NkpaQUNHelVBR0QrVm55OUhO?=
 =?utf-8?B?cExuRldydGFEd09TSDJTY1ZJaHNqcWtjczVQWlE3OUc1cjNXR0UyOTZOVG9m?=
 =?utf-8?B?VVNMckRKOGh5VldqQndGVFZGRVJrd210eG5tMmtUYmZMc1dZRHZFdnJYcGcw?=
 =?utf-8?B?cjc5MEVVdEIwdEV3S0F1Yzc1T3ZOT3dpK0RTMlVoVFBBRmhibVlZSGJnVXo2?=
 =?utf-8?B?U2FIb20yZG55dUpSMU5ZaTZ5VGVPdlRMRXVpWW5OeGlQc21NejdvOVAySytB?=
 =?utf-8?B?aDRPWGkxdGVMMkUwMWRFd0M2WUJiRGh0bWtidk1XQ2hJSkdWVVowWG80VEJF?=
 =?utf-8?B?VXl1eGluRnNtQjhlMkFRT2MxTUJnT3IyZXZzSTlVcmRzbGk2dXVFL3Nabk1D?=
 =?utf-8?B?a255MXI3OXIvUDNVSFFaMzdjeXJlbGduUEJjOE90ck0wZnBnTjVOb3BnYjlx?=
 =?utf-8?B?ZmNmM1NaTU1jakU2ZkFUaEdQU1NZZi83OWVGV1I0RGNSTjdNMThucUt3bUZX?=
 =?utf-8?B?MERCVURUYkVTZWFBZlplOEl1RHNDZnIySmlmUFJWd0lweVcvcjlGK0JUYXF2?=
 =?utf-8?B?UVNxNnBjSElQQ01hcjdLanc4T2ZPejVQb3ZHT3A5SXJMMm43cFJrRkxUZVNJ?=
 =?utf-8?B?R3hqY0Qzd0lWazJ6a0VOa1RDVFMySDdoeHMrY2xMejdiSDc3bU9aaHo0c0Fp?=
 =?utf-8?B?ZHNtVm9EeWFLVjhGY3JZSnJCWk1JVWo4VkRlcnUxeWM3ajIzOW9EMmlxZWo0?=
 =?utf-8?B?SVpvQVNFaWhsUmsva2xUUUlEUnJ1QjRnb21ucnRQWDJncG9IM0dQTnFxOUpJ?=
 =?utf-8?B?OW0yNUdLMHkxdTlIbDVRS2d0UVpyVVRvbUFSQTY2S3R0V0h4aXhrUWsyRnBo?=
 =?utf-8?B?b0d3UDZqS2lWN21XS1dxVnBrbXZZaG1QWXBQWDhqb1E1N2l0eHp2NWd6ZnBJ?=
 =?utf-8?B?dDR6WWNpWEl1eTg4WEw1MnJMTEtmZW1NNmcraFd4UXd6R3k3N1ZFS0luU3pX?=
 =?utf-8?B?WUgrNlFRZ1ZhUlgrWFZNYVcxQmhVYjB0dDdoTjk4QU4vQnhHMU1oanZwejZY?=
 =?utf-8?B?NnBpTDdsTzZ3d2k2VDY1RzNsNGR0Nm1hOUx2dTFDL3hvQ3l2Z21Wb2c4TStm?=
 =?utf-8?B?SFRJRlY5OW5ibDJqeDEzOFloZlFqSnoxdkp6NEhGNXA1SDlxdVZlenZsazhZ?=
 =?utf-8?B?UmVyNkdsWXlwVGdqUk13T25zYXZ2VzdOU1BLMUQ4NWpWYXlxSkhXV01vb0tG?=
 =?utf-8?B?VzZaVVdBdjhTeFNkdjBQZ0JtSUprTGFNdGFFQ05ZYjFZZnEyWjBObndIRHJa?=
 =?utf-8?B?bGRwUGRFaktxWkJmZWRiekU1MzBNUzBnMTZXQ2VDVUpjOElncW8xeC93YnV0?=
 =?utf-8?B?UVFKZU1YbWVTRTZpNWNka2VrUlkvU25QZDRobGZtZ3lNT1J2ZTk4clM2TXFq?=
 =?utf-8?B?akxBRkRyVkJ1TUdmTzdpL3JZS0xYbFBmNnFUbVNBS2x3eHluMk9TamFtb2Nq?=
 =?utf-8?B?YnA4TXQ1Q3MzM0FNWWlwR1F1UFZtbk8vZ3F0LzhraTNEdVhVZWxBWHc3ZXBz?=
 =?utf-8?B?UkZqaks0S3g2WGgwVUxWejJjVHdwTElXM1hObUNqdlFtbVoxL1dYa1p2OFc2?=
 =?utf-8?B?dlVYUG9laU5HWE5IR0owMjRRQWE3eVM2bHJlUjI4MDJCNUJiVjFqOGFYMFYy?=
 =?utf-8?B?TWJhZlRuVkgvTGxralJDRTd2SnkvWFgwUFRUck5raWo4WUZVR25YUGZDb3hx?=
 =?utf-8?B?cFA5Ri9lWlgySkFBWkVzaktCbFVoVTBqRGRyRmJOL2RMK3EzSndjY3ZNVmxX?=
 =?utf-8?B?Z1luWHJDdDdYS2pCMlRtTkRvcDFXOUNOZkdPTmR0bXNLZjdSMEg0b0tpWGda?=
 =?utf-8?B?RmlSdHZVNFlqY1lBZlErdXZPUk0ySzBabFlTUks0YmJVczQwYnNOZG56em1u?=
 =?utf-8?B?YUxXNGFQYXpENmR3ZitHYVhZc21oemExVjg2TTJxM3JVQ3psMDF6dXJIK3Vi?=
 =?utf-8?B?STBSWUFFMDBwY0VpajdXSnM2eDFtbDJabTh5ZDl2RThYczJaTEhxdEtXQXJL?=
 =?utf-8?B?M0E3ekJmRk45d3pNc2JBazdkUlFVeis1dDJYeUVjVkFtRkIvS25QV0pxZy9K?=
 =?utf-8?Q?1K1IYvnc+wFxnX3M=3D?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 75881fed-eec2-44f8-c3a4-08da29f45dde
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2022 15:24:35.1235
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fjG4C8lyb1h2cUV/geJqMjn0uKjbHgH0qTokaj8jFZmvV8te67NKFVKFnIece0rh/Xy+FGIf3ryFUHSfunoUDeNGujqyO3oCkSs4oWo8m6o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR1001MB1406
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 29.04.22 um 12:09 schrieb Jun Li:
>> -----Original Message-----
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>> Sent: Friday, April 29, 2022 5:04 PM
>> To: Jun Li <jun.li@nxp.com>; shawnguo@kernel.org
>> Cc: robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
>> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
>> dl-linux-imx <linux-imx@nxp.com>; l.stach@pengutronix.de;
>> aford173@gmail.com; tharvey@gateworks.com; devicetree@vger.kernel.org;
>> linux-arm-kernel@lists.infradead.org; Jacky Bai <ping.bai@nxp.com>
>> Subject: Re: [PATCH] arm64: dts: imx8m: correct usb power domain
>>
>> Am 29.04.22 um 09:43 schrieb Li Jun:
>>> pgc_otg1/2 is for each usb phy and pgc_hsiomix is shared by 2 usb
>>> controllers, so assign those power domains to correct controller and
>>> phy node, decouple the pgc_otg1/2 from pgc_hsiomix since there is no
>>> hardware dependency.
>>>
>>> Suggested-by: Jacky Bai <ping.bai@nxp.com>
>>> Signed-off-by: Li Jun <jun.li@nxp.com>
>>
>> Thanks for the patch!
>>
>> In my previous test I probably made some mistake. The second USB controller
>> was kept enabled by the onboard hub. When I disable the second port and test
>> the patch with the first port only, resuming from autosuspend still doesn't
>> work, even when I keep the HSIOMIX as parent for OTG1/2. So there's probably
>> still something missing...
> 
> My test was done with both second USB port and PCIE disabled, so
> while autosuspend of first port, the pgc_hsiomix is off, it works
> fine on my HW:
> 
> root@imx8mqevk:~# [   81.021437] usb 1-1: USB disconnect, device number 3

Are you testing on i.MX8MM/N EVK? Your CLI prompt says imx8mqevk, which
seems a bit misleading...

On which kernel version are you testing? I'm on 5.18-rc4.

>  
> root@imx8mqevk:~# cat /sys/kernel/debug/pm_genpd/usb-otg1/current_state
> on
> root@imx8mqevk:~# cat /sys/kernel/debug/pm_genpd/hsiomix/current_state 
> off-0
> root@imx8mqevk:~# cat /sys/kernel/debug/pm_genpd/usb-otg2/current_state                                                                                                                      
> off-0
> root@imx8mqevk:~# [  182.196450] usb 1-1: new high-speed USB device number 4 using ci_hdrc
> [  182.356130] usb-storage 1-1:1.0: USB Mass Storage device detected
> [  182.357632] scsi host0: usb-storage 1-1:1.0
> [  183.367923] scsi 0:0:0:0: Direct-Access     SanDisk  Ultra            1.00 PQ: 0 ANSI: 6
> [  183.370559] sd 0:0:0:0: [sda] 60062500 512-byte logical blocks: (30.8 GB/28.6 GiB)
> [  183.372332] sd 0:0:0:0: [sda] Write Protect is off
> [  183.373061] sd 0:0:0:0: [sda] Write cache: disabled, read cache: enabled, doesn't support DPO or FUA
> [  183.384709] sd 0:0:0:0: [sda] Attached SCSI removable disk
> [  184.207552] EXT4-fs (sda): mounted filesystem with ordered data mode. Quota mode: none.
> 
> root@imx8mqevk:~# ls /sys/bus/platform/devices/*usb* -d
> /sys/bus/platform/devices/32e40000.usb
> /sys/bus/platform/devices/32e40200.usbmisc
> /sys/bus/platform/devices/usbphynop1

The PCIe nodes, usbotg2, usbphynop2 and usbmisc2 are disabled and
devices on the autosuspended first port aren't detected:

root@kontron-mx8mm:~# cat /sys/kernel/debug/pm_genpd/usb-otg1/current_state
on
root@kontron-mx8mm:~# cat /sys/kernel/debug/pm_genpd/usb-otg2/current_state
off-0
root@kontron-mx8mm:~# cat /sys/kernel/debug/pm_genpd/hsiomix/current_state
off-0

root@kontron-mx8mm:~# ls /sys/bus/platform/devices/*usb* -d
/sys/bus/platform/devices/32e40000.usb
/sys/bus/platform/devices/32e40200.usbmisc
/sys/bus/platform/devices/usbphynop1

> 
> So basically you are saying your first port cannot work even both pgc_otg1 and
> pgc_hsiomix are on if you disable 2nd port? 

Exactly. I really don't understand it, but as soon as I disable the
second port the detection of a device on the suspended first port stops
working. When I force the port on, the device is detected:

root@kontron-mx8mm:~# echo on > /sys/bus/usb/devices/usb1/power/control
root@kontron-mx8mm:~# [  194.523296] usb 1-1: new full-speed USB device
number 2 using ci_hdrc

