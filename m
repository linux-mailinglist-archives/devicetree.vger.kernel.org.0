Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15F0A6B23F2
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 13:18:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230301AbjCIMSO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 07:18:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230172AbjCIMSE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 07:18:04 -0500
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2064.outbound.protection.outlook.com [40.107.104.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA33AEA024
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 04:17:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHARDUb2Uy5HXduvhwXRvUiT00fXWc2D81ttXxy6/Ij2mdzFWMx9ov/N8QXojhNhkI/5zjCmCPDDO6yI3kPvWCMUQpNx0uTQq2qCxdvFx98KfzIVUrOyvOC+5reTOBWzFiAsQbHjc8GMdGZjFH6oRK1Dph8nMJEbfwAr47nvzY0vU/IfjPP8zUsHUVMjAI/ezhBTvtadZYf6AQXsHOBwAOWfrFEVjPBw5XWraq4kBmEwa9YX7wJ/ivFS0Tt9fU5k9+3drtidnTZYX61kaaK8KwXhjC17V0YLaNvzZTrcBoggi1GfIV6QLTnXiG+u1K/ks1Kr5U0CawU/2MhBWBMTLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vXvDg33qs9A3ChBYZN2i7MW8ACluIjyyiLnwj+pLbx4=;
 b=ZPljmgBKUBjjOlKba+hZt2q9w2tm7ZQ8JjvY7j7mzP30U7X5xzvTESLVxVOZJ4EdUEJxuymz4g0ERG1zPeiNn2chmvbkGJPvcKAb6FbSdYT69JVRGV3LKUcJ4svNRMgwuSy2aGcoSHMmKdp1URNuIuTxUfY+UXdYI5Kq7W52K3h2cEkrQ3k3fYSabI1BYWmmP+ScGX3Blr59Jr2ez86VyDBHUXhZimGReAqRQs4OCgSKL7T6IZMYkaHrcmegl+RAQjFfLKNZ46nSabjTG4KM9FY2yfoZ6pkMQCuaFxImZemVJMu1rLItqZyLg3XSMoWroSrpmyhnrZWYcd7eMwjVew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vXvDg33qs9A3ChBYZN2i7MW8ACluIjyyiLnwj+pLbx4=;
 b=anjiePmODB3/qzsFIrzFEo8kTYPA+XMO1TYzXmFOfAqUrGbbXtOWXglCfA8Ny5Ph3V6l0hL8awkbpYErgX1Lb1Rqo1P8SIhfQjU8ycAMpOCvW48mPo5B6EtlL564NtQsBhB7Cdk0vHV/DVhyCypO4cnCXbqo/LPAKS8W56rF+UzBo7nsrCKPUaujWzSWHoCgAZqsg3cqfMT8kHYadKmCVkYJTPntTwHvVoWDhdFMEJRaaIVlSqqfS7gn+kiNE8X7j9KZXeU1UYz23eirFBSFGkwM1YpFnvWZWbVBFYeLvU6H09ewGqbyee9SUi3ZYDceNjIp0NE/7fzdlTlW3HTy3A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=suse.com;
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com (2603:10a6:20b:348::19)
 by DB9PR04MB9380.eurprd04.prod.outlook.com (2603:10a6:10:368::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.32; Thu, 9 Mar
 2023 12:17:42 +0000
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::7bca:4b0c:401e:e1bb]) by AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::7bca:4b0c:401e:e1bb%3]) with mapi id 15.20.6178.019; Thu, 9 Mar 2023
 12:17:42 +0000
Message-ID: <dff133d1-6a8b-a838-4c85-a8bb16c7a742@suse.com>
Date:   Thu, 9 Mar 2023 20:17:30 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Content-Language: en-US
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        lucas.tanure@collabora.com
References: <cover.1675498628.git.wqu@suse.com>
 <583D2908-ECED-4226-A6CD-683F0D5BEA71@gmail.com>
 <4b28da3e-9126-8409-dd9c-3899762e28bb@suse.com>
 <7A70CB52-1892-4455-B419-AD00298DE7B5@gmail.com>
 <CAMdYzYovDsiw5zwMvPbLaVcfpryX6K7r2zuVUVkAtYxiwzKGUQ@mail.gmail.com>
 <20230221214517.5rjtwpftcj5dugdl@mercury.elektranox.org>
 <CAMdYzYoWAjRQPCy_cuYH5VpMfnVR2_H+1-MNSKv0w6j-NpbORw@mail.gmail.com>
 <A539A994-7E2C-4B51-8BAB-32AE475607DD@gmail.com>
