Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A417516D51
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 11:25:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1384160AbiEBJ2U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 05:28:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353412AbiEBJ2Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 05:28:16 -0400
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2131.outbound.protection.outlook.com [40.107.104.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE9A63BBED
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 02:24:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JTXIGR1GbouCSDVCYyCmzF4naIkmiwkxJcvHMFAAksiu+1bM71zdnPcKnPUZliRfFVK4QPqKyOvaKd0v6ojed+HpcvxsNxHS0ypDcq1cUPG1RA+tPpPaYmXg72pfVaQcJMcNMSGPHB8dVVinczCJPwr3uwHJouEQ1nX9UoKPtd4CKP4vpqkdIb21KD+b0qeX+x5SQD7r/kvpTgKhYhwotvEvXsaUd0FFAMEYw0Fdi/4dLLqMpRpmlQ0eQ/v1dH+s6Dz2R0MoHpB1/bWUtbJ1nslnKVHxCHsyYYwTCGoFD1PSZen6zfSNLzKVCPya7SUs9Ru/tx2QrwARa1P29yddOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W4k8hyP8lkBPVs2reXCworrmuwJoFAKvcE8Vor1pXkE=;
 b=PvVRKrECYR+cAoh3nGe/mlTxLKWjgm2Dr+dfZkVgxoUILh99rvRPX00/6OvoA8i6A6RUyPqvhbTaGUsAJWTF68wxUZLk0vRrBfq1puDCkKWv8tjTiQyZ9JdlCNJ9wFE33NowEg2teZWTY9SAmmgGZTlfGQQp1f+I7D4rKSAPhU0ohR5+FxYuTh+Fh8P7+7om13Z50DSDNVcX4Oaay5i/VPR0vBvHqgfiZrrJIYsWRieyP7N9uhmeykwgrS/gGImeOjURq4VEmqKbJy3UAB+bcwTXdDtiAsp0NoXKOxyhiln0MCCSkzASzTmfEdZLHG8G77YP0yW85OKR5FzkMbdSVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W4k8hyP8lkBPVs2reXCworrmuwJoFAKvcE8Vor1pXkE=;
 b=GkbG5GKSUVLQO/kBwXy0KUtJ7S9pExgEYLgFo3ThhdSW3oxqNZHq+G/JFs0Pbi3P5jNQNo61BgLE1sK3MXFno/TJlMHe+W6V01PtHgKKLQDGv9KbJivWHQ8P35kyY7TqgIO03IXKx6tRN2vpnLHiydsH+78vpVZILXWQ0U6m6xc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by PA4PR10MB4608.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:bf::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.24; Mon, 2 May
 2022 09:24:40 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c8f:a38e:4ca3:d480]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c8f:a38e:4ca3:d480%9]) with mapi id 15.20.5206.024; Mon, 2 May 2022
 09:24:40 +0000
Message-ID: <f4879eed-79a7-3a1a-8dd0-c1a6ed367f34@kontron.de>
Date:   Mon, 2 May 2022 11:24:38 +0200
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
 <3f4da592-d0f7-df6c-5215-c72244bb617e@kontron.de>
 <AS1PR04MB963113399991B4C109E8C2A289FC9@AS1PR04MB9631.eurprd04.prod.outlook.com>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <AS1PR04MB963113399991B4C109E8C2A289FC9@AS1PR04MB9631.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR06CA0541.eurprd06.prod.outlook.com
 (2603:10a6:20b:485::13) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bdfba89e-2d29-4281-8d60-08da2c1d957a
