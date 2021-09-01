Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7B3F3FD7B4
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 12:30:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235238AbhIAKbh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 06:31:37 -0400
Received: from mail-eopbgr20112.outbound.protection.outlook.com ([40.107.2.112]:45831
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S234317AbhIAKbV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 Sep 2021 06:31:21 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=axbEqErNjD8aqUGrLDv7A/YvoPKzwFeXttx7gV9plYVZiY/6AiPFCSctzNWND6PlcRTgtd2lWSMmoAIXgkWknt6YbLIKkDP4k2ZkBaPU1BN+qAPOuU56pvY6mc+R/vNYNuiNZ/Qkr7DE+Abbd2/LAV3wVGQRfUddYuSJtu03d5iVZjQv1wFYQR9b4FHmma7ugeUrs3eP0xnECvlVye91lDcHdm//2fSj9zB06IL+lUczTftYDKx05+CanFuFoF/ZaSZJ2VYLXcgnKILZP2oUT0+5spnMjHu3J+pTwMWRdSe6vjKpr0idGNTeNqy99tx9coy3qyvzOjOWYFxZKjtsSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XBFmPoXU0woy8M9ASjgLaY38B4ydOCf6IrYALcsLv88=;
 b=nOEg8QroIJqACSD3nHxU7Gnk1KLw/9f62fAesfQnS0H1Zh3+VifzPyfUniFkd3r2zhIgoUt/HJ4tZr1bW8YqERPsJTyeTNvVA87MwrkCcbbC5bxetNk0O4IQlPCbU9UZWN/zOB65G6FqAnuy8b47EGzX+o3qlr2iMU2G4lIm3huzZ2T43o+7f8BMNTkXfGjNUYfrZtDjDEW7e8NhOjTak3qHw2maSueEzvbLJRFTKT/IGjIP4U07xa09/3b4h6DZbgFYOSUiUEzGmIybeC3T216EJXsFVhf8FiEdT+Tok1wPxB9sAEYRQ3bx3rRDzhr+CPpTeWtFRNCDqgNVhqugHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XBFmPoXU0woy8M9ASjgLaY38B4ydOCf6IrYALcsLv88=;
 b=cmH2sZvOYmzCMYIeCvkfLM4GArk3bCDtc4VfhWYZ5ARVasbmdMlGkvbMfV11F0x44I3R0meDaAIM1HCUSyddEw1bPYhRF3OR0TnOBy1lHhwB7V5ixNRUU3LGa4iQkuuTXOQUzcK+z5Qse9i88P1uKS5/qcrqW3QmgqVf3qPcSnw=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM0PR10MB3572.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:15e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.24; Wed, 1 Sep
 2021 10:30:22 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a468:e307:d46:63a]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a468:e307:d46:63a%4]) with mapi id 15.20.4457.024; Wed, 1 Sep 2021
 10:30:22 +0000
Subject: Re: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
To:     Tim Harvey <tharvey@gateworks.com>,
        Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>, Peng Fan <peng.fan@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de, Fabio Estevam <festevam@gmail.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <818b52fe-8fa6-b47a-6dde-783ac378c603@kontron.de>
 <8de1cd0a-4d91-60e2-61e6-9f903bbf546b@kontron.de>
 <8ea33d97fb3f7abb2d80b11db28cce8c01932a09.camel@pengutronix.de>
 <CAJ+vNU2tSh-0TuaAZ-_Hkg3K5fudc3U77tAtcRaja-GLzXsYPQ@mail.gmail.com>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <ec6517f4-e2da-da88-2785-5bbb70131bf9@kontron.de>
