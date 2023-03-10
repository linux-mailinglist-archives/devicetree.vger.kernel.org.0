Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6939F6B329D
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 01:16:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230391AbjCJAQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 19:16:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229876AbjCJAQW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 19:16:22 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2058.outbound.protection.outlook.com [40.107.20.58])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50F02F31F1
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 16:16:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TpNJMAVfK8s6p8cI+vUM9eCYBK9sKsvE6Ijs5qEbBE3nhRjCU7SHipxTjvdWcgPpezFagB0F6IEQGtqmUjeEhHPUD9IrL0bT5crKUKfuiWuAMh9OuIQJJc+4jkC2GKhLMT2S+UEzGUm/pn5UOlE7Ud2v7H2j1NHRQXsBPPUc+wyEYL4ms2A92R4Vq5NeaggYBOcP0a2Rj5CLda8OqwI6CgQMp1a64ZopBOs++E+zL+vSPPwXGngRXl0ammn3x0svs1vdebO7UK9vTVsqUCfEUSIdjHY7gKE1R8yJe4Zq7IAqBvtum+kaJAHlyxoUK8oN/srSjNQhK6Iuy4BgrIo9bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sgimG2hq+aAgo7B6BnMcJuJrpoUbI3JtIWZeagDdtws=;
 b=CP7ZkmSqXfXfL0atAHyz9i0didsxz9Gfw9FwQT10Cef0oKnFVChRxaP+pxBwQI6uGPU69NM/Akj/0dXn9YgoXyJd6nStsOzwA5Zy5Dh4phgLJA1oXRLdYpZBjxW/N4CeMAFyVymlAHYTSluBoVOgH7NHoJsttbfod1x/W3Jn4LcOAMgaVeqnI4KBSThUBKqGfjUbpxigCZLVSKjwRMF+YjqV52DgMwa9q25DREigNIkL3Rl6IDKzwVjeSkc89zEj4X5u5Hx6HFMIxbuyr3KXWMVEvIdpFS+wMux9RSK7TLfBdCfdOe0Yl1AcD9vbm783YMw7q2XLgCxJSE/8wLus4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sgimG2hq+aAgo7B6BnMcJuJrpoUbI3JtIWZeagDdtws=;
 b=UVLpvFoJobT3k4whuSs+r9penltLvhHSwZAU1INSwaRtfEW358ntNPukIiI3Di3ejQ70BXubNd6MkER/+OmCrVot+P+LAM9AAvjWU8Z6U9Aub3/ZVu8x9Xz2rHAgNhu9oFwLXjLTqUWJNIIpgFYGlJwSku6dEAIPPlvCemOoNPTYrVj36h/x8A6CWy4Ts2AjEM9PEoH0hDX4aArLmkdpqwCbeZJqTANS0w/oozskMY5i6eDEKKkZ8Tskbg8O3D4UZo7ecYTye4o8mnzVOeQlbqePoIBM6aHYMzHEsWrfTe/jTSRAMldq4C01YfErHEvnVcoATgVAvuMQ+tyvIXcC8w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=suse.com;
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com (2603:10a6:20b:348::19)
 by PA4PR04MB9318.eurprd04.prod.outlook.com (2603:10a6:102:2a5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Fri, 10 Mar
 2023 00:16:18 +0000
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::7bca:4b0c:401e:e1bb]) by AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::7bca:4b0c:401e:e1bb%3]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 00:16:18 +0000
Message-ID: <d701239f-f844-e504-211e-d88de0ddac8d@suse.com>
Date:   Fri, 10 Mar 2023 08:16:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
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
 <dff133d1-6a8b-a838-4c85-a8bb16c7a742@suse.com>
 <6024BC59-B1ED-441C-97F8-73688022F899@gmail.com>
