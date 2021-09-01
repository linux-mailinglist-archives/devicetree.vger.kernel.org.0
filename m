Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 826313FD756
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 12:03:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231503AbhIAKEl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 06:04:41 -0400
Received: from mail-db8eur05on2107.outbound.protection.outlook.com ([40.107.20.107]:19033
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229662AbhIAKEj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 Sep 2021 06:04:39 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DmKnX/ZQVpnLXNhzRLQFteZKdIPF6uzCzNL2xms+w604wNQDQ+LkRgBdcKTNzEUUxfBcAaKRCQb18256BzrbcM2aNYYmev7kHTA0PnVbd+xXynjeLeBnu1GIn1TzTyQ7SJ/O+NlyTHt849OeUCTb/57rP5bHBAFroMitIoI5uxnygoczaKupnqcywJSwB4GCqNENozO5fl+gxKn6XSM0n/efl52eIjq5q7PJCPG9COQhHSsuPDTkvl4fziUpBLynHiMfLvyw1HBpSy1FyZInQPfqIjHFTZxOaq+ilRGNmXasSodUvdFlOV60Rf/cNWYz8sLOcleNBcdf06PrhKCYEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=s5yFOaoas/4h8XIcQqrGzEkSP0eUGDSAuo2k7jQUunQ=;
 b=myZsw7ZUhs5MpyYcEvEO6NATXCkmsInFpaYEMDoml1e9KG8nlmhZdlNte5ogFSavhiVmXtJ3XG/ys+jFVZmrHXrxApKGBGe0pxbd92Hw2OeWXN+XTzSFvVBKDnACYafHOHp72fnUnwAbulem7Kmdu5eupFw5+rEZQPK+ZE+M3VFtyKUk1VipYGGRERPWpyncZnwc/Ms2pNn5UslMBsHtzFIIaym8XBMu+khHLFD48f2vpbFKH7vkA5qsPoPig9+1iu5+4ZZF1YrmJjyFEekvAj6H7Y/RwkwxsY/c8livxpaEez/PTYPPCTCDiaGNBwUv1QxefQFGPZ8U4cO97L+KOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s5yFOaoas/4h8XIcQqrGzEkSP0eUGDSAuo2k7jQUunQ=;
 b=VzSc5Hoo46GNSs5dn91qSok3C2/hq7RZQiYLCuGNOwfUve9PwAXhOJfdUjZkVlZRm3Rb6fRTtx8WKeK8jThMY/+RejyY5kStL5nMg+tQYvgWRSWrQddoSsIhFJdZeXifshnzndOAibxH5wrDRBxReLcEdBSQEG7U/PoDYAgRU2o=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM9PR10MB4120.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1f0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Wed, 1 Sep
 2021 10:03:41 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a468:e307:d46:63a]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a468:e307:d46:63a%4]) with mapi id 15.20.4457.024; Wed, 1 Sep 2021
 10:03:41 +0000
Subject: Re: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <818b52fe-8fa6-b47a-6dde-783ac378c603@kontron.de>
 <8de1cd0a-4d91-60e2-61e6-9f903bbf546b@kontron.de>
 <8ea33d97fb3f7abb2d80b11db28cce8c01932a09.camel@pengutronix.de>
 <befbf918-c14a-e97c-a8d5-f5fe874dfa94@kontron.de>
Message-ID: <0e91cb27-7b89-fded-45b9-7d963adee581@kontron.de>
Date:   Wed, 1 Sep 2021 12:03:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <befbf918-c14a-e97c-a8d5-f5fe874dfa94@kontron.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM0PR03CA0036.eurprd03.prod.outlook.com
 (2603:10a6:208:14::49) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.40] (88.130.76.213) by AM0PR03CA0036.eurprd03.prod.outlook.com (2603:10a6:208:14::49) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19 via Frontend Transport; Wed, 1 Sep 2021 10:03:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea8688ef-bfe2-4e4e-ae24-08d96d2fc6a0