Date:   Wed, 1 Sep 2021 12:30:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <CAJ+vNU2tSh-0TuaAZ-_Hkg3K5fudc3U77tAtcRaja-GLzXsYPQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6PR0502CA0068.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::45) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.40] (88.130.76.213) by AM6PR0502CA0068.eurprd05.prod.outlook.com (2603:10a6:20b:56::45) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19 via Frontend Transport; Wed, 1 Sep 2021 10:30:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b6bef53e-a599-4dd3-bb0c-08d96d3380ec
X-MS-TrafficTypeDiagnostic: AM0PR10MB3572:
X-Microsoft-Antispam-PRVS: <AM0PR10MB35721421E17F994438FAC4C1E9CD9@AM0PR10MB3572.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xRkESy7eAf3PMBhdQgcL1Hz7AY2C40M8MvvEGyKUyMNfUNOillg4ZbxKOTVEcpaeUhc2BIQWZGKeM7eC/13VVHwNtEtc75mVCJ69z1wfosh5QT9a2dW6jLZeU45Sf/TlyhFXHa2O4jCaHecQJZ6/0H0VyvfYUpynHRkCop7BWrsUl0R6LJ7YZ5/Fk7iD8GrrmV+JGCA2Vymbx6Et3IBr8a/jmEtt7ZdqdwtLLhmLSA/1e+fRIsKd+7vfsFD4EMwJhREZjVgWk4HWPO+/yjB4zdqCC41xQVVDGEY2Y5PBKVbQbwFSjocL763fov2ML3N0HebkiMCtXhk8GBuXDqrg8K75l378j52Zl1mKd9RAXSHt4bFaiHN4EHBuePkj6OuCEBBBWLdLbO4F+Qn5pZu+DsOpc/QOzhpyovOXkqbupBn9Y67QmVf6anlGQqgV3Iopw5INgTDn11nJl/4P5e+hir2gT3Bfspt4NARYNEfzQ7nRigaZZ7pTfY0ceMOTWAP7fvwofZcmSVHXEtkrxjvS1IR7MzVIciR4H72q5AedaT5ZyLdXc7EXkqzHE3nVhICkhVHMHxZcEL826IqLWOL0HFKS57bF49gUxFcgeChklIOsjT+0U/SKNkxp2A7xSqimB/g9VNMqaXWp2sYbGLPyjkqrQrqJ3wt0n2bXALsZNahL6e/irhHmO5TnN0r0Sl4sSC3cJxziDxKGIm/Ir6MA9Mub/vyonVr/XKy6sZii6NshONdnCdgjDSPtWa9Bvgv0u+5KXud6QOmoD5iQoxOk/6HG7e4zOuoclf/0fvvlSlaJ4SmzI1tbQ4MPzYG+iXFt
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(36756003)(26005)(44832011)(2906002)(16576012)(45080400002)(8936002)(66476007)(31686004)(66946007)(66556008)(6486002)(186003)(508600001)(5660300002)(4326008)(966005)(956004)(83380400001)(86362001)(7416002)(2616005)(8676002)(53546011)(316002)(54906003)(38100700002)(31696002)(110136005)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3ZpTGkwRnBIYXBrUVIrQ1F6eGVNbEpWdkZiNUtyZFhJd3JKNE5GV3FxejY3?=
 =?utf-8?B?ZWZob1E5WGZ6SFRURk9tWGR4R0pITXlzTjF0cmxNMDJ3UDVDV2pKOEpzdkox?=
 =?utf-8?B?Ynp6b0dtb25HS2NhcU8xU2U2N1ZXQTVMMkdOamZwWDZ1VFFsOGJHcDJlTUVo?=
 =?utf-8?B?ODlSaVVjV2g2THgyTWsvbkVSdVZ6THUzaWRZOTljM0cxV1RkRTk4ckNsRWZq?=
 =?utf-8?B?MmF1ckxWS0t5U1dnaUFSTUpMQ3J3R2V2ZGpLWTIzb09jbERSUW9KRHVjcmdK?=
 =?utf-8?B?a2dpVGt2OVFuL0RFQ1NXRVl6Mzd0WVREQnFpVWNLTEZlM1VzcHhSa0w4Q01a?=
 =?utf-8?B?eGQrQk1nNXlINGNkTGxlVlo3UE9wMk5leHZOaStQS3NFVmhJVCsyQVZpTkpk?=
 =?utf-8?B?Y1hQS2w1c25ZSmdKVk1RaUdDSXR4NCsvUEg0bzB2YTdycmxTc3QxU0lJd21I?=
 =?utf-8?B?WGJDNGtzNUJCSERhK3UvUzFCRDV6bDl2Y056ZkVjL1RTNkFJbjlQQTRhbEQy?=
 =?utf-8?B?UkhEQXJhV1VjWStnNUVqWEsxOXFFK3R2Y1NhWjUwVTcwUWJFeGRjejVjSEdV?=
 =?utf-8?B?aExuZHY0OE5HWkE0L0ZZaGRmY2c0VjRTVDNaRzYvYldIVHBGRXkzeFU1UDVz?=
 =?utf-8?B?azNjQmJzUytQeWgwSFo0RndlaVVyNVl3L0J1UkhoZDZCRXluaGVUM25BNFFl?=
 =?utf-8?B?Z1pYbnJJYTdSOGYwempPRW5WV3lEa3h2bWduK1lLK3BKb0VSYjQvdmhZUldq?=
 =?utf-8?B?VzhLbm5sa1RhL1ZscFArTFhhTWpwdUNlWEVHSXdmcVllVUNPd3pmMC9nUUw2?=
 =?utf-8?B?cXNMTWZEZTc0d2NvVzdWYVdQRkMzRlVZMVRlY2dGenNxUlJGOGZHQjg2b2hU?=
 =?utf-8?B?cm5jbURVNXRkWk9najN3QWY5UFJyOFJjK1pWNUVkT3B6ZEt4SXRlbXZqRGx0?=
 =?utf-8?B?TXVpWDZvNEVreWI5UFNjRGRUTGhhMWNBSVU0V3V1VnBjK1kxWUo0UXBONExC?=
 =?utf-8?B?NTJXdGpzQjh4VjRRdnBpU0NYb2RpK2FMK3RCeGFGUkNSYjh5V2tkN1p0R0tk?=
 =?utf-8?B?WEJkVnhCK1BZN2RTek9PUUNES0tEeVFLTWllMFg4TWduaitkN1FxZGxaOWEx?=
 =?utf-8?B?TSs4UUE3eW9Cc1FkdGwyMGRUWlNQdldYNFREYklncXlTM1dvR2tyVUxZd3JJ?=
 =?utf-8?B?Sjc0dGpTY0tCOGQ5dXVKZHp5Y1V5SlVSZURiUkU2WDhNZVBIZVQ0cHJZSzVu?=
 =?utf-8?B?cXdMclUxNWRPTG5lakRqalBHbm0rQnVSUTVOYzVnZXBxcVhLb0lkeVYxK3Vw?=
 =?utf-8?B?SWZFMXB3a3lmT0NXTTFmaWwxQjNoalFOUkF2bEhpYmI3cU9VYmd3V3JCZHRi?=
 =?utf-8?B?VDYyaUlwTnJzemxJOWdQbEJ2Zlo4ZHJPVmJibjBpdE5PSi9jQWEyaUJhSnhB?=
 =?utf-8?B?aVQxeGdwMGhjWTVwMEhEYmQ4WTJEajB3a082TnllbzMxb0s2ZkpyQ01ZbG8w?=
 =?utf-8?B?czR1STk4cUNxeVhkWW9wdFpuZThaeEdjNkZmcWhvTnVLVlJTTS9DMmxTNndl?=
 =?utf-8?B?WUI4bDdwS2tlZDd5K1V2L3FjcDFLdFFUcTluYWRvK2tpKytnaXZsUFVTVVcv?=
 =?utf-8?B?R0pOTWdrQVVzUWNCSzZmMVZSek9pMXI2aGxLUHhIQXNDUXBvcU1oOHBrUFQw?=
 =?utf-8?B?SUU5OGNpQVpTSlZMMjlpR2VZR0tRQXk2QWsvMmc1ZkRWSjdHV2pWSGY3cmZp?=
 =?utf-8?Q?UGbhZbeYUe/uh1gH7b/qyW6PoXem3Rry2l8eZod?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b6bef53e-a599-4dd3-bb0c-08d96d3380ec
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2021 10:30:22.4672
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: scDeUGyL0uAEqiS80wzqEcw1/hvnh3jq2NgCH3T5zmvqaOLHwBdZSS2SAVPZd68LHv9cw9HOU1TRIliFehALKVZU9uTuoHnIQM/cbnoEySU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3572
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tim,

