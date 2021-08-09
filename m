Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 730DB3E450F
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 13:50:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234295AbhHILvK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 07:51:10 -0400
Received: from mail-eopbgr60122.outbound.protection.outlook.com ([40.107.6.122]:13446
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S235058AbhHILvJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 9 Aug 2021 07:51:09 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AWqc2C/afUR4btnYUAjYP1YkIuv/kJxvCSGRQniZ0OelzxC1l/BwcfKI3fRabSgmnTpAyvBqFLAfaHgSUV15B6EH/gOoCnYgw3SIJo0VC3oNNqv55622AfAq3ISF5QbVzfKEFceKrV+VqFVU7sowjKMVdjXMUljgBhI8IoIfEePM1h7bHuN1HylIhZ6tmOJ6T+f1/l0dAccWTPLHZacO2hHtfWK80jQC6F0naHxz0tLYK02hSHIhovh9jrV3tJDB95TYuL02p5FpSasi0u5v+/lPJ9ef5lSbeobM27Vlg8qRa/3flmKXKw+qvI6SrC8VLT+wKzCRbuUefOpcmU/7QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M+uZOWOK58S/6My0udgzafz62PHz0qq5jusSTiDTFqU=;
 b=dBkjiA6V5SRYo1EgyIBDx4QfT4MIgUqvtNDslChs4ESejb03NVyfL9vsK63kmQSmdtAcg0rITvKemaTSFuIl8L1UcZiAk2ekGpw40GrC59iWONBRAyJjuScW0zenuM/on/V0l36wltzkT0F0ZS+pnaYJ+sUGEIIqcswzFAE8/SrCQoxU/xUwQbAGloJc/juS1OiVFp1aj7fMlQwMpyQg+8KuM1nv+o0YsWkNwju/MtoQ0K6+1YXNj1PbKrGG0Q7N+SblWNvjuUSGLOszSyxeXTAGTsa5CVHUnkN56O1bNsGwQGfUkVVaWUlkI7+qMTTrM59MXHyYwlY78YRaXb5v/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M+uZOWOK58S/6My0udgzafz62PHz0qq5jusSTiDTFqU=;
 b=eAO/wunbrWicuKe6EGJmnRVlXGP9CY3afqHWqj98r9Hz4pF23TcOgKuhs5GGwN82fvIuGfY8XI479O/U85SkWPWorv8wFJpymYgGZ6g/Ru76PJcULD73cT+jounGVOYUtcMR39QK/TPDmVVJnDv7WE/XyXnVv08GW/3l9Kers9A=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM9PR10MB4837.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:414::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.17; Mon, 9 Aug
 2021 11:50:46 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::30d6:1ff9:85e4:48d1]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::30d6:1ff9:85e4:48d1%5]) with mapi id 15.20.4394.023; Mon, 9 Aug 2021
 11:50:46 +0000
Subject: Re: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <818b52fe-8fa6-b47a-6dde-783ac378c603@kontron.de>
 <8de1cd0a-4d91-60e2-61e6-9f903bbf546b@kontron.de>
 <8ea33d97fb3f7abb2d80b11db28cce8c01932a09.camel@pengutronix.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <befbf918-c14a-e97c-a8d5-f5fe874dfa94@kontron.de>