X-MS-TrafficTypeDiagnostic: AM9PR10MB4120:
X-Microsoft-Antispam-PRVS: <AM9PR10MB4120E0A67D04D7D1F10AF752E9CD9@AM9PR10MB4120.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /9jed2DivoZVqcDU5oWpByz9mPnHfVpQ+8VoWnZgos0q5cTOoRhDqAHX9H3/3cq+Cv5L/ee0UkMpwb8E28+OuXnkOkdZ6lxYtCnp5AHi1+uhcElbH7mojuEVk6VvkXSz8vzvhKxR1H42LMgCFERSVkQqZ/cEYQbh7IuLb4jgvXGPlZQ1aMMv/khraL7LOAl8a+BsOwBIqYgb0VZjllsziOHdwDlZfcAqzJ7/h+C0YDMaOdEbSPGFCyVip8qyuUBU21YotfhqC5apIDyvoX64RcvNGYIpo9g0Z9bl6eyVPKhJJsqAnnIFYXiwjQj0aY4HBYPBu7FjialG09emRKA7DohCfYYDu2wtW5A5CCJZqUPIt4KDffSHol63yRSRKpM6xXNtZbuQXGNM4SPHrqVj3lNzdW4FYxFAtX53rkg2mdYRGK3MQhEBmfSk7JmHJmlVL9poJVL0mL4ssGQKIZXSBT3Hr1YyxxVwF39wVUjDtgPDyaTwM9+HuVG+80ZnJjyuTB0rWNSDSfz+CedGTbJ2NJVc8TacElmHD/7RZTSQggLneQrFspeNzlvMXe0ezjKASpG+/8SPoFN6Nv7kDi40DS+LOdeG7MPgPtHQa9alWUlnE4xbK+Bp2mrl/Re93QGvKMSnHBDYfl3QUm47VGnYrtkW/2immYVg2p4o0fYRGqpoqYZozKo57K3g/8SLPwXtIBsQYAwWY2xcS+xks4/ED/N8EFtOLrtHmfL5lGoDr+e1uoICPTYdeTM2epbgztq+fYabcXVu3khSTIJRMhbE5w2stcxfqV1cZ2Xj4mPi+fuPL+mChfnW9fHi1CZnUxkm
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(39860400002)(396003)(366004)(376002)(16576012)(5660300002)(8676002)(4326008)(6916009)(66946007)(54906003)(83380400001)(7416002)(316002)(66556008)(66476007)(38100700002)(2616005)(31686004)(31696002)(8936002)(956004)(186003)(26005)(2906002)(966005)(86362001)(45080400002)(44832011)(36756003)(478600001)(6486002)(53546011)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHJ6Q0lyMitISlhGeGgwYUNqYytrSXpzQXp2djJ5KzJZUXNPTm03eDBJeU5l?=
 =?utf-8?B?UWVpU2IwZ2JGVlg2MnQyTVZmM3VScmI1TGo5S0RQTTdaeWJPVEx4b0t4dEpp?=
 =?utf-8?B?UFZhWnlXalNsS0ZuYStWZjVJWitDZ3dCb0FnMGZPNHp1d2k4TEVaTzhqS3k3?=
 =?utf-8?B?c005d0tSM2szZ0U2bHRYYUdrVkdWMXRMSTNORFBTMEFpRjBkMWR1RzVTRXBi?=
 =?utf-8?B?U25VMGc3SVY0MDd3ZzBCT1IwOGxINkhxT0Rqd1FZcjBQN0ExVGxXaHBwSEtI?=
 =?utf-8?B?dnRTZWNpZVl1bDJLWk1Udzc1bWhSSWtLQjZ6RkJCQ1FsT0FqNkpLZWtpUEl3?=
 =?utf-8?B?N3NQWGlCRjF6T2Y5Z2hDc3VkRjNWT2pwcVU1RVlQMGVsUXRBTHl5RDVvV2N6?=
 =?utf-8?B?Wk1yOHNlNXRUZTlRTHcxbnU4MHNQVXV2blUwN1BLc1R0L1ozRG5iSzNUdlN2?=
 =?utf-8?B?ektScE81dmFTL096N1kyU1Q5bnNQR0N6dFZKVldHRExyRWoyUHA0NDBNcVRI?=
 =?utf-8?B?OU1XRHBnaC9hSGtJblRTaU5ydUk3QktadEc1RUoyMlVPVXZQbGJSVkJGY3Yr?=
 =?utf-8?B?L2NLbHVYMEZNVkVSRko0ajdBanJMMkRWS0JCeXRzU2FlZkpyNitOdEVqZTho?=
 =?utf-8?B?b25DNUw1TUpOQnpVd1ROblY2WksweENpYmRmN0pWZWdBYVBXQjJXMzB3dDZa?=
 =?utf-8?B?SHl3RFpDQ3Q0ZDN6YWtHaXBFM1IwREw3S2hNSkV4cWJZd2MvY1J1SzJCejZT?=
 =?utf-8?B?Z3ZmdW43RmYwS3JYUVdVY1k2Q3JmWi9qWW9mTHFZbThtOCtnc3B2UDRVcUt3?=
 =?utf-8?B?ZmJIRzlrUERQUmpsNVhDVVZ3Ly9oMkFRT1AreWNlWWlmYVRtYnc5d1BJN1JK?=
 =?utf-8?B?bXphWU5mbitlcmdUQjdnekVaVklWbXUzdk51Tnl1S1NrUkJKU29abWZLOE9R?=
 =?utf-8?B?NEVhQTMzdCtZSGZTZEJQd0JMU3FKVWpaU080aUhlTzVWWVBJYk16MWhibHdP?=
 =?utf-8?B?V3lJRHVBOStJR09BZDBmZlR6aVJqcXgvZjUzRVVvM25DM25JTiszTzJJTFAx?=
 =?utf-8?B?WXVoSldiUGN5ZXh3b1kybzJ4QzZDME5Ka1hBY2VIZS9OeWhsSWsweXJqR0Vw?=
 =?utf-8?B?eE93Y2pmTFB3TVVyZkdLUTBJQldaNXdDOWpIRXNITUdFY3o0aEVjaFRJemxr?=
 =?utf-8?B?WUNkOUl4SnVQbThVcVhOVHR2UFJTZExqV1FFekVidFBGc1BvWVQ4MjFDaUJE?=
 =?utf-8?B?ejFvZkNvU0ZkWW0zMVllYU1TT2RIQ0F6eGhzUmU3Yk9XNXc2bDdPRFBXRGd1?=
 =?utf-8?B?MFAxbDV3c2dYYUNxZGMva0JIVEl6WnhMR3pDekhMbnFMeUIzbXNGRVJvK3Bs?=
 =?utf-8?B?NGphdXFkUXJmY3pGemd5K1UwKytaNDN6UVB4Wkh5VVgrNXVoNEJ6RDRiMnZv?=
 =?utf-8?B?Q0lhN3B3SXpVV1pYeVhoZDFLanloUmZqQWJCM3hhU2JEVnJZV2QwU2NsR0xD?=
 =?utf-8?B?UXQrNFQ0SVYwZ2hWNVZnMEU5STRibnFUTThOOEc5RkZsR3pRc3B3VU1hSHhk?=
 =?utf-8?B?WkVYenZZc0x6TVlkcno0aFhRTm1lcHJtRE1DM2owRnNSWklxR08zdWM3MUxz?=
 =?utf-8?B?d1pEa0pSTk0rTzdaMFFJWGM4UlRRVnl2VG5qTGxRaWtodXFxWUxvM0E0TDhW?=
 =?utf-8?B?TDJJaW96SEN3OUw3SGpMaHhKS1pMbER2YWlJRDUzRzRUWURURmZnL1gvMFlF?=
 =?utf-8?Q?nxUrnQu5uQ14RLl+lgY9qndgb7AmxoqoFACHBZ7?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ea8688ef-bfe2-4e4e-ae24-08d96d2fc6a0
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2021 10:03:41.4664
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yB0iKyJyQkDBl/DBUTM1QrUnCStZ8fZt7iInAoGaYkgu6dYWOmkCgp18p+SQKGPJg+g/PLMg3UEWNpkV5VWtykjNG3nloTSXsbAipDlytvo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4120
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On 09.08.21 13:50, Frieder Schrempf wrote:
> On 09.08.21 13:01, Lucas Stach wrote:
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
>>>>> https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.pengutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domains&amp;data=04%7C01%7Cfrieder.schrempf%40kontron.de%7Cfc19fab094dd483e753708d95b2c3f0a%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637641067865828503%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=raKaop3FUcsfKMyu13qCeyRKCgkObRuTAc73iQ4BYSI%3D&amp;reserved=0
>>>>> https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.pengutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domains-testing&amp;data=04%7C01%7Cfrieder.schrempf%40kontron.de%7Cfc19fab094dd483e753708d95b2c3f0a%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637641067865828503%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=bmtM%2FxJ3Y9QpGkMhTDHLrLQ2AD0X7DqbspUMdkS%2B7MY%3D&amp;reserved=0
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
> 
> I will see if I can find some time to track down the issue at least a little bit more. But I imagine it could get quite tedious if it takes up to several hours to reproduce the issue and I don't have much time to spare.
> 
> @Peng, @Adam and everyone else: Any chance you could setup a similar test and try to reproduce this?
> 
> On the other hand reboot cycle testing didn't show any lockup problems over more than 24 hours, so it seems like the issue is limited to resume.

I ran a few more suspend/resume cycles and watched the log. The first
2.5 hours nothing noteworthy happened, except that glmark2 crashed again
at some point.

Then suddenly the following lines were printed while suspending:

  imx-pgc imx-pgc-domain.6: failed to command PGC
  PM: dpm_run_callback(): platform_pm_suspend+0x0/0x78 returns -110
  imx8m-blk-ctrl 38330000.blk-ctrl: PM: failed to suspend: error -110
  PM: Some devices failed to suspend, or early wake event detected

After that, the suspending continues to fail with the following on each try:

  PM: dpm_run_callback(): platform_pm_suspend+0x0/0x78 returns -22
  imx8m-blk-ctrl 38330000.blk-ctrl: PM: failed to suspend: error -22
  PM: Some devices failed to suspend, or early wake event detected

So far I didn't run into a lockup again with this test, but I will
continue trying to reproduce it and retrieve more information.

Best regards
Frieder