On 31.08.21 00:06, Tim Harvey wrote:
> On Mon, Aug 9, 2021 at 4:01 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>>
>> Hi Frieder,
>>
>> Am Donnerstag, dem 05.08.2021 um 20:56 +0200 schrieb Frieder Schrempf:
>>> On 05.08.21 12:18, Frieder Schrempf wrote:
>>>> On 21.07.21 22:46, Lucas Stach wrote:
>>>>> Hi all,
>>>>>
>>>>> second revision of the GPC improvements and BLK_CTRL driver to make use
>>>>> of all the power-domains on the i.MX8MM. I'm not going to repeat the full
>>>>> blurb from the v1 cover letter here, but if you are not familiar with
>>>>> i.MX8MM power domains, it may be worth a read.
>>>>>
>>>>> This 2nd revision fixes the DT bindings to be valid yaml, some small
>>>>> failure path issues and most importantly the interaction with system
>>>>> suspend/resume. With the previous version some of the power domains
>>>>> would not come up correctly after a suspend/resume cycle.
>>>>>
>>>>> Updated testing git trees here, disclaimer still applies:
>>>>> https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.pengutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domains&amp;data=04%7C01%7Cfrieder.schrempf%40kontron.de%7C35d8c33691eb4355196c08d96c0281b5%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637659580288796439%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=XrDOPLcL5D6PYt8ihbhURkuD9bzABOOfP6hJ5x341lM%3D&amp;reserved=0
>>>>> https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.pengutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domains-testing&amp;data=04%7C01%7Cfrieder.schrempf%40kontron.de%7C35d8c33691eb4355196c08d96c0281b5%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637659580288796439%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=9J016OR46KgfdlM4pG%2F5rkO6pT%2FOBwgLTMRqF10it%2Fg%3D&amp;reserved=0
>>>>
>>>> I finally did some tests on my side using USB, GPU and DSI (no PCIe, VPU, CSI so far) and the results are promising. Thanks for the effort!
>>>>
>>>> I will try to run some more automated suspend/resume and reboot test cycles over the weekend and report the results here afterwards.
>>>>
>>>
>>> Unfortunately I got some results sooner than I had hoped. I set up a simple loop to suspend/resume every few seconds and on the first run it took around 2-3 hours for the device to lock up on resume. On the second run it took less than half an hour. I had glmark2-es2-drm running in the background, but it looks like it crashed at some point before the lockup occurred.
>>>
>>> Of course this could also be unrelated and caused by some peripheral driver or something but the first suspicion is definitely the power domains.
>>>
>>> If you have any suggestions for which debug options to enable or where to add some printks, please let me know. If I do another run I would like to make sure that the resulting logs are helpful for debugging.
>>>
>>> And I would appreciate if someone else could try to reproduce this problem on his/her side. I use this simple script for testing:
>>>
>>> #!/bin/sh
>>>
>>> glmark2-es2-drm &
>>>
>>> while true;
>>> do
>>>     echo +10 > /sys/class/rtc/rtc0/wakealarm
>>>     echo mem > /sys/power/state
>>>     sleep 5
>>> done;
>>
>> Hm, that's unfortunate.
>>
>> I'm back from a two week vacation, but it looks like I won't have much
>> time available to look into this issue soon. It would be very helpful
>> if you could try to pinpoint the hang a bit more.  If you can reproduce
>> the hang with no_console_suspend you might be able to extract a bit
>> more info in which stage the hang happens (suspend, resume, TF-A, etc.)
>> If the hang is in the kernel you might be able to add some prints to
>> the suspend/resume paths to be able to track down the exact point of
>> the hang.
>>
>> I'm happy to look into the issue once it's better known where to look,
>> but I fear that I won't have time to do the above investigation myself
>> short term. Frieder, is this something you could help with over the
>> next few days?
>>
> 
> Lucas / Frieder,
> 
> Can you update us on where you are at with this patch series? I fear
> we are going to go through another kernel release without IMX8MM
> blk-ctl support and all the things that depend on it such as
> USB/PCI/DSI/CSI/GPU/VPU. If there is some specific testing you need
> please let me know what I can do to help. I have a variety of IMX8MM
> hardware but not a lot of time or knowledge with regards to
> troubleshooting suspend/resume issues.

I try to help as good as I can, but unfortunately my time is very
limited and I didn't make much progress in investigating the issue(s) so
far.

If you could do some testing on your side, this would be very
appreciated. It would be good if you could setup a recent kernel with
Lucas' patchset applied and do some supsend/resume cycle testing as
described above. Use 'no_console_suspend' in the cmdline and look for
any error messages in the log or lockups of the device.

You probably also need some users for the PD or BLK-CTRL, like GPU, DSI,
USB, etc. (that's what I currently have enabled). You can find the tree
I'm currently using here:
https://github.com/fschrempf/linux/tree/next-ktn-pd-blk-ctl-lucas.

> Are the issues found a regression?

Regression compared to what? To the v1 patches? I don't think so.

We didn't have any stable solution for BLK-CTRL support so far and what
we have is probably not tested extensively, yet. So I guess it's not
really unexpected that there are still issues, but it's very frustrating
that after all the efforts, there maybe is still something in the HW
that doesn't behave as expected.

Best regards,
Frieder