Date:   Mon, 9 Aug 2021 13:50:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <8ea33d97fb3f7abb2d80b11db28cce8c01932a09.camel@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0126.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::23) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.31.228] (80.147.118.32) by ZR0P278CA0126.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:20::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Mon, 9 Aug 2021 11:50:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bc3d6399-5d2e-4a54-0a41-08d95b2becd8
X-MS-TrafficTypeDiagnostic: AM9PR10MB4837:
X-Microsoft-Antispam-PRVS: <AM9PR10MB48379E717E1BFA2A732AE971E9F69@AM9PR10MB4837.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rKYXGR8wMHZf13uHlxG4mkB/VfBwqk5IiPzfe5oUyj1qkkgJ0ESII95uYzO8TzmvlCVpp46KuHORriFKJdMc9eNLe5+3jZMeECFq2NFVeXUySRIGIiblc7ZjXs2uCeQGxeviSCcfASzfOZV6j6QEH9pzRZ4n/SF42xAjIUw7+UYc2lEq46SSv7qwlZ8ZFJKlJ1ZIjuB4uNZtBSZjv/3Am5sGCgTjHUBZnzLSF+yjS9+pSiWv9Oi0/UGBgF+uzmApxWpTziLxoRot2z9Cfl3nurSKIcTPz0PRPr2G/QJ2OFyyTbY3Rl0P5Uu94ArODdAPCYrt4jdwZqHmllO5R/spur1kxIJsQCvk7DWwpBFz9q3L8Z6CqLTYXbYoSyLIqmcvOEtGn3ThYdBMJQBJvo+61AqlzMFFVacImLw4t3kkhnTqxHXefLxlaDfIQ3HdC0zMoVQEALSnb5wnVsiU+G+91MOkrNg+qywd9ByH8J49bzVrslqrsLhIHKn7rWC89L9Y0HrO5YJkVGRU9eDiqzqel2aPTkPEuLas64WFQPYdo9gWDNnzBlLpQKvkALIYfGODlkGJxeXR36fa2uwjqls0MMI35L45rCI0f3wNSwraQtUhltNPPA+OrzDfFX3yK7UbDdP+vMlJnnQ9KneNH6aGnjkrfqubuZx1c6T+6IDlP8Hpu2I8ICEIaN+IQHlaMDv4uNhvcRJvhd93tVsZ2xdsH8274dVRzKhCDz3Ijq0W59SA95JqCRHTPJ5eRPdCZngZskp3Zm8J2lw+q5pvOadJjEfyJ6t1XRRxXn6cVcTfoU9HrRCUFp7bPabyXRQmoSuW
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(366004)(136003)(39850400004)(45080400002)(8936002)(956004)(53546011)(16576012)(36756003)(2616005)(38100700002)(316002)(66476007)(6486002)(31696002)(26005)(966005)(44832011)(2906002)(54906003)(110136005)(66946007)(478600001)(86362001)(4326008)(5660300002)(83380400001)(186003)(8676002)(31686004)(66556008)(7416002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWd4MEs5TldqUjJaMG9ZaHNmSmcrNWVuSkx1Q2ZCbGJxd1hDK1o4SmI2alcx?=
 =?utf-8?B?UzZFTEFyaUNZanF4a0RrZkJGSVUwS0xPYjRlYzBXdW54S3d5bnRyOVdybm5i?=
 =?utf-8?B?eVY1TUpsa0EyUFg3Y0U0T0NUTHNwTEhYYW5WWTFSUVhoZVpzMW01Rk5vTFZ4?=
 =?utf-8?B?TEdqUUJLanRPNlhobUtJSkRsejhWN0FROXUzM243TWo0dGFLT2kzcUxCVVZJ?=
 =?utf-8?B?Y2FlZ2JSZ282RmNMVzVQUnI2RGI0dk95Qi9odnRLc1NvSXpPdDFtUjNnMXU3?=
 =?utf-8?B?bHR0SWQrdFJQNXNldDF1Z0wzSXkyZ2cvNmNlZFJIRnhYZWUyMXJYcE4zcEVB?=
 =?utf-8?B?S1F0NWRPajhVTmZDV05UL3JNb0UvYkR4alRuaTJCUTZrVW01ZHl0WUVZdFFy?=
 =?utf-8?B?ek10bXdJR0poRW5FeXkvMHdtNDFGVHlYaGk4UW1ndndqU1NIaG5kOUFqSWs0?=
 =?utf-8?B?bW91YmgyUkZzYk9lai9kRFAzMHAxRVhvTEc1WmNPcVZiUXIzc3NNZmNvU3dE?=
 =?utf-8?B?cDRFeVRna0hiU3hIM1FXVzJ6OGNacjFJVmFDdXJ2eXVKcm1tZ28vRkR6SmEz?=
 =?utf-8?B?aXVoaG9sVTBiNnlaZ2JhWTRnWSt4Z1k3Y3Ezbi83QlR1LzQrQmduRmg4clVI?=
 =?utf-8?B?dUNsU3pFWEVMaEJiaU1XNXV1ak03TnhzVWFtUXB3WVZCbk1wTURqRVNhL1pv?=
 =?utf-8?B?QWlWMkpTcjhaU1V2aXd0K20vTUp5N3MxZmxnL3Z1cTlMM3lPTU9kSFhuNDgz?=
 =?utf-8?B?c1pzQU9YVmt3WjJNeTFjc2JFYVN0ZXZqYTN5aXU4VjducDdoZ245cjZIaC85?=
 =?utf-8?B?RXhkODBCZmZXNEhzaUFGdFFMb3U4bVJSeGhZQUhxT3lQMDVkZ2VoOFlzMWd4?=
 =?utf-8?B?cEx2QWRrZnVmU2hUMmV4Q1JFbmJWQkRkT0RvcnVhQlYwK2J2ekZkc3pOcDlZ?=
 =?utf-8?B?NWNzQTk2bU53djFEMEUvY3I5Ui83ZEY1RTVRcFkwSDRVTHZYeDlaV254aDIr?=
 =?utf-8?B?OTdjZDUzc29PSTZyQlpweExWc1FKSzV1TG9CU0JFbWZZbE81UXJZa0VOOWo1?=
 =?utf-8?B?M3dnYUFNaWs3c0syVzdra1hwQk95TGNVT2dQWUdiemlHaXpEN05Ib0s4b2Zs?=
 =?utf-8?B?cW12YWpFNW0zLyt0ZGc5UDhsN01qeDRuOUVGS0l2Z0hKOE1yd1JNdUorMGdG?=
 =?utf-8?B?Um5jZkI0aGYvQzkzVnVHdUVvNTdvcGhQSEI2L1gzU2ZMeTl1bGlaS003bGVS?=
 =?utf-8?B?NEdBTkJSWWNRVzZVTkFzZmZ5MHRrZHBoTHlzY1ljcHZTK0hXRVZIb3B5bFRp?=
 =?utf-8?B?RDJYc2sxcWxhMnArRVpaa295cVd1aE5yWGRJdlVtVlNMakM2T0FOZHBORi9z?=
 =?utf-8?B?YUxvQ2FVVGZmRGxJelRkNFhzSzc3RjNvUkhOdlA3RWhFeE5LZFE5RytCdnZj?=
 =?utf-8?B?STRTMGxZSWFZUnFqc3VWV2NKSTdZbkZQOTZVYUF2MUMrTFA5cWE2cjY4VEwv?=
 =?utf-8?B?K3p0U0FVNlNyakpKYlZsMUNZUUZGd092YkJXQUZKVmorS3kxVS9lZE5ZRkt6?=
 =?utf-8?B?Q3dXK1M3VkE5SVYwVkNSSXBNdGlLd3hKT29jb2ZZTHp6bVFzQnhNK0VGYVB5?=
 =?utf-8?B?SXFsQUs0UXYvWnJUVXA1QkJQbnZjYkF3LzE2S29GQS9mWmpYSFRWVXhjTHp2?=
 =?utf-8?B?MlFndWRXak9oODhZWlpIYTZYMDJ4REdGNTN6WnZVOU9uZDVRM3RzaWIvcjhy?=
 =?utf-8?Q?1tRFhVsJeSx9JWPThrw+3kKFmw4bhWqIkB/aNkm?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: bc3d6399-5d2e-4a54-0a41-08d95b2becd8
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2021 11:50:46.6237
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BkpFZD7HqSXvpz/sXC+vW0GHbB7wyOHR1FI6qjRC52LzI15sCQrcsHf3dAsJTuw2pRSguQh/gRcpSxdk0nLOy+mtuSIC5H4Y/Ookl4DrtrU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4837
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09.08.21 13:01, Lucas Stach wrote:
> Hi Frieder,
> 
> Am Donnerstag, dem 05.08.2021 um 20:56 +0200 schrieb Frieder Schrempf:
>> On 05.08.21 12:18, Frieder Schrempf wrote:
>>> On 21.07.21 22:46, Lucas Stach wrote:
>>>> Hi all,
>>>>
>>>> second revision of the GPC improvements and BLK_CTRL driver to make use
>>>> of all the power-domains on the i.MX8MM. I'm not going to repeat the full
>>>> blurb from the v1 cover letter here, but if you are not familiar with
>>>> i.MX8MM power domains, it may be worth a read.
>>>>
>>>> This 2nd revision fixes the DT bindings to be valid yaml, some small
>>>> failure path issues and most importantly the interaction with system
>>>> suspend/resume. With the previous version some of the power domains
>>>> would not come up correctly after a suspend/resume cycle.
>>>>
>>>> Updated testing git trees here, disclaimer still applies:
>>>> https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.pengutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domains&amp;data=04%7C01%7Cfrieder.schrempf%40kontron.de%7C189884f9332e40cd566a08d95b250a82%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637641036912506485%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=OlymcyF9VOt6nsb2E%2BpFLTBnmlpOIOxwzdBbggPu%2FHo%3D&amp;reserved=0
>>>> https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.pengutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domains-testing&amp;data=04%7C01%7Cfrieder.schrempf%40kontron.de%7C189884f9332e40cd566a08d95b250a82%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637641036912506485%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=XSHl3JDKPFX%2FifXK5fcMQFOXbQXuHOJaNnJ3%2BtrMErk%3D&amp;reserved=0
>>>
>>> I finally did some tests on my side using USB, GPU and DSI (no PCIe, VPU, CSI so far) and the results are promising. Thanks for the effort!
>>>
>>> I will try to run some more automated suspend/resume and reboot test cycles over the weekend and report the results here afterwards.
>>>
>>
>> Unfortunately I got some results sooner than I had hoped. I set up a simple loop to suspend/resume every few seconds and on the first run it took around 2-3 hours for the device to lock up on resume. On the second run it took less than half an hour. I had glmark2-es2-drm running in the background, but it looks like it crashed at some point before the lockup occurred.
>>
>> Of course this could also be unrelated and caused by some peripheral driver or something but the first suspicion is definitely the power domains.
>>
>> If you have any suggestions for which debug options to enable or where to add some printks, please let me know. If I do another run I would like to make sure that the resulting logs are helpful for debugging.
>>
>> And I would appreciate if someone else could try to reproduce this problem on his/her side. I use this simple script for testing:
>>
>> #!/bin/sh
>>
>> glmark2-es2-drm &
>>
>> while true;
>> do
>>     echo +10 > /sys/class/rtc/rtc0/wakealarm
>>     echo mem > /sys/power/state
>>     sleep 5
>> done;
> 
> Hm, that's unfortunate.
> 
> I'm back from a two week vacation, but it looks like I won't have much
> time available to look into this issue soon. It would be very helpful
> if you could try to pinpoint the hang a bit more.  If you can reproduce
> the hang with no_console_suspend you might be able to extract a bit
> more info in which stage the hang happens (suspend, resume, TF-A, etc.)
> If the hang is in the kernel you might be able to add some prints to
> the suspend/resume paths to be able to track down the exact point of
> the hang.
> 
> I'm happy to look into the issue once it's better known where to look,
> but I fear that I won't have time to do the above investigation myself
> short term. Frieder, is this something you could help with over the
> next few days?

I will see if I can find some time to track down the issue at least a little bit more. But I imagine it could get quite tedious if it takes up to several hours to reproduce the issue and I don't have much time to spare.

@Peng, @Adam and everyone else: Any chance you could setup a similar test and try to reproduce this?

On the other hand reboot cycle testing didn't show any lockup problems over more than 24 hours, so it seems like the issue is limited to resume.
