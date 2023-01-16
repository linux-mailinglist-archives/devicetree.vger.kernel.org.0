Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F0F866BCF7
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 12:35:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbjAPLfA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 06:35:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbjAPLe7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 06:34:59 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2093.outbound.protection.outlook.com [40.107.20.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D49010E6
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 03:34:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cs97hQ7fOICTmlnXUL0mOAzk2TqCwjIQLE6mKbIKcxWOvbH6g60r4/XUK5siKJAt8+5rJcNTCzE4tuDL238q5xK0ofy47itTSnsMxjrzIKZK+HPajoiy7MFXlJlxrL60nLke7fYUAruK2be0z2xr8JB1PjOD2tgWeUa6q+14Zgg3J6cGYDXNoMJQ4mxKFBBoBFH8MxHxpHgVpL4JGeOT9IwX14De4tCDlecauRt3yBgsLb5F9f8Vx/U2MYdwF+1LTpXYMNUC+i6W8j7VAM7A+HcGmQPLrJOZ64e31SfUMr3rwu0zNdpg/8P1dBqLVoZcSOe1DLa89dRK0cven8zpDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wIELrYJORleNNbSWoi5eQFmiQeXX9TOPzgHQxzvcVxI=;
 b=O7SXJAoOjIz2aOJ8FiwkApDmm1Cf1YV139eukC7DDWmW+NWJdM6VPpmT1KWH3PdMu4aGtJEwnuQEqgb0ifZiDxWVJDb9tv8akBGNoCBjl3tj2Ce8HTv2cIDe6oBiHTOeWx0EzCCk6f0yELJw+lxHFp1hRrB01L7bhwxcGbyXkgNNNpIUa3zb7WlSzS5qIxRBoorxWzjfC/VZVPm3T4L7xfXu54W9OuwoGGnpw+1vj4QAWoijGdcS2eUzbs/xlRxM/znMCx4QkedK44uQNrZdFlMBVijIcwlxdEGSJ8RWsSuXweX6TY8Vcyg3ZAiao9nim1ZzN2a7OvMSgI31LvPsLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wIELrYJORleNNbSWoi5eQFmiQeXX9TOPzgHQxzvcVxI=;
 b=SQhQf/4s/YGJHI5k9a+99gIqO7ysHMTQlF2Yrdv/YYupBuTjMVIFxeYfI2i/yj9MZQWOHFjG8wdAIskFFWmcBLUfiRm+oV4v6wlKMSZFxWN0mFbzVAquT189GpUUaiIReqSwlkI+fKGUWukHzVOdw3u/Zf0uoNfrHrkefcTDG0Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by PRAPR10MB5323.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:298::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Mon, 16 Jan
 2023 11:34:55 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863%9]) with mapi id 15.20.5986.018; Mon, 16 Jan 2023
 11:34:55 +0000
Message-ID: <42cf3742-e33d-a1fb-205b-6ed7f07d2b91@kontron.de>
Date:   Mon, 16 Jan 2023 12:34:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for Data Modul i.MX8M
 Plus eDM SBC
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Cc:     Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20221218051800.495932-1-marex@denx.de>
 <20221218051800.495932-2-marex@denx.de>
 <7b77825d-cbdb-0150-c30b-aa97fa39fe27@pengutronix.de>
 <748a94f5-6977-9985-a547-ef3897db4bb4@denx.de>
 <3b945215-83ae-cd3c-e863-97f71cc32622@kontron.de>
 <0ef9774e-4d0a-e71e-ede1-c0252bab3170@denx.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <0ef9774e-4d0a-e71e-ede1-c0252bab3170@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR2P278CA0032.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:47::8) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|PRAPR10MB5323:EE_