X-MS-TrafficTypeDiagnostic: PA4PR10MB4608:EE_
X-Microsoft-Antispam-PRVS: <PA4PR10MB4608101083170EF93F6B8D76E9C19@PA4PR10MB4608.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SJgD4OnmFXr+nPYv8j0kGSBQISGcNuZ1Wa2lYLGX15I/wD/xFblto+OzqdCcGng3K7FerFv6+GKtZrKX51T3m0a73sk2jyabyUqSneMgTuy9nAYAHkuokzx1jeQGZeHmQo9yrxZmUALiu4bk6Uh3NWhny189Tf6m/l9EUHi2wvxHEtO7NQKFkULoRpBcDh3O+KU0K+ACipAAjmeOLQkMPuocCCTNi30kmUnheXAm5LjDgb85qzS68989AXC32vbzd6CByUX+Eh6fn0h+RTlpOhoUY1qJ+0HDWyTvfXhbmdTtAWk/TZ0Oa5NwTB11Q38/UVoIsAmnlUv54S5XJIkrlxSDMK1syOHCy7+qrgm5bFh/Kme5JAuNOBLu4tXk85zvm/Vb2icwhtY/6QlNh0i60hMgDw4Bu7iJsI7D8zmfSDHFZxBAx1awqpzsLb3QxWofhSFvpWHkHmK2EcU6t3u9EG+dD6lkq8EXx1lehT1Z/q7fWgdIWjR+o+MQ3H0jg7TbW2yRSgKd5BM3jcBKV54Rnp+Z1Y6SVzbRGVgLnuG2BE1R7pd7qdo39BdQsBGRsllsuY/o1/OIPfetW9o3N1cmMvZHl26rfcRbIe+SrPZhzDQDXR5yxB2G34NZKj8bezmLMPJW0rNBcGCU7u3LaTpUoS/FpxmBIEZYWK4Z5Nno8AC6CweD/jWf78YWL1hfUtA57Ce7VnWKk5QskhBWM4IThqrgU7HMbpliaGHcJpnmIGAB/p50qwjrfBsrCGjZ4EseoJ6vaoTAx0DkhvI89MA8qQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(83380400001)(316002)(186003)(2616005)(2906002)(6506007)(6512007)(508600001)(36756003)(31686004)(110136005)(54906003)(86362001)(6486002)(8676002)(5660300002)(4326008)(26005)(8936002)(7416002)(31696002)(44832011)(66946007)(66476007)(66556008)(38100700002)(53546011)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sjd1L0ErbHkrQVZBTERKdjdncldjQXY2VUdHVC90NHcxWnJON3plMWIrUThr?=
 =?utf-8?B?MlBTZGxxQVRXdXQzcDFWbmdxMUFZOGVCdjhxWFRGZGQ1QTZIUUNHejB4ekpQ?=
 =?utf-8?B?cUxDL0N6RzBINzd1WnRNUUJSU3pZNzBseW14MXpSa3pqL3NxSXIxUmtFczRG?=
 =?utf-8?B?RHF5bDdBamx2QWJpK0FNckZVdXdIdXNDNm83REhUc2gxdi9RNUt4WTkwWkxy?=
 =?utf-8?B?V1FwK0RHQ0hHRDhPVkdWUHE5ODNudUtGT0IwZVJwOXZrdFU1dG55TFR4Znhq?=
 =?utf-8?B?RWkxVHdMejRMb2NUdXFpSUs4Y1R0V1B5ZGFOSHZvOXNja3Y4Yjh2dkMyek12?=
 =?utf-8?B?Mk53b1E0Z1NSeFdGUVdSVDROMUdUcEhtMDBOQzFkL3MvNU12THowOUllZkQy?=
 =?utf-8?B?UG9YM1RMbVJuV3djWklWYUZZak0zeW1YRXM4VjF0R0MyZ1UzeFZsZ1lkUk92?=
 =?utf-8?B?QTUxazFJNk5xWE1GcVUrMEp2eW9VV0xybEVDbnNVWTBHblE0cTBpUkxFSzFi?=
 =?utf-8?B?M3gvVlZmMHlEU1dnSzMvZ05FZEFudUVqTG1zM1ViNk1iZ2ppaHVVQmUvUTlK?=
 =?utf-8?B?MTZMNjF4blhqOXNxdUh2a1poenl3dmoxeGM1UFRjcTNPbXQvTy8rekx2VTI3?=
 =?utf-8?B?YVlDMzQzdGJvTGh3ZHF3RDNOTWNybHhmcDJNMk16QktLYi9HcXowTXNyMFdY?=
 =?utf-8?B?c05mR2J6eWNYYnIydkRYTnFzWW5SWGNKc2thL3gxcnBEUUJnQW41UEpWWDN4?=
 =?utf-8?B?clZxa3VJQlpEZ0RHV3lxMDR4ZG4rRENQdVVrZ2pUNXRYNXpIQmxSN3p2d1BF?=
 =?utf-8?B?Mmp6UFd3WUN4dDRWU2ZoZmU5M1FGQ1dESFNZeXk2eXpKenZRTFVIV1hpVmFC?=
 =?utf-8?B?WDhKazhRT1hOR1U3RzI1YUdOQ2NoTXFHei9rMm81MTcwWkJRQlFZU3I2Z2Ni?=
 =?utf-8?B?MFhMOHRwaG05UmJpNjJ5VytuSGN4aml0RmZPc3hhclNscjYrbU1HQzdnUXU2?=
 =?utf-8?B?d043L0p5RHQwcHBodnJ3eUpjNTBWdnhOZFcya0VYZEg5dDR6WERQTy9hVlNJ?=
 =?utf-8?B?SDVuRmdOTUQ2N3dKcHJVY3FtWmV4WElPb2NDWHNEWW1OL0puTUwzdnFRTjFM?=
 =?utf-8?B?ZG1GT3NWT2MvcHpHd093SXZMWE9PMHoxK2ovY3NzTFVZMFFONnRpZ2hiR2lz?=
 =?utf-8?B?d3FoYlcxbi9WeTUvSEVBRGFlQVJJRHliOFBVcEkxelpBTW00U0EzclZySWRp?=
 =?utf-8?B?ZHNkZDFxNENtOFJrSnJNSGFkUjJ6cm1Pd2hwVzFZdjBIWUlDNUF0UXdKRi9v?=
 =?utf-8?B?RS8vV0FoRk5nbUl1OExWeHhxU0l5cDVodjg2eU91YWJOWjVQVjVsb2d3R0h6?=
 =?utf-8?B?OUlFZ0lvdktHYktkb3d3ZUdXSTV4TVcrL0JoWjBkaytxZDBucXh0QXlpWE9O?=
 =?utf-8?B?Slp6T1lCdVdTWlo4eW91d01KOWZzRFdCZ3JGSXU2MmtFUU5JNnZHUEh5eHRP?=
 =?utf-8?B?RWNYWWxrMDA4VVcybmNLVG5oSUUreTZMSlRXdXcrN0p5REQ3R2VyTDhuSVBW?=
 =?utf-8?B?MXBSY0M4cGlVUWFCOFRXYncwTjhDNkU0cVNJVTFvSis4NExrZUIrWDRBQ3A2?=
 =?utf-8?B?S3h2UzErNkxHeVVLZW5BdE1JNVpPSVNWaTdkYjdrcjdYeFBWTklMT0w4KzQx?=
 =?utf-8?B?NFZIRmE2NXZzU2FsNTFsb2lzb0FGVUplZlMwelp1TnJzajA1b0gwRC8vTVRa?=
 =?utf-8?B?K25QSm9uSHVhaU9Ea2pYWmJTUXlDQUtsWE5VWXlQOXR3YXdSb0JpRjM2dDNx?=
 =?utf-8?B?WjkrajZmMTBsd2U5blBRbTFqZ1E2eTFxalAvSVhkc2NYTkZIN083SzQ1aE56?=
 =?utf-8?B?V3JkOVVDM0JkYXJKNkF6S0o3bTNDeFowTlNhT29vN0RKMTA4Um5kTGxhdjZI?=
 =?utf-8?B?UEwzOW1hUVlKRlRib21HdXZPYVpNTExEeCtUTlg1MTFPYVMzblI5elFiYTdP?=
 =?utf-8?B?bytuMVJERm5QeU00czBGb015MWxsSVFtK1JNRWVXMnFwYmFScEVoZHRqQWZq?=
 =?utf-8?B?cnlpaVJOTUpacjVEVENrbk05Ky94RUNJU2MwQS9NVUpMdkx4YWJVdnpxMm1N?=
 =?utf-8?B?b1hhelMzRnd2ZjNuZXh5ckw2TmZpTjRGd2hTTGJ5VWpVNXhvYnZjL3k0eWdT?=
 =?utf-8?B?cXROWG1vSEcvN082M3NxNm1JSTdNekM1b2RJR1JTN0NrVWtqUDBpWi90cUI1?=
 =?utf-8?B?eUhHK1FzWlBNUFIrdytLdWFYYityWDgzSm9Senkxby9FUWFNUjZ4UVh0cTlu?=
 =?utf-8?B?WjhaWlhINGVHdDFrdFp0cnVKdjhGQ1JjQi9NV0RyNm9yam5SUlJWakIrME9U?=
 =?utf-8?Q?MjEaOvkm/3gOFwUXojah60pO8mULWH1GRR2JS?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: bdfba89e-2d29-4281-8d60-08da2c1d957a
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2022 09:24:40.0950
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q6mKlneTUKywXfzf80gqSS9fjhCQjuCXRFOwn5hv+FX0fx33SgRWNaxX7gQ9ZbCFYLcRTi4w7VvJ4PMOoM5jKudKyj0kfDD5RfuUeEc5zpA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR10MB4608
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 29.04.22 um 17:58 schrieb Jun Li:
> 
> 
>> -----Original Message-----
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>> Sent: Friday, April 29, 2022 11:25 PM
>> To: Jun Li <jun.li@nxp.com>; shawnguo@kernel.org
>> Cc: robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
>> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
>> dl-linux-imx <linux-imx@nxp.com>; l.stach@pengutronix.de;
>> aford173@gmail.com; tharvey@gateworks.com; devicetree@vger.kernel.org;
>> linux-arm-kernel@lists.infradead.org; Jacky Bai <ping.bai@nxp.com>
>> Subject: Re: [PATCH] arm64: dts: imx8m: correct usb power domain
>>
>> Am 29.04.22 um 12:09 schrieb Jun Li:
>>>> -----Original Message-----
>>>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>>> Sent: Friday, April 29, 2022 5:04 PM
>>>> To: Jun Li <jun.li@nxp.com>; shawnguo@kernel.org
>>>> Cc: robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
>>>> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
>>>> dl-linux-imx <linux-imx@nxp.com>; l.stach@pengutronix.de;
>>>> aford173@gmail.com; tharvey@gateworks.com;
>>>> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
>>>> Jacky Bai <ping.bai@nxp.com>
>>>> Subject: Re: [PATCH] arm64: dts: imx8m: correct usb power domain
>>>>
>>>> Am 29.04.22 um 09:43 schrieb Li Jun:
>>>>> pgc_otg1/2 is for each usb phy and pgc_hsiomix is shared by 2 usb
>>>>> controllers, so assign those power domains to correct controller and
>>>>> phy node, decouple the pgc_otg1/2 from pgc_hsiomix since there is no
>>>>> hardware dependency.
>>>>>
>>>>> Suggested-by: Jacky Bai <ping.bai@nxp.com>
>>>>> Signed-off-by: Li Jun <jun.li@nxp.com>
>>>>
>>>> Thanks for the patch!
>>>>
>>>> In my previous test I probably made some mistake. The second USB
>>>> controller was kept enabled by the onboard hub. When I disable the
>>>> second port and test the patch with the first port only, resuming
>>>> from autosuspend still doesn't work, even when I keep the HSIOMIX as
>>>> parent for OTG1/2. So there's probably still something missing...
>>>
>>> My test was done with both second USB port and PCIE disabled, so while
>>> autosuspend of first port, the pgc_hsiomix is off, it works fine on my
>>> HW:
>>>
>>> root@imx8mqevk:~# [   81.021437] usb 1-1: USB disconnect, device number
>> 3
>>
>> Are you testing on i.MX8MM/N EVK? Your CLI prompt says imx8mqevk, which seems
>> a bit misleading...
> 
> I was just using a rootfs for iMX8mq, which doesn't matter.