From:   Qu Wenruo <wqu@suse.com>
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
In-Reply-To: <A539A994-7E2C-4B51-8BAB-32AE475607DD@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR04CA0026.namprd04.prod.outlook.com
 (2603:10b6:a03:217::31) To AS8PR04MB8465.eurprd04.prod.outlook.com
 (2603:10a6:20b:348::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8465:EE_|DB9PR04MB9380:EE_
X-MS-Office365-Filtering-Correlation-Id: 397b1811-71a1-4674-cf89-08db2098484c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2skDUxkOnzNWs/SNI9/Q/WKMpkVM5609ez2KEQNeGp82OsUr9LQr9jSLg9ZeiOKU9Js8/YrelPrYz+C8CCZXt/Yjx0SdY1x/hurmbEa4w7sv6zaKl30VMO5tTsT1bjz/60xrsyfoTF+Y1X52GsHFxQ9YdtnYONWueXXEheBpn4sSmHdxplhoMTon4mOi0ic9aP2ym4xMz4NOGKHzyIUQgcdfTuREAv2nWqc4NW2IUo1zC1Vg4o8hZyxSnwSG7rPh06cI4vJZ/cDoCjIXtbdnzhVKTJeZ+gJYPAc++23cbz+33lLgqTK2lrchx13Hy57KPOu/IoYj9UWMLFU2v29YqCMcpnMoIks81yCZRXig6Bmle6biC1jSHjbaabcy7L1z8wMJMHFCxB8SFmizO8ZDA8EvEYVGBywDYSRR5nCpqq0tJXv8kSLa8hZ2nXv0ABQwH5hy8BH9bV7B37NdKmzuGKXMbVNVt2ECttDuDsgWsk04KhpIv22vUusMv2uUwtRcMGSZHkyQYsOJeGk3szOBG88RdS9nmoesrFcUAE1hDRFdu7DpBATQGF8cKPlVvX4vnP/8FWCnToPxIK9MfzR+npd7iJHzHSM0EJAZe47A0ZMVLgs7whCvuYOq91HBK5S4wJRIKAytm92bpI1cpdYz0sY5pSyLmORYln5+cLtToT/xMoJ62iBAYcqqjPhb1mjyE2s6jkC8NprEWzB3QOSqOVhuwCjDsTyWZIf5iXHUfcIOzAQ2aH2nrLSbLDPov3lVb20Z8LEG2OWrQ7noqF5Vc03vXqoMp/tuluUWJyYzFGM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8465.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(39860400002)(366004)(396003)(136003)(346002)(376002)(451199018)(31696002)(36756003)(86362001)(38100700002)(83380400001)(478600001)(8936002)(5660300002)(2906002)(966005)(30864003)(66946007)(8676002)(6916009)(316002)(4326008)(66476007)(66556008)(54906003)(41300700001)(31686004)(6486002)(2616005)(186003)(6666004)(53546011)(6512007)(6506007)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmQrdUczZncyYmVYVWtIV1RKK0dWNUFTQVpoN2kvcHF3WCttSDZjQVlTcUtW?=
 =?utf-8?B?SHA5Y0E1SlEyMm5NYVI2SUhRbmNWd1ptbjM2bmp2WVkrbXVCRDMwVlFSUzZY?=
 =?utf-8?B?UTd2VEoyUzNhNGhTanR2amZjRk4xSzdKWkVsS241MHAwVHNRVGkxQi9CNlUv?=
 =?utf-8?B?SzVVWXBwOUxiL0U3ekV1ZnhGaFdUd2pzcERWT0dVTmJFa0tqR2dkRWZCMEs2?=
 =?utf-8?B?NEtOQTNsY0pjYlBZWTVDRVJMM095dUdWTmFkWDZmWlBjeUk2aXdvQmZTMlVp?=
 =?utf-8?B?MVdmd1pXeXFMa3F4eGpJODdQdzJyMGRnVWIwWGFkcGN1dGZFN0NxWDdzUkhN?=
 =?utf-8?B?QzBHMnFIc0VWdDBvNXlMdXpnTFhEeXRBdHEwUUk1SVh1eDFJVWlRRXlDakov?=
 =?utf-8?B?NzdkWWo1SGlDLzF5RlVtL3pwMjZUSm51Y25mOFBEbnU0dTNwZENncll5WDAw?=
 =?utf-8?B?d25FR3Ftemc4OEg0MkJ0R0cwam1Dd0tNT29vNmZIUXlXMk5LYjNBRk9jZUpw?=
 =?utf-8?B?dkdUeFdsQkNyWm5tZFZsWWkrUnlPV2F6VVhSUFB3ektnMXE0d29sMjU4QkxI?=
 =?utf-8?B?aEZnTmpSTUxNSDJvbk9yWjMzZExGU2lzMCtxMUtiNG1YeVlMSGZoeDlaUlhw?=
 =?utf-8?B?VTBsWjZrU0lZdlVhbGp2LzY3OGZITk9RUE04L3llWXpZSkU3QlJyVC9YVG5x?=
 =?utf-8?B?TlJtNGs5SjlIRC9TaDArWHIzTGZSdFI4Y3BkaUZ3d3luU09LNFVRcXhMcEdz?=
 =?utf-8?B?UHpSVlQzZnBleStQSGtZUy9sTjF3NUVxd3FJd3JvdVRnVTJMVWJRS3pNbXJp?=
 =?utf-8?B?RENEK0pIVE1ZdS9SU05hcHREMGtTSkNwSWl2Mmdsb2NWaDlETFBNSitzRGtF?=
 =?utf-8?B?Y1hYU2o4UGx2RXhtMEpjQlBBb3NqR09TaWtLNE1MaGYrbVBMNzdlRUpDSElI?=
 =?utf-8?B?b2Nlb3BVc05kVk1TWE1ZNkJtOEh4cm1XZVJDTjgrZVZNR3gxaVY5T3BwaU5S?=
 =?utf-8?B?c1EwajVHaXRUNkU2ZHRudWtKSjY0Z0JKQWRaWS96WjZrSkFKdlJoRjN2bjNu?=
 =?utf-8?B?d1VVdVVodDB4dEN4NW8wQTFMNlJWVUVzZGppcms0K3kvUVYxOHJvd3hYbEwx?=
 =?utf-8?B?TzdjZGdIczZBZ3VmZ3JyY1A1SndEaUZlaDlEUjZEYmxRODAxWEN5MmQ1NWlN?=
 =?utf-8?B?T2gxMS9YUTIxa0x6L1dzUXFUYWw0OThiNTNMS1dkVndFUWNtcFY5cjdnZlNU?=
 =?utf-8?B?VHRNR1J4amJkVHBFWnQ5SFZDOHl2dUthK3pGY3BYd2FBeXdSUWxsTHhOK2tI?=
 =?utf-8?B?Y2toZTM5UHduaXhzM2pXcWJ1NFBndkdhRDBIQ1JBOGJJV0NURUxMcDRJc3hI?=
 =?utf-8?B?aW93R3NkbUFhbmJHQzdkTW8rd2VzeGQ3SGhjK0I3ckZOcVlNczE5UUlHVEdI?=
 =?utf-8?B?UWpPUFJLbHpkQ3AvdnRRNW9mQmpKMW43QlZ3RkxubWVYNElXbzRWcHVLdWM2?=
 =?utf-8?B?THFNTEppMGJ0Q3NRWWlsdHZIUHJidUR0YUMra1FlM1I2OVR6TDFPQXFtQmJQ?=
 =?utf-8?B?VE9vUGNCbHROSUg1QkVzNFZtU0N5Qld2UzV4TjQ1U0twNFhHUXFnYlNZZG02?=
 =?utf-8?B?STd3RGUwcHpBVW16U1VRR3M4OXgwNFliUFlTY0dIYkRieWlBcTFISnp0VkNK?=
 =?utf-8?B?OUlLZXZSVCtVclhLK3BLWFRSZ3p0Z1VuRlljRzVMc29zTjYvaEJIMGtTQVhJ?=
 =?utf-8?B?THNlbEZXOVBrSTQxUUJrUVlFdi9XM29YYldYMHp6VlU1RXpGdXk2NFVnOWpn?=
 =?utf-8?B?MytHL0ZITmY0eVhoM3ZaTG84ZHIyVGErODlHcjQ3NEE0QWdTME9vdHFGbWhR?=
 =?utf-8?B?L2NwOW5lWHJXLzJKQWd4eDhHOFVKeDRvNWRTNzRUWDJWTlo1ZFZuZmRBV2cy?=
 =?utf-8?B?YjgvcjJCallNTGQvVEJ4S0p5endHVHhJQzZ2UnNHamdDYXUvUWRQU0I1MWx2?=
 =?utf-8?B?bC9EenlEYkVIZnlOaGlIZ3htZjhkRGFjZnFtS2FORDJ0aDJwcklHb3VoTm90?=
 =?utf-8?B?elR5aVdFWjUvK0txSlZGbEVyUzNlMDdXeStqTVpySGx1MDdIODRLZUtvR240?=
 =?utf-8?B?aWZac3d3dXdMa25VbFozYlNhT2g5ajFnUFNpK3R6YUN5aE5TMXd0S2dYSTN0?=
 =?utf-8?Q?OU7DDAXsvnDgxX2mmUK90Os=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 397b1811-71a1-4674-cf89-08db2098484c
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8465.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 12:17:42.4574
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bPtVMwE79ckTZtqH351+i6YKsU/1QYvJbXyFa8wWi9NnhPRElJvC82ddT1Mt7mWh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9380
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2023/3/9 20:02, Piotr Oniszczuk wrote:
> 
> 
>> Wiadomość napisana przez Peter Geis <pgwipeout@gmail.com 
>> <mailto:pgwipeout@gmail.com>> w dniu 22.02.2023, o godz. 02:25:
>>
>> On Tue, Feb 21, 2023 at 4:45 PM Sebastian Reichel
>> <sebastian.reichel@collabora.com 
>> <mailto:sebastian.reichel@collabora.com>> wrote:
>>>
>>> Hi everyone,
>>>
>>> On Tue, Feb 21, 2023 at 01:55:48PM -0500, Peter Geis wrote:
>>>> On Tue, Feb 21, 2023 at 1:04 PM Piotr Oniszczuk
>>>> <piotr.oniszczuk@gmail.com <mailto:piotr.oniszczuk@gmail.com>> wrote:
>>>>>> Wiadomość napisana przez Qu Wenruo <wqu@suse.com 
>>>>>> <mailto:wqu@suse.com>> w dniu 21.02.2023, o godz. 01:14:
>>>>>> On 2023/2/21 02:25, Piotr Oniszczuk wrote:
>>>>>>>> Wiadomość napisana przez Qu Wenruo <wqu@suse.com 
>>>>>>>> <mailto:wqu@suse.com> <mailto:wqu@suse.com 
>>>>>>>> <mailto:wqu@suse.com>>> w dniu 04.02.2023, o godz. 09:47:
>>>>>>>>
>>>>>>>> This series is based on the existing upstream work from Sebastian
>>>>>>>> Reichel:
>>>>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588 <https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588> <https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588 <https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588>>
>>>>>>>>
>>>>>>>> And I'm a completely newbie to arm64 world, thus if there is 
>>>>>>>> something
>>>>>>>> wrong, feel free to point out and I'm pretty happy to learn from the
>>>>>>>> failure.
>>>>>>>>
>>>>>>>> [BACKGROUND]
>>>>>>>> RK3588S and RK3588 have PCIE supports, it's done by the following 3
>>>>>>>> controllers:
>>>>>>>>
>>>>>>>> - PCIE2.0x1 lane @fe180000 (both RK3588S and RK3588)
>>>>>>>> - PCIE2.0x1 lane @fe190000 (both RK3588S and RK3588)
>>>>>>>> Thes two are all connected to a naneng combo phy each, normally 
>>>>>>>> shared
>>>>>>>> with SATA or USB.
>>>>>>>>
>>>>>>>> - PCIE2.0x1 lane @fe170000 (RK3588 exlusive)
>>>>>>>> This one is also connected to a naneng combo phy, normally shared
>>>>>>>> with SATA or USB.
>>>>>>>>
>>>>>>>> - PCIE3.0x4 lanes @fe15000 (RK3588 exclusive)
>>>>>>>>
>>>>>>>> And unlike other boards, ROCK5B is utilizing PCIE extensively, its
>>>>>>>> network controller (RTL8125 2.5Gbps Ethernet) is connected to the
>>>>>>>> PCIE2.0 lane at fe190000, and an M.2 slot is attached to the 
>>>>>>>> PCIE3.0x4
>>>>>>>> lanes.
>>>>>>>>
>>>>>>>> [WORKING]
>>>>>>>> Currently the series is able to bring up the PCIE3.0x4 lanes and
>>>>>>>> properly boot from an NVME at that M.2 slot of Rock5B boards.
>>>>>>>>
>>>>>>>> [NOT WORKING]
>>>>>>>> All PCIE2.0 lanes connected to naneng combo phy are not working.
>>>>>>>> I tried forward porting the extra handling from downstream, but 
>>>>>>>> it only
>>>>>>>> results hanging at probing (causing RCU stall).
>>>>>>>>
>>>>>>>> [EXTRA WANRING]
>>>>>>>> - PCI MSI initialization warning
>>>>>>>> WARNING: CPU: 7 PID: 1 at drivers/pci/msi/msi.h:121 
>>>>>>>> pci_msi_setup_msi_irqs+0x38/0x4c
>>>>>>>>
>>>>>>>> This seems to be caused by the fact that we are still using legcacy
>>>>>>>> msi irqs?
>>>>>>>>
>>>>>>>> I checked up the gic and its dts, can not figure out why (all pretty
>>>>>>>> the same just like rk3399 and rk3568).
>>>>>>>> Any help would be appreciated.
>>>>>>>>
>>>>>>>> - pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under 
>>>>>>>> [bus 00-0f] (conflicts with (null) [bus 00-0f])
>>>>>>>> The vendoer kernel also has this problem, but my RK3399 board with
>>>>>>>> upstream kernel didn't trigger this at all, but something else like:
>>>>>>>>
>>>>>>>>   pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), 
>>>>>>>> reconfiguring
>>>>>>>>
>>>>>>>> Then:
>>>>>>>>
>>>>>>>>   pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
>>>>>>>>
>>>>>>>> Not sure if it's something missing or can be just ignored.
>>>>>>>>
>>>>>>>> [PCI DMESG]
>>>>>>>> With this patchset, the PCI initialization and nvme would look 
>>>>>>>> like this:
>>>>>>>>
>>>>>>>> [    0.142984] rockchip-dw-pcie fe150000.pcie: host bridge 
>>>>>>>> /pcie@fe150000 ranges:
>>>>>>>> [    0.143653] rockchip-dw-pcie fe150000.pcie:       IO 
>>>>>>>> 0x00f0100000..0x00f01fffff -> 0x00f0100000
>>>>>>>> [    0.144463] rockchip-dw-pcie fe150000.pcie:      MEM 
>>>>>>>> 0x00f0200000..0x00f0ffffff -> 0x00f0200000
>>>>>>>> [    0.145261] rockchip-dw-pcie fe150000.pcie:      MEM 
>>>>>>>> 0x0900000000..0x093fffffff -> 0x0900000000
>>>>>>>> [    0.154022] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 
>>>>>>>> ob, 8 ib, align 64K, limit 8G
>>>>>>>> [    0.360415] rockchip-dw-pcie fe150000.pcie: PCIe Gen.3 x4 link up
>>>>>>>> [    0.361099] rockchip-dw-pcie fe150000.pcie: PCI host bridge 
>>>>>>>> to bus 0000:00
>>>>>>>> [    0.361731] pci_bus 0000:00: root bus resource [bus 00-0f]
>>>>>>>> [    0.362236] pci_bus 0000:00: root bus resource [io 
>>>>>>>>  0x0000-0xfffff] (bus address [0xf0100000-0xf01fffff])
>>>>>>>> [    0.363113] pci_bus 0000:00: root bus resource [mem 
>>>>>>>> 0xf0200000-0xf0ffffff]
>>>>>>>> [    0.363744] pci_bus 0000:00: root bus resource [mem 
>>>>>>>> 0x900000000-0x93fffffff pref]
>>>>>>>> [    0.364450] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400
>>>>>>>> [    0.365005] pci 0000:00:00.0: reg 0x10: [mem 
>>>>>>>> 0x00000000-0x3fffffff]
>>>>>>>> [    0.365583] pci 0000:00:00.0: reg 0x14: [mem 
>>>>>>>> 0x00000000-0x3fffffff]
>>>>>>>> [    0.366159] pci 0000:00:00.0: reg 0x38: [mem 
>>>>>>>> 0x00000000-0x0000ffff pref]
>>>>>>>> [    0.366801] pci 0000:00:00.0: supports D1 D2
>>>>>>>> [    0.367193] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
>>>>>>>> [    0.368647] pci_bus 0000:01: busn_res: can not insert [bus 
>>>>>>>> 01-ff] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
>>>>>>>> [    0.369681] pci 0000:01:00.0: [1d97:5216] type 00 class 0x010802
>>>>>>>> [    0.370277] pci 0000:01:00.0: reg 0x10: [mem 
>>>>>>>> 0x00000000-0x0000ffff 64bit]
>>>>>>>> [    0.370975] pci 0000:01:00.0: reg 0x30: [mem 
>>>>>>>> 0x00000000-0x0001ffff pref]
>>>>>>>> [    0.372130] pci 0000:00:00.0: BAR 0: no space for [mem size 
>>>>>>>> 0x40000000]
>>>>>>>> [    0.372742] pci 0000:00:00.0: BAR 0: failed to assign [mem 
>>>>>>>> size 0x40000000]
>>>>>>>> [    0.373381] pci 0000:00:00.0: BAR 1: no space for [mem size 
>>>>>>>> 0x40000000]
>>>>>>>> [    0.373988] pci 0000:00:00.0: BAR 1: failed to assign [mem 
>>>>>>>> size 0x40000000]
>>>>>>>> [    0.374628] pci 0000:00:00.0: BAR 14: assigned [mem 
>>>>>>>> 0xf0200000-0xf02fffff]
>>>>>>>> [    0.375259] pci 0000:00:00.0: BAR 6: assigned [mem 
>>>>>>>> 0xf0300000-0xf030ffff pref]
>>>>>>>> [    0.375923] pci 0000:01:00.0: BAR 6: assigned [mem 
>>>>>>>> 0xf0200000-0xf021ffff pref]
>>>>>>>> [    0.376590] pci 0000:01:00.0: BAR 0: assigned [mem 
>>>>>>>> 0xf0220000-0xf022ffff 64bit]
>>>>>>>> [    0.377281] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
>>>>>>>> [    0.377762] pci 0000:00:00.0:   bridge window [mem 
>>>>>>>> 0xf0200000-0xf02fffff]
>>>>>>>> [    0.426841] pcieport 0000:00:00.0: PME: Signaling with IRQ 33
>>>>>>>> [    0.427487] pcieport 0000:00:00.0: AER: enabled with IRQ 33
>>>>>>>> [    0.625353] nvme nvme0: pci function 0000:01:00.0
>>>>>>>> [    0.625774] nvme 0000:01:00.0: enabling device (0000 -> 0002)
>>>>>>>> [    0.717069] nvme nvme0: Shutdown timeout set to 8 seconds
>>>>>>>> [    0.723025] nvme nvme0: allocated 64 MiB host memory buffer.
>>>>>>>> [    0.816820] nvme nvme0: 1/0/0 default/read/poll queues
>>>>>>>> [    0.818079] sdhci-pltfm: SDHCI platform and OF driver helper
>>>>>>>> [    0.820678]  nvme0n1: p1 p2
>>>>>>>>
>>>>>>>>
>>>>>>> Qu, all
>>>>>>> I’m playing with your work on my rock5b as I want to have working 
>>>>>>> Eth on rock5b.
>>>>>>> My code is from 
>>>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588 <https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588> <https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588 <https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588>> + your’s PCIE3 patches.
>>>>>>> SBC boots from sd card, I see PCIE related logs in dmesg. but no 
>>>>>>> rtl8125 is detected.
>>>>>>> PCIE logs are like this:
>>>>>>>    8.207810] rockchip-dw-pcie fe150000.pcie: host bridge 
>>>>>>> /pcie@fe150000 ranges:
>>>>>>> [    8.208501] rockchip-dw-pcie fe150000.pcie: Parsing ranges 
>>>>>>> property...
>>>>>>> [    8.209089] rockchip-dw-pcie fe150000.pcie:       IO 
>>>>>>> 0x00f0100000..0x00f01fffff -> 0x00f0100000
>>>>>>> [    8.209944] rockchip-dw-pcie fe150000.pcie:      MEM 
>>>>>>> 0x00f0200000..0x00f0ffffff -> 0x00f0200000
>>>>>>> [    8.210740] rockchip-dw-pcie fe150000.pcie:      MEM 
>>>>>>> 0x0900000000..0x093fffffff -> 0x0900000000
>>>>>>> [    8.218918] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 
>>>>>>> ob, 8 ib, align 64K, limit 8G
>>>>>>> [    9.324473] rockchip-dw-pcie fe150000.pcie: Phy link never came up
>>>>>>> [    9.325186] rockchip-dw-pcie fe150000.pcie: PCI host bridge to 
>>>>>>> bus 0000:00
>>>>>>> [    9.325786] pci_bus 0000:00: root bus resource [bus 00-0f]
>>>>>>> [    9.326266] pci_bus 0000:00: root bus resource [io 
>>>>>>>  0x0000-0xfffff] (bus address [0xf0100000-0xf01fffff])
>>>>>>> [    9.327097] pci_bus 0000:00: root bus resource [mem 
>>>>>>> 0xf0200000-0xf0ffffff]
>>>>>>> [    9.327713] pci_bus 0000:00: root bus resource [mem 
>>>>>>> 0x900000000-0x93fffffff pref]
>>>>>>> [    9.328364] pci_bus 0000:00: scanning bus
>>>>>>> [    9.328729] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400
>>>>>>> [    9.329258] pci 0000:00:00.0: reg 0x10: [mem 
>>>>>>> 0x00000000-0x3fffffff]
>>>>>>> [    9.329807] pci 0000:00:00.0: reg 0x14: [mem 
>>>>>>> 0x00000000-0x3fffffff]
>>>>>>> [    9.330354] pci 0000:00:00.0: reg 0x38: [mem 
>>>>>>> 0x00000000-0x0000ffff pref]
>>>>>>> [    9.330984] pci 0000:00:00.0: supports D1 D2
>>>>>>> [    9.331356] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
>>>>>>> [    9.331858] pci 0000:00:00.0: PME# disabled
>>>>>>> [    9.332309] pci 0000:00:00.0: vgaarb: pci_notify
>>>>>>> [    9.333735] pci_bus 0000:00: fixups for bus
>>>>>>> [    9.334106] pci 0000:00:00.0: scanning [bus 01-ff] behind 
>>>>>>> bridge, pass 0
>>>>>>> [    9.334731] pci_bus 0000:01: busn_res: can not insert [bus 
>>>>>>> 01-ff] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
>>>>>>> [    9.335668] pci_bus 0000:01: scanning bus
>>>>>>> [    9.336052] pci_bus 0000:01: fixups for bus
>>>>>>> [    9.336416] pci_bus 0000:01: bus scan returning with max=01
>>>>>>> [    9.336903] pci 0000:00:00.0: scanning [bus 01-ff] behind 
>>>>>>> bridge, pass 1
>>>>>>> [    9.337503] pci_bus 0000:00: bus scan returning with max=ff
>>>>>>> [    9.337994] pci 0000:00:00.0: BAR 0: no space for [mem size 
>>>>>>> 0x40000000]
>>>>>>> [    9.338570] pci 0000:00:00.0: BAR 0: failed to assign [mem 
>>>>>>> size 0x40000000]
>>>>>>> [    9.339175] pci 0000:00:00.0: BAR 1: no space for [mem size 
>>>>>>> 0x40000000]
>>>>>>> [    9.339749] pci 0000:00:00.0: BAR 1: failed to assign [mem 
>>>>>>> size 0x40000000]
>>>>>>> [    9.340356] pci 0000:00:00.0: BAR 6: assigned [mem 
>>>>>>> 0xf0200000-0xf020ffff pref]
>>>>>>> [    9.340991] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
>>>>>>> and nothing more :-(
>>>>>>> Are you progressing maybe with pcie on rock5b?
>>>>>> fe150000 is the PCIE3.0 controller, on Rock5B, that's the M.2 slot.
>>>>>>
>>>>>> But for R8125, it's on a PCIE2.0 controller, which is using naneng 
>>>>>> combo phy.
>>>>>>
>>>>>> I'm not able to bring the PCIE2.0 part up yet, it always hangs at 
>>>>>> PCIE2.0 initialization, thus only the PCIE3.0 part is submitted to 
>>>>>> the list.
>>>>>>
>>>>>> Thanks,
>>>>>> Qu
>>>>>
>>>>> Yes. Indeed.
>>>>> I'm trying to add pci2.0 and it looks i meet the same problem probably.
>>>>>
>>>>> I backported (from well working neggles quartz64pro repo I assume):
>>>>> https://github.com/neggles/linux-quartz64/commit/2ad84e89fc75b82c783345b72c97f5d7e3d45723 <https://github.com/neggles/linux-quartz64/commit/2ad84e89fc75b82c783345b72c97f5d7e3d45723>
>>>>> https://github.com/neggles/linux-quartz64/commit/4ac44c2b53758eca671d695d19b456d1849d7e14
>>>>> https://github.com/neggles/linux-quartz64/commit/714c5e01d8f0f73b3a49cbdee29e3ffe0f3353dd
>>>>> https://github.com/neggles/linux-quartz64/commit/64971f9c85f27e29c44b31a0c326ea4bb8ec3c56
>>>>>
>>>>> then i added rock5b pcie dt enablements (basing on radxa BSP):
>>>>> https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-6.2/files/1058-arm64-dts-rockchip-enable-pcie-rock5b.patch
>>>>>
>>>>>
>>>>> this gives me quite clean 6.2 mainline boot log with hang at pcie2 
>>>>> init (pls see below)
>>>>>
>>>>> I assume 
>>>>> https://github.com/neggles/linux-quartz64/commits/linux-quartz64 
>>>>> repo works well on Quartsz64 board - so I indirectly assume above 
>>>>> backports should give us working pice2.0.
>>>>>
>>>>> It fails on rock5b - so I conclude: issue/error is on my side and 
>>>>> is related to my rock5b specifics.
>>>>> Unfortunately I don’t owe Quartz64 board so can't verify 
>>>>> correctness of my backports by testing on Quartz64pro.
>>>>>
>>>>> I’m curious about opinion of smarter than me guys…
>>>>
>>>> If the phy is misconfigured, not powered, or the clocks aren't going
>>>> active, you'll hang when the controller tries to touch it. Unless
>>>> someone has completed the combophy rk3588 bits the driver is not
>>>> functional yet for rk3588.
>>>>
>>>> Looking at the current 6.2 release, I only see the rk3568 compatible,
>>>> so you'll need to add support for rk3588 before it will work.
>>>>
>>>> Very Respectfully,
>>>> Peter Geis
>>>
>>> Sorry for being late to the game. Life is busy right now :)
>>>
>>> I haven't looked into PCIe myself so far, but some of my colleagues
>>> are looking into native network support on Rock 5B (and thus PCIe2
>>> controller).
>>>
>>> Apart from the obvious (missing rk3588 support in the combophy driver),
>>> the clocks will need some work. The clock tree implementation I 
>>> upstreamed
>>> is different from the downstream implementation. Downstream has some
>>> clocks that have two parent clocks using a hacked implementation
>>> that's obviously not upstreamable as is. The upstream implementation
>>> currently only describes the first parent. More details are in the
>>> following comment:
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/rockchip/clk-rk3588.c#n16 <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/rockchip/clk-rk3588.c#n16>
>>>
>>> Back than I wrote that I do not understand the exact need (the TRM
>>> does not describe the clock tree unfortuantely), I found this
>>> explanation:
>>>
>>> https://lore.kernel.org/dri-devel/20220309094139198367142@rock-chips.com/
>>>
>>> To get the advanced blocks properly running upstream this needs a
>>> solution for this. Note that trying to access registers that are
>>> not clocked properly will result in a hang (as Peter already wrote).
>>
>> TLDR: There are now hardware blocks called a "Native Interface Unit"
>> (NIU) that gate the clocks to devices behind them. Essentially it
>> makes certain device clocks dependent on multiple parents being active
>> at the same time, which the current clock structure does not support.
>> It was decided that until the clock structure is updated to support
>> this, the NIU gate clocks would be marked critical and left always on.
>> Better to burn a miniscule more power than risk locking the board up.
>>
>> Though the issue here is much simpler than that, the controller simply
>> can't operate without a functional phy attached to it. They are
>> physically tied together and it's the controller < - > phy link that
>> doesn't function without the phy being configured. The combophy config
>> for rk3588 isn't significantly more complicated than rk356x, but one
>> can't mainline code that can't be tested and rk3588 wasn't available
>> at that time.
>>
>>>
>>> Apart from that the power-domain controller might need some of the
>>> extra bits downstream has.
>>
>> If PCIe 3 works, then this likely won't affect PCIe 2, though it
>> limits our ability to implement runtime power management.
>>
>>>
>>> Last but not least the GIC controller is handled differently in
>>> downstream. For that following the workaround that has been used for
>>> rk356x should also work for rk3588.
>>
>> The hack for the GIC controller that I maintain for rk356x is not
>> upstreamable. For the ITS to be supported in mainline we still require
>> an official errata from Rockchip documenting the issues here. The
>> mbi-alias method, while it works for simple configs, isn't scalable.
>>
>>>
>>> TLDR: This is not trivial. It's really unfortunate, that the board
>>> is not just using the native ethernet :(
>>>
>>> P.S.: We try to keep a rk3588 / Rock 5 status matrix maintained here:
>>>
>>> https://gitlab.collabora.com/hardware-enablement/rockchip-3588/notes-for-rockchip-3588/-/blob/main/mainline-status.md <https://gitlab.collabora.com/hardware-enablement/rockchip-3588/notes-for-rockchip-3588/-/blob/main/mainline-status.md>
>>>
>>> Greetings,
>>>
>>> — Sebastian
> 
> Qu,
> 
> Just fyi,
> 
> I got Eth finally working on rock5b, so - if 6.2 kernel with mmc 
> bootable rock5b with ths, dvfs, mmc, pcie2, pcie3 and usb2 - will be in 
> any way helpful for you: patches over 6.2.2 mainline are here:
> 
> https://github.com/warpme/minimyth2/tree/master/script/kernel/linux-6.2-with-rk3588/files <https://github.com/warpme/minimyth2/tree/master/script/kernel/linux-6.2-with-rk3588/files>
> 
> pls look on patches: 1001-xx onwards + linux-6.2-arm64-armv8.config
> 
> Code quality is far from upstreamable.
> Hope it will be convenient for any devel using rock5a/rock5b

Awesome! I can finally get rid of the stupid out-of-tree r8125 driver.

Would definitely have a good look into the patches and provide some 
feedbacks, just mind to share a git tree for easier reviewing?

Thanks,
Qu

> 
> btw: if anybody is interested - i can provide Archlinux ARM sd card 
> bootstrap image for these boards…
> btw2: this huge list of patches is because i’m building single ArchLinux 
> ARM aarch64 kernel for 13+ SoCs in 17 different boards/tvboxes