X-MS-Office365-Filtering-Correlation-Id: b8ed6f18-32c4-4ac4-265e-08daf7b5b0ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MPk+nY3PUZI33D5g4BaGykqaEaR2RVgFPuyCnrxKQvtlgoihjmmCTbFZeT/qwK+CjNIFWJ7jjF2bXhhv3un5JKkAMd5eqAbjRRbHvacJuXNFnL1k7z+e5348dBcMs1iHo7PMgduKnr3On8XyeG3u+AMlYZr1Px007TcJ5TtEbZTeU8R4rC4eXvREKouX44m89XE543CU//PDS5Pr9IWFwCrDPZmmZ6HUF+Pl/lXUsk8TRf/KYfuupOo7OHo+/coUhdy9h789QsA7bDYKzH47kTKK9D64DIQG6jHy9VegxkIEei/n4cpPDwRoAKT6Qm+1R71ZyEU+ph/raedUkNVxVMLsmWaoYaS1XTT47CvVAq5prdAl/f7gcrOY0hWdItW77MLf63IiCwcOFP7gkpOxKyl4HqHulEcKvxKi65dm0of46J24mKJ1GiQ8DgSIOu92lytsy1WWuVx9qCcn481BGVDEWuNDL9FxduJLMhw/ozzt0fXy9oy4ZmEmeeNX29OU8CLO+GsxEXvHPmvaL6KGJzyFs5fif7S8w5M+a+0fiMocJFcgISZ43dvnwwXl3kfLZF1GdDhoXuQ2ujtgdhwhpsFyHDwMDK5y/Nl5GxWhbpvODjJO3BQGpRN3sjOQUYCe2XPpQXhKKya0Mh2iUNwEQ5cV6tYfV/tO5map72EST+y3imopRJNQX85sPIVNtH59Xn60RwXiLjHFvXU/fUeKdlajqM6sWNVRaWX2GXf3hdMO/DnsokU1dFzcdHVVm97htMNWresGj7N9qyJjjXclHqlHKR75SEC+xdiRoX30r/s=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(136003)(366004)(376002)(39860400002)(346002)(451199015)(31696002)(86362001)(36756003)(6512007)(186003)(8676002)(4326008)(53546011)(26005)(66556008)(66946007)(2616005)(66476007)(41300700001)(6506007)(316002)(110136005)(54906003)(6666004)(478600001)(6486002)(44832011)(7416002)(38100700002)(966005)(2906002)(83380400001)(5660300002)(8936002)(31686004)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?enhkVjNENkVhSHFOdFQ2Z0VNelMrVnlNZE5UZEJvZjlQS05TUU4yTW5KY1pr?=
 =?utf-8?B?dFBvRHBJT2VDeGNLcDh2MXkzU2FqSGpFbkdkcWs1L09lMnBWUHZwYXZWY3cz?=
 =?utf-8?B?S2NudGRCeGVndUJrSGlHSytMOFp5dkc0SEV6SHlrdGE3bHRLWnd5YWVtakpV?=
 =?utf-8?B?ZkZzUElHbXhBc2FSYkJ4RWRuaDVUVzZ0OVpUOWxtOU04cXEwaEVsZmxZTGVZ?=
 =?utf-8?B?VHZodm5zQ2ZVSkJsV09VdFB2TjREbnFwQ1hocUZEaVhqRTZSMXJGbWZTbW14?=
 =?utf-8?B?RXlUQU9ETVF4RGlPNEV0MkF1dldTNGkvRklUZW9KU3ZlUUE1ajA3SC9iU3VS?=
 =?utf-8?B?WlMxWHgwbGdIcWhiMjRUZi9BMVdiSmkzaFE3SGtXSnFJWHRldE1CUThkc3FF?=
 =?utf-8?B?U2lWMjRUWGJMMWFmM1Z3M2YrYysrc3lRaEJvaE9QeHZEWlBlRzlieUhMcmhB?=
 =?utf-8?B?R3VhOWRmNEFUcEdtN3F1VER1eTJIdC84bTJrdkR6WHVNZ2RyNkJsZlVRTXVS?=
 =?utf-8?B?a2YwRGpKQUFrclc4WktmaDMrZTJWbGh5N2N6dVVUdlZST21GdnlKRGdCWEIw?=
 =?utf-8?B?WjU1eG9pT05sTm9LKy8rOTZOREdnbWZQMFRsNUdia0RUQXVmaUM0bFhFNDFy?=
 =?utf-8?B?OGxSL1RLTmdWVGlseWoyM1Q4NUlzNjdWVE1NQlR4d2lVQUV6cE5JRDJJVjJX?=
 =?utf-8?B?MitGd1RUYUVhRm9wR3E0QUdvNFlrRDI5bFo3YkNjdjZsakE0a2x4SEd1cmdx?=
 =?utf-8?B?VVZvN25XNnhSQUE5LyszalduUHRZRThuZFdXSEhJM2R6YkVHTCtzbVlRNnov?=
 =?utf-8?B?andEZFBBTXI5ZUliaDF4L0ZQQ3RraXEyb3h5SDNZS2tpeU5HQ1dlbzFvWTlN?=
 =?utf-8?B?K1NsR0J3Y0QyeWl2a3pLN05zMHVpVU9heXYwanVxbXMyQUtUb1U5T1c4eHZW?=
 =?utf-8?B?VzErdnVGQ1RNc0FVVW1WVUlrSkFjOXprTVBTRmlyY2JKSWFiQS9OQlE4TmhK?=
 =?utf-8?B?MVB1ZHF3MU90a0l3M2FWaWk3SXBJc1N0aUlyOTNyRjdFSzF3YkV3MGdqczRH?=
 =?utf-8?B?V3ZHRmZscHZTZjdCR0VJR0xqSHcyeGNqUUtFdU55NjdIaTYyOGFCUEJ1WUtr?=
 =?utf-8?B?aFlPU1hTKzJhZ0ZuN2hWR3B3T3NFS04zZFJmM0x3bFZyZGxtTkZyK2x1ZEVO?=
 =?utf-8?B?ZC9KVUpDWjI4RVBUUjYrR3UyZGNWdE52YnRhUXRWbDhtZWVoQ0JuVlZqbWls?=
 =?utf-8?B?SEFZeU1CeVFxc09LRXVhT0tyVzczNFEvaFQ2bXI3L1NIMmJvOVhRaTgvd1dq?=
 =?utf-8?B?b1BlNlNzOGZJV0dBRXZRVnFEQzRwUXZJRlhCcTNmY05lb2szQUdLMEhBOTlR?=
 =?utf-8?B?MW1QcElkNmlMb2VSWEdleEFEbUxkOTdXL2ZuZXNndFY0dWJ5eVhzdjRIaWsv?=
 =?utf-8?B?YkxLTFYzNmROVjhXTkt1RjE1a2ZWMzVDQzJMWCttMktibTZoU2NtVUZtaWwz?=
 =?utf-8?B?SEF3WmVjYU8wdTZDSUhaTDBIRllUMFQ1SzNweHgzTWNUQVF4SW5DT1dKU0xC?=
 =?utf-8?B?Ykl4b1JZczh5MlJHQlZVcm9OeGt6V0V4NzFwRlJsQ3kxUjhQak9sSmIwRGhH?=
 =?utf-8?B?Vk1DZGROR1pVL3JrRzU4YUd5SzhBWFU2eFl1SUFlOHNJcFBqZ2NYYU0yLzB5?=
 =?utf-8?B?UjViN1ZERXAyakNRM0xCeXRVLzhpQTJIWStxR2J2S1h2N25nck5mYTN5ZkZM?=
 =?utf-8?B?NVVPWGJDYVBGWGI4UmR2czByc2VNWmpneFMxMTdJanI1ZUdKR2hURVdiWmNX?=
 =?utf-8?B?WnBIUU1vMzJ0ZERpZU1QN2xwNDFGUW0zNnVEM09BeG5yQWV0bjdIVW9BanMw?=
 =?utf-8?B?UGorZnV4ajMzanlSbEhpb0I2LzdpVmRLQ3ZpS3dpbU9VUE1EOFhTc3l2QjFM?=
 =?utf-8?B?THZnZ0pibUhDVS9YSW1zemE1MWs3TEJTc3BqUVZYL2NidWFOTGhpQjA4c3Z4?=
 =?utf-8?B?WUx3UGZ5V3doMm1TcTNURCtOcjRtUnRETnUxbGI4RTc3L29wZndHUG5JeGNE?=
 =?utf-8?B?b2pXREh2ZmUvejVpSUZtaHNSZXdkYThLaVBqUXB2ZlNLMXljaG1VL3BjMExs?=
 =?utf-8?B?cDhkbGxkYWZnb3RDRUdMekd2a0ZnUXhmQWxzcEs3OW5YeUNtQ0RHSm1LM0Q2?=
 =?utf-8?B?NGc9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b8ed6f18-32c4-4ac4-265e-08daf7b5b0ec
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2023 11:34:55.7316
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wsjH18M6jHTAxReA/+WgLQKpQLv+Wmu8dJNGwxlUk7jdi4ALR54pZd5JlUgJdaZ/L7FAKP4lri1J9k+meOYpoU1XgM6Q/UTi3+THAaORJ6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PRAPR10MB5323
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16.01.23 12:25, Marek Vasut wrote:
> On 1/16/23 11:51, Frieder Schrempf wrote:
>> On 16.01.23 11:39, Marek Vasut wrote:
>>> On 1/11/23 08:38, Ahmad Fatoum wrote:
>>>> Hello Marek,
>>>
>>> Hi,
>>>
>>> [...]
>>>
>>>> Could you share your get_maintainers.pl invocation? I'd like to
>>>> adjust the reviewer entry in MAINTAINERS, so such patches get
>>>> into our kernel@pengutronix.de inbox as well.
>>>
>>> Plain get_maintainer -f path/to/dts
>>>
>>>> Some more comments below.
>>>>
>>>>> +    pmic: pmic@25 {
>>>>> +        compatible = "nxp,pca9450c";
>>>>> +        reg = <0x25>;
>>>>> +        pinctrl-names = "default";
>>>>> +        pinctrl-0 = <&pinctrl_pmic>;
>>>>> +        interrupt-parent = <&gpio1>;
>>>>> +        interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
>>>>> +        sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
>>>>
>>>> Here you assume GPIO1_IO04 is muxed as GPIO.
>>>>
>>>>> +    pinctrl_usdhc2: usdhc2-grp {
>>>>> +        fsl,pins = <
>>>>> +            MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT        0xc1
>>>>
>>>> Here you mux it for USDHC2_VSELECT though. Is this intended?
>>>
>>> That's a good question, other DTs do the same thing, I suspect the
>>> sd-vsel-gpios could be dropped,
>>
>> The sd-vsel-gpios is only needed when the hardware has an arbitrary GPIO
>> connected to the SD_VSEL signal of the PCA9450. IMHO, if SD_VSEL is
>> connected to the VSELECT signal it would be better to drop sd-vsel-gpios.
> 
> Current practice does not match this statement however, notice how they
> are all gpio 1 4 :
> 
> $ git grep sd-vsel-gpios
> Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml:
> sd-vsel-gpios:
> arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi: sd-vsel-gpios =
> <&gpio1 4 GPIO_ACTIVE_HIGH>;
> arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts:
> sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
> arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi: sd-vsel-gpios =
> <&gpio1 4 GPIO_ACTIVE_HIGH>;
> arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi: sd-vsel-gpios =
> <&gpio1 4 GPIO_ACTIVE_HIGH>;

Yes, but these are probably all copy-pasted from somewhere. Maybe from
my original Kontron DT (before [1]) where I was actually using
sd-vsel-gpios.
But these DTs all mux the VSELECT signal to the GPIO1_IO04 pad, so
sd-vsel-gpios is useless.

> 
>>> but as long as it is not outright
>>> harmful, it can be used for backward compatibility to support less
>>> complete OSes which may not handle the eSDHC VSELECT bit , so I figured
>>> it is good to keep both options.
>>
>> Would be interesting what OSes you have in mind? The eSDHC
>> driver/hardware should always handle the VSELECT signal, no?
> 
> Not necessarily, but the ones I am aware of (U-Boot, Linux) do handle
> VSELECT.

Ok, but even if VSELECT is not handled. Setting sd-vsel-gpios doesn't
fix this as long as the GPIO1_IO04 pad is muxed to VSELECT.

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?id=eef2c0217e02b6c7ed5b10b82ea944127145e113