Ok, I just wanted to make sure there is no confusion.

>>
>> On which kernel version are you testing? I'm on 5.18-rc4.
> 
> Add linux-next specific files for 20220428
> 
>>
>>>
>>> root@imx8mqevk:~# cat
>>> /sys/kernel/debug/pm_genpd/usb-otg1/current_state
>>> on
>>> root@imx8mqevk:~# cat /sys/kernel/debug/pm_genpd/hsiomix/current_state
>>> off-0
>>> root@imx8mqevk:~# cat /sys/kernel/debug/pm_genpd/usb-otg2/current_state
>>> off-0
>>> root@imx8mqevk:~# [  182.196450] usb 1-1: new high-speed USB device
>>> number 4 using ci_hdrc [  182.356130] usb-storage 1-1:1.0: USB Mass
>>> Storage device detected [  182.357632] scsi host0: usb-storage 1-1:1.0
>>> [  183.367923] scsi 0:0:0:0: Direct-Access     SanDisk  Ultra
>> 1.00 PQ: 0 ANSI: 6
>>> [  183.370559] sd 0:0:0:0: [sda] 60062500 512-byte logical blocks:
>>> (30.8 GB/28.6 GiB) [  183.372332] sd 0:0:0:0: [sda] Write Protect is
>>> off [  183.373061] sd 0:0:0:0: [sda] Write cache: disabled, read
>>> cache: enabled, doesn't support DPO or FUA [  183.384709] sd 0:0:0:0:
>>> [sda] Attached SCSI removable disk [  184.207552] EXT4-fs (sda): mounted
>> filesystem with ordered data mode. Quota mode: none.
>>>
>>> root@imx8mqevk:~# ls /sys/bus/platform/devices/*usb* -d
>>> /sys/bus/platform/devices/32e40000.usb
>>> /sys/bus/platform/devices/32e40200.usbmisc
>>> /sys/bus/platform/devices/usbphynop1
>>
>> The PCIe nodes, usbotg2, usbphynop2 and usbmisc2 are disabled and devices
>> on the autosuspended first port aren't detected:
>>
>> root@kontron-mx8mm:~# cat
>> /sys/kernel/debug/pm_genpd/usb-otg1/current_state
>> on
>> root@kontron-mx8mm:~# cat
>> /sys/kernel/debug/pm_genpd/usb-otg2/current_state
>> off-0
>> root@kontron-mx8mm:~# cat
>> /sys/kernel/debug/pm_genpd/hsiomix/current_state
>> off-0
>>
>> root@kontron-mx8mm:~# ls /sys/bus/platform/devices/*usb* -d
>> /sys/bus/platform/devices/32e40000.usb
>> /sys/bus/platform/devices/32e40200.usbmisc
>> /sys/bus/platform/devices/usbphynop1
>>
>>>
>>> So basically you are saying your first port cannot work even both
>>> pgc_otg1 and pgc_hsiomix are on if you disable 2nd port?
>>
>> Exactly. I really don't understand it, but as soon as I disable the second
>> port the detection of a device on the suspended first port stops working.
>> When I force the port on, the device is detected:
> 
> Here your intention is force *which* port? 1st port(usbotg1) or the 2nd
> port(usbotg2)?