Content-Language: en-US
From:   Qu Wenruo <wqu@suse.com>
In-Reply-To: <6024BC59-B1ED-441C-97F8-73688022F899@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH8PR05CA0020.namprd05.prod.outlook.com
 (2603:10b6:510:2cc::27) To AS8PR04MB8465.eurprd04.prod.outlook.com
 (2603:10a6:20b:348::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8465:EE_|PA4PR04MB9318:EE_
X-MS-Office365-Filtering-Correlation-Id: 4444cd81-ad91-420c-c160-08db20fcab56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VGOSroN3gRpKxMT/KO1/VU+wa4pQPglJkBwsd/nh5p6ap7yK6OAS0KAjtRR/J5ZtjOaE6GH5ccmyiKSq74yV4d4EgmKiheDyqAsS6osOq+88NVBi7vfSNyIeEwQ1lwvRK+EmA7PN5i359z/wH8aPfVC1B6XDRm2c53q2TKnAzTIyZ9ouGG63pNS6tYo4zQk/4hZuYNcTJJZwR38bp1QrMKYjXIhMd+OKNm8mL9K9CiYQk/VrFurxsuRFywIFyyWnyli0eW5R8PKkLbHGGMiIsKGSnF8ZJ4NkzJFLloUS7o4tAJVjFdvbmFn0yYlXyppWQIzghUUcILr6MfnVqWvTFcFByXHpApNcyvbSI6nMyPhAKC1958wdHenEQeo1Iv3CMiLRxKpC3hWzCEeampX0p6I3iifwRsHweA1I3Yh5LcknD2umy/NQxlUJHe9HH2YMxo4QN8CRZREI+tZhDz1HzZVbUPwM25OdApo+bARBcyDwVcStzKFEhYqU8viPNfM+CEhbj7yPYcqVjkilQrjGN0Ylm3fb+gLECsAgUIh2DPI5Xn7MQZwy71ni+n2JOojwnMvk0gCeJC/93wL3tNpXiznOXBS8Zh8nOk4IhBq0nczJ3EV92FeYsDIcPTsDxFQYjwjXwHuo1p1xniQDcLvmED6IAmMC6XGk5wPWjingUVe4Tqn9Zr+2NOfZd9kTmSAOKiKYF0mWeozjaUVVHgNmx7aiPcXsfT+Z2EqVLfE7EexrsMUfOCFoDndy7FjsQRPz
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8465.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(346002)(39860400002)(396003)(366004)(376002)(136003)(451199018)(5660300002)(2906002)(4744005)(8936002)(31686004)(66946007)(6916009)(41300700001)(66556008)(8676002)(6666004)(36756003)(6486002)(66476007)(54906003)(478600001)(316002)(31696002)(2616005)(4326008)(86362001)(186003)(38100700002)(6512007)(53546011)(6506007)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWhpb09Tb2N6cUlxRDBBK3lyNURhYkpybVV5OTg1SGxSVmRsWmdWcFcrSUVm?=
 =?utf-8?B?bkUxaUpkdlRaSDN3VEVHWlZsVlhxelpnWDJXbzVhcjBQRDIxb3VOQ1d0NEp2?=
 =?utf-8?B?VGZZME14NjVtK2pCQ0JsYjBlODdXeUUzb2JEMDRNZlFoYzNJOHRiTkZMZWJT?=
 =?utf-8?B?WXNUcmpkczBTR3FnTUkrbitBQk5leVpSa3NvbFBHQ0sxRUd5MElhdjhleXFY?=
 =?utf-8?B?NGQ0K25EQzFCWk5Wc2V0Z3RKaDVLNDRRUVNqYW9tdnludkpBMUtBdFdNN1h5?=
 =?utf-8?B?bU11R2R0TEE4VzNaN1lCVC8rT2IwNXBwYkpuYUF4Y1ptbEMyVjE1U0Q2d2dx?=
 =?utf-8?B?aE9NYjk1TVI5cTM3d0l1N0lxOVRySFlhdjJ2S0tKMmJqdTlwZ1M0SS9nT0pz?=
 =?utf-8?B?Y1l1aityZ1R5bUR6bTBCbEo4aFRobnhrd0prTEhDQTh1dGFuUEVHbDRzSlM0?=
 =?utf-8?B?V1BHY3p0bHZISnZtblNPbmtNRkJtZmU3VS9XNUlwVnhmRmZaTldhTXp1dXUr?=
 =?utf-8?B?RU1rYWZ3NzNkTXBFTUdXd0VsMmY4dSt3bkZ3T001Z2MyRGJvVklFRVFRamIz?=
 =?utf-8?B?Zi9uY29nU3dLdEcxV1RFa1NXeVlxRzJJc0lYblVsR0RLOGs3cU1tZUxUQmlL?=
 =?utf-8?B?ZUNqaEVZSjVnOUNMcjFxNndMcTRod3Rqallaa2hVZkRLd2cwVTFsOVhyZEZ6?=
 =?utf-8?B?SHU5RU9SeUlZNXpJUnFqL3dKeEs1TUVZM0loMmw0WkxUU2J0QkYyQ0pqRlYz?=
 =?utf-8?B?WThXSVlnYVlRNFZkMFVsY1VKZU1NMWRDNGhCOWI5aVU0Y2RYVFlxRXJFMzFn?=
 =?utf-8?B?M1UyUy9JOEtFTE9xU2Y1YmhzS0oxc0pKaCtsSHpkUlRpSDFQSU1pc2dwOVFm?=
 =?utf-8?B?OE1FZUF2WTBaRkdpQTBWWVJSM2s0VmpxRUw1Ukt2NVZBaG45ZVcxWkNwYkFX?=
 =?utf-8?B?NkFLdDFQdDQzWTBhd2VxRDdVKzMxelY1L0tJd3NyQ2tycU1ORER2Z2FMNjNH?=
 =?utf-8?B?dUhEUDhwWGZwdzZ6cGdlWE9mYnRnNzY5ekIyWFV1YXpRV0lQOWcrM3RQVCts?=
 =?utf-8?B?czhGNnVJSU90ZXhDMWlWSFNyalBVcU5xQlQ2SEtKNnMvaXloOG45N1c5eW5t?=
 =?utf-8?B?bzR4TnBNOTBxV21WMEMvTXRvSlNkWWdvYy95a0dzVlpUL0dCRlVVdUNGbjRv?=
 =?utf-8?B?RU5MRTVVWDdhZTdLRFpiMXFaaCtERWhBditubjJ2YzBzQ3IxL2pHYUpQT0dN?=
 =?utf-8?B?RUdkcmd0Y2hFVDZ3aExUYTlXSGhnWFpKdWRwTGhud2dQZ2J5dGhZMDVEUk0r?=
 =?utf-8?B?bHJpaXJSeUJPL3ZwbllWeCt4MjFSbnBBcmZFZWJSeE9lTExBV1NiUy9Vc2RE?=
 =?utf-8?B?eWp0akxTV1MzeHNWeEpEcjhrTWg2SnZHU1ovekJEdkUrcmNJY1NlN3E4QU02?=
 =?utf-8?B?ZXhGemFDQ0dlbFNFZGtHNXNvYmpLcjlZa0FhbzBiOE9TYXVaUllXZERYNTI1?=
 =?utf-8?B?empYR243UVFpdDdlRzk1Sm9FQlBvU2ZGMnVVd2JBRjFwV2VCMnhFaHhyVkEx?=
 =?utf-8?B?TWFxekc0a1BJL0RDempSU2RQbmYzSDNRUzdGYVA4dGdiZW43cy94S2dHc2NO?=
 =?utf-8?B?YmxId25BNTY0VW9HdkM0WVdYY0xLcTlFN3dnSzNTU2lhNm50WHB1SStRb0Jh?=
 =?utf-8?B?WEo0TlRiRmlGMVhUalRvbkdVNVhsRjBza0IweEE1d2hiNGQ5M21ROG5ZTEU0?=
 =?utf-8?B?dUFNellqV283QVhUQTV3VW4rblNHOTkrWDd5NGVxeFYwUU1EWnQ0UVplNG1o?=
 =?utf-8?B?MFY2ajdKT0Fsa2lyVy9JcEtzZHcrMmZORWlTMEFqTVl2TzI4ck4wSUNZUnFz?=
 =?utf-8?B?MGN6STNCM2VHREtCRXJhZ25kUSs4VjdCcUo1VDV2eHBPclJZbUl3N3JxY05u?=
 =?utf-8?B?dlFtVDVNeTZEdGYvczlZQ3JqdDVJdVk5NzlleE1OVjdrSmlRYnlHb1I4cUVP?=
 =?utf-8?B?SlROazByeVVMd05QSUk0WkdINTZtZVZ6K1E2WkN1TkhoOUJTd3JZdGI0a3FV?=
 =?utf-8?B?clhkMmI0UjBwSmwzTnRWc01ZN2JRVm5STlR3ZXlkTlV3QzMrUG03NzN0eEJ1?=
 =?utf-8?B?bVo0SGtTSVExYk9qOHRXdjhsZjA4ZTdDcVAwQkNvMjVnS0hDeDl6V0JzNXNk?=
 =?utf-8?Q?5rjkPvfYhhoHbDAUAEXvGEw=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4444cd81-ad91-420c-c160-08db20fcab56
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8465.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 00:16:18.4943
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CwYU44DTei0sBkXXhqFq0yWgZXs75DpCpt/DUSqW1C4SavRWonXOUaaivRvoVodn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9318
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2023/3/9 21:00, Piotr Oniszczuk wrote:
> 
> 
>> Wiadomość napisana przez Qu Wenruo <wqu@suse.com> w dniu 09.03.2023, o godz. 13:17:
>>
>>
>>
>> Awesome! I can finally get rid of the stupid out-of-tree r8125 driver.
>>
>> Would definitely have a good look into the patches and provide some feedbacks, just mind to share a git tree for easier reviewing?
>>
>>
> 
> Ah - git tree... my distro builder uses model with: mainline src + patches - so effectively i don’t have git tree for this code…
> 

The ABS is fine if the number of patches is small, but when patches go 
larger it can go a little out of control.

Never mind, I can still fetch the patches and find out what's the 
difference for the PCIE2 naneng combo phy.

Just to mention, some kernel AUR also go git tree to simplify the PKGBUILD.

Thanks,
Qu