I force on the first port (usbotg1), just to show that the issue is
related to the port being suspended and it works in general. The second
port (usbotg2) was completely disabled via devicetree in this scenario.

>>
>> root@kontron-mx8mm:~# echo on > /sys/bus/usb/devices/usb1/power/control
> 
> Is this usb root hub for your second usb port? If it's for your 1st port,
> this just can indicate the 1st port can detect device if disable the whole
> runtime suspend.

This is for the first port. Right, this is just to show that the port
works with autosuspend disabled.

> 
> Can you show the full test log with both usb ports(usbotg1 and usbotg2)
> Enabled? E.g, like if you let both usb ports runtime suspended, then
> Either port will not work, then if you force the 2nd port on, then your
> 1st port will start work?

So far, I tested on a board that has a LAN9514 on the second port. Now I
did some more tests on a board without any hardwired USB devices. I only
have physical access to usbotg1, though.

~# echo auto > /sys/bus/usb/devices/usb1/power/control
~# echo auto > /sys/bus/usb/devices/usb2/power/control
[connect device to usbotg1, device is not detected]
~# cat /sys/kernel/debug/pm_genpd/usb-otg1/current_state
on
~# cat /sys/kernel/debug/pm_genpd/usb-otg2/current_state
on
~# cat /sys/kernel/debug/pm_genpd/hsiomix/current_state
off-0
~# echo on > /sys/bus/usb/devices/usb2/power/control
[device on usbotg1 gets detected after autosuspend on usbotg2 has been
disabled]
~# cat /sys/kernel/debug/pm_genpd/usb-otg1/current_state
on
~# cat /sys/kernel/debug/pm_genpd/usb-otg2/current_state
on
~# cat /sys/kernel/debug/pm_genpd/hsiomix/current_state
on

This looks like HSIOMIX needs to be enabled for the detection to work.
But when I add the HSIOMIX domain as parent of the OTG1/2 domains as it
was before this patch, the detection still does not work. Behavior is
the same as reported above. So I guess there must be some common clock,
reset, etc. that needs to be kept on while suspending!?
Probably your patch is correct, but there is some other overlapping issue!?
