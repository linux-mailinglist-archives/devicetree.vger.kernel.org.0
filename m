Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20F2348C36E
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 12:45:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239349AbiALLpb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 06:45:31 -0500
Received: from mga11.intel.com ([192.55.52.93]:57951 "EHLO mga11.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239294AbiALLpb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 06:45:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641987931; x=1673523931;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=sX86JG+rPI21+SwQFovyO5egBjcl6kM19mE8YqEXUYc=;
  b=MmU7RR2taAy6oAEgeYnB2Wo8vHiz9658ZWCug13OyqFWi6uI/6V2FSMf
   x3nOFsj9rMvRPxir/45HUfDHIuUq7auRvKw7HgsmUrxeusEidVsyuYE/Y
   qiAJM7vjJSz4S3aD6p8A7dkfFHBMO9ul9mRfa4SI0dn2eOvYTriuSJOAG
   4azkmcumhc3tpJq3Hav/pSnmexItqU7nbwGj+ziq9ipja9oyqFv37LF5l
   S4E9vrNFVRryy6/6FdAtki+7YUMEhpv8+4/Q7beflbz8g/D6RoSZyNoaH
   tsUF8pnWvsktixy2Wo2E8cGj9vHJnz7rSq5pxpeoQ6YEzq61hwZgzf4zc
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="241270121"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; 
   d="scan'208";a="241270121"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jan 2022 03:45:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; 
   d="scan'208";a="765176869"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga005.fm.intel.com with ESMTP; 12 Jan 2022 03:45:31 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 03:45:30 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 03:45:30 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 12 Jan 2022 03:45:30 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 12 Jan 2022 03:45:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VGBDcFy7qk37JaKDHp9EeP32xISe91xxebEFtSOS41Q8lieRhxWXcE25ObNwA+ULI/G4zkN3BZu5jNwloC+QXeAGWJffB4yh/cbJomDdQeRW00pS4V/vzqYTRXP+Tng80N8nSjR/osbccqkVeYyU9BEhCCY3IGUBDFHUPEKKuu7Jh18lsNxNWV3sNBWofhqF9xZ2xNgJmtkutRyg0OgvBqndWzB40I7IkNvjnG851gxLqdZmODwtQ19JgnoDeW0rDebA2g+T8b5UXJShRfkrIPYGo8UvLqxL9uS9qAip6VEMrPvKWTRdBCP+jyd4fRoF9UL4d5CGqJkkYh93eqyDZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fN0ukGg/bug7h6xTqMrQ0jBA9CMjTrYDJt9e5U7ZWQg=;
 b=Ab92mvr0R2XyWlnAiYCgxsAe/2UVI2ZOErxn5WYT4leOzl6CgSJmelpWtlqFWVt+hlI6HFzN01vtZ4L9JB29ctx6E5n6gLeTDg6QjdBQT07qBlJZnhbrDdd+rh7Xz5bmCd+fstihX5ASiVCS1S9mCcX6DMGBYLYSQww7BD2Ra3fYFOhOpXAvPdHnCd5fpSaatD5B4oyN3hAveB/6qTdhtb01SasRS5Iguspt+P+duAKwGnn42G6fm5YLm/vPUSj2bqkOxNcgCSib+WrT93fQseDq5CZJg7EZTIVFPt5PC5nb3Lrs6Pfc3kfZ1PwijYL3FATozcZl0T1NdU3SsTpLnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 DM6PR11MB2668.namprd11.prod.outlook.com (2603:10b6:5:c7::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4867.11; Wed, 12 Jan 2022 11:45:29 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b47a:6157:f9b5:b01d]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b47a:6157:f9b5:b01d%3]) with mapi id 15.20.4867.012; Wed, 12 Jan 2022
 11:45:29 +0000
Message-ID: <08b61950-3830-5ca0-8b8a-7be3daec322c@intel.com>
Date:   Wed, 12 Jan 2022 12:45:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.1
Subject: Re: [PATCH v3] drm: of: Lookup if child node has panel or bridge
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Maxime Ripard <maxime@cerno.tech>
CC:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        <devicetree@vger.kernel.org>, <linux-amarula@amarulasolutions.com>
References: <20220111183152.494923-1-jagan@amarulasolutions.com>
 <20220112100338.alaaggidlydoiiso@houat>
 <CAMty3ZBZR24AQYydoPz3bONtpwGLsiVUmt7TLv9ivT_-bfcW0w@mail.gmail.com>
From:   Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <CAMty3ZBZR24AQYydoPz3bONtpwGLsiVUmt7TLv9ivT_-bfcW0w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6P195CA0006.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:81::19) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 67c63078-2b37-49c3-706d-08d9d5c107e3
X-MS-TrafficTypeDiagnostic: DM6PR11MB2668:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB2668F790C41994237460C91FEB529@DM6PR11MB2668.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iisiNjvNbEmeSze/kod6l1KVPbJG+trMsCRLGbsPBFI0DOFZAiS4+zrxBv9Iuy3ZTObp1k0W3nz5fuyTbfGVVAlP2zHhV4VgwOA2Lu1Y5HNOS3IN4s6HBhZhgr52HhFiwajTOHoNfpDabh1oMtU9/KL7hyF936ewLmVCmevb/BJkG2F3+PDh9zssBuxqH6IljF7cSALD1uYFB+juPY7cePBTS6Epy39xBjbkwlIiPTw3VrAHJ9SJ7BKPgjDNUtbqOMCkwwxsEPmSVVzni4o90JkNUvp4IdQX3oUT69SbHkhYjaERAgOki/4Dp1+jUWX9EW+7VjDsLppsbdfnjyaZkHtyj/puKX0rKwhJ//1ObxaaS1LeIO0b8K3FSoosymEXe+sS1qQS6FqwwbwR/kD1p+FMdxkTNZrOAHwTl756+knsa5LUpGpN6otCzUUVGcMBFRNRhEWYkVkPPUflozwp+zP7f6bYjYohtLr8Em/hzYns4ZRYYHrPXb0Iid8V8qPTF4np4sk7n2JKTb6bv7o0oe0/9PZUw4wS+xpTyT1VoVamfBheZ9RyRPNL0D6T+wMxYLkOiv/cFEI1EwsWUpa/Pf89KgNpC+eB8I3fqWB8fHsMKWxVCq4chqOHqcRkXIcTsQ6UCmAvW76W8yCAuOgBVs21iY4rGH3vOgWkERj2NnnEuwD98tyWa+qdowri2hinVg1UCd2oFCMW10YYkKBHoBMsPP5g+wQZQQCzS9fTGxg+JKYawGQLLP7hZA3+tTE/UKbuXoVqTrNT6cDcL+kjQDtDbxasSP6x0HsVpev+lES4x1rCZeIIbB/Huo5QGQx5
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3180.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(66946007)(83380400001)(8936002)(5660300002)(66556008)(66476007)(36916002)(54906003)(110136005)(86362001)(36756003)(6506007)(44832011)(6486002)(82960400001)(316002)(31686004)(8676002)(2616005)(53546011)(6512007)(31696002)(26005)(508600001)(2906002)(4326008)(966005)(38100700002)(186003)(6666004)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b25OY012WXFYNFFhZVlqYjR2ZEYxQVk4WGFCVDFrUDd1R1BFd3pucU9ySHBs?=
 =?utf-8?B?VWwvY2h0MWY1N2U1ejFjcnNRbVdvaWRBa3psclk2MjdTTjJZNi9LckZ6QXRa?=
 =?utf-8?B?NWNrN29PZ3lyUm5KZFFiRlVadjBpWktOTmd4djA1SjE5SHI0cUlJV2syRXp2?=
 =?utf-8?B?VVYzNVg5QjN3QWFEU1RmS3VrdzBsQTB4SlFObldrZVZhaDBlN3J0TFBJSnBm?=
 =?utf-8?B?VFh2R0J4UmJrMTcya3NWYnVvZE0xU3BDVUtvbTd4aWI4N1FNQnR5WnJNMThr?=
 =?utf-8?B?emZoS2tsZ3FzM1pYd2V5VXJkbTZybmJTdWFONnFsbklYWWJnekhYN0U0eEps?=
 =?utf-8?B?bG5GVDhWR01QQWgyQlVZUi9rb21zZi9JWHlrNTlUekVIbFVoWXhEeVljc29q?=
 =?utf-8?B?eE96TWtXbURDN3k3dmFwQUlPZEp1SFVDVzZjS0VQTllEdDlnTEtEVVpnTlM3?=
 =?utf-8?B?U1ZmdXlkTG8veWN6SStBODFtTUEydU40eSsxRG9pME82ZzJRbkpSS250MjMy?=
 =?utf-8?B?a1JZVW1lRE94WkU5NG9Uek5GWG1GYWpzbTRlOHRDUG9LbXhMSURTdHRCcWNr?=
 =?utf-8?B?L0pDU2JJUTVnMTZlRENrUk1XanprOHh2cGJrNTh6TSt1OVBmamFNcEx3Qkpn?=
 =?utf-8?B?ejhRdGROdUlLU3VVVS9aaG82c1FyWkRDc3dnYjg1bEhzbUtLQ01UVDd6OG1P?=
 =?utf-8?B?aXlqUlB4aVFILzBWbDgxTGs5S1ovOUR4clAvMG9LMGRWazUvSEhyWHBPT1kz?=
 =?utf-8?B?ZnRocHk0a3YraDRlMGdyNVpoMVlPbU1MeVpDSGVWRWQzYUFXcTM3VUhtcVF0?=
 =?utf-8?B?NE1VN25qT3hTZjY2WXhVZjd2RUdZZE8vQ0VnbmJaNktJNlNqczRhNVJScnR3?=
 =?utf-8?B?aVhSQ25YTU5PNzhIWE1KYnBqK214QWYwVjVNKzBEeThqVGhTUXFtcDNKa0Fy?=
 =?utf-8?B?c2ExK3RZbTZhUlhFdkIwTHJrcXM1SDdaTklhOE5PSDc4NFB6UmVHb3UzL041?=
 =?utf-8?B?bUNNcG52MGxncWtWdlh5bkdUeVphQml1NEpLdnRGLzhwU05ZaVFxcW56Qnkw?=
 =?utf-8?B?aXZKVGpTV2sxN09HWm9DMytZWjNVcU52Qk16VHZ2anFLalh3OTFuTnZFZmJn?=
 =?utf-8?B?RWZFeFZmVDl5QkpNOGlhSFlQa1l5dkcyelgwWkZHcGZkMTJhR3VmTlJNNWhG?=
 =?utf-8?B?dWxCV3RsOXZOaitqdDg3K2ZJc0I2MHl1NU93U1BITjJwcTYvTWM3REhTZmQ3?=
 =?utf-8?B?NmcwczlBVXd2TE0vUklkaG9qU0EvMmNZZ3pOU1pFZEt6c1FIRTcyMjRqcS9H?=
 =?utf-8?B?b3gycDFmY0JpVno4cDhzZERxSlNCUmNKSmxrbXp5TEp2YkZUaDRicDRRL203?=
 =?utf-8?B?L1k2ZUpQSkdDZytPdkJhV3B6c0JGT2JwYlYwRWtGZldiN3duek83SnU0MlhU?=
 =?utf-8?B?RitCcG90dVJYS2kwc1Uxa2xRTmJ6MlRUTG9JZndpaldpK3RBc2tuL1N4YW9s?=
 =?utf-8?B?LzgvZngwczB1aTNHS1djenZmR1VlYjVqRTNtb1NrTGg2T1M4ZjlaYjRBUW5i?=
 =?utf-8?B?QytJejNBN2hXWUExTG1MYWJXcHZZNklENHZiWEhHQ3p6TTV5WisyVGVXcHI1?=
 =?utf-8?B?S0EvanN1NjBJSHhOSDltYkt1N1BscUg1VG5hZUl4cDFpcWg2REc0RjQ5dTIx?=
 =?utf-8?B?c1N4NGdlRE03U3ZFUDVRSnM2elh6TDc1YThXYnVKK0h3ZWZQVE9WTUxlZjIy?=
 =?utf-8?B?OG5YVDZPTis2RFRkWU1ZUS9uUUY4OURIcFN5MkdWcmU2ajF3WW5iV2tVdUE2?=
 =?utf-8?B?SVRWS1l3cGx0Q0JSNkVXOGVRRllHeFJ3QnduQWM1R2xQdjBIMlBxa2F4WVp5?=
 =?utf-8?B?MXU1akJNZm5ia1RHd3dQWHIycjZTRXVjZGdicHVvVGZGQks3QTRudXhnbUNh?=
 =?utf-8?B?a2ozRmlHRkZ4L1g2QnYydjRzMTFzZi9QZkprQjFybnhBd0d4RFhLT0tOT0Y0?=
 =?utf-8?B?YzBDMHhiT1pEZ3pWN1U2TTBmbC9sY1o2WU02N3IxcDVrNVpxR3BjVkpCZnlC?=
 =?utf-8?B?cTMxaHVJVnQzYnRMdlhVbTZUVjNzU0xQdlR5UmZOcFpSaFU3czdNTGtlNk91?=
 =?utf-8?B?MUVvaVZhR2NkZm1Jb29QLy8rWW9weTNYdHMzdDlNL3E3T0kwRGMvN1h6SmhU?=
 =?utf-8?Q?nex0NApucjrV0W+VSxFpaQg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67c63078-2b37-49c3-706d-08d9d5c107e3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2022 11:45:28.9729
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IO2duT4jHXmXiN5Wqx9TFftn8LEbo9F4tEPeH3iWgfPn9h+aXCDzhC7NL2bHcFfJI8vwAY163mJeI/RSn6eD8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2668
X-OriginatorOrg: intel.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 12.01.2022 11:14, Jagan Teki wrote:
> On Wed, Jan 12, 2022 at 3:33 PM Maxime Ripard <maxime@cerno.tech> wrote:
>> On Wed, Jan 12, 2022 at 12:01:52AM +0530, Jagan Teki wrote:
>>> Some OF graphs don't require 'port' or 'ports' to represent the
>>> downstream panel or bridge; instead it simply adds a child node
>>> on a given parent node.
>> All bindings using OF graph nodes require either port or ports.
>>
>> DSI Host however don't have to use the OF graph, and that's what you're
>> talking about.
> Yes, right now I can see DSI but this change is generic to any OF graph.
>
>>> drm_of_find_panel_or_bridge can lookup panel or bridge for a given
>>> node based on the OF graph port and endpoint and it fails to use
>>> if the given node has a child panel or bridge.
>>>
>>> This patch add support to lookup that given node has child panel
>>> or bridge however that child node is neither a 'port' nor a 'ports'
>>> node.
>>>
>>> Example OF graph representation of DSI host, which has 'port'
>>> but not has 'ports' and has child panel node.
>>>
>>> dsi {
>>>        compatible = "allwinner,sun6i-a31-mipi-dsi";
>>>        #address-cells = <1>;
>>>        #size-cells = <0>;
>>>
>>>        port {
>>>                dsi_in_tcon0: endpoint {
>>>                        remote-endpoint = <tcon0_out_dsi>;
>>>        };
>>>
>>>        panel@0 {
>>>                reg = <0>;
>>>        };
>>> };
>>>
>>> Example OF graph representation of DSI host, which has 'ports'
>>> but not has 'port' and has child panel node.
>>>
>>> dsi {
>>>          compatible = "samsung,exynos5433-mipi-dsi";
>>>          #address-cells = <1>;
>>>          #size-cells = <0>;
>>>
>>>        ports {
>>>                #address-cells = <1>;
>>>                #size-cells = <0>;
>>>
>>>                port@0 {
>>>                        reg = <0>;
>>>
>>>                        dsi_to_mic: endpoint {
>>>                                remote-endpoint = <&mic_to_dsi>;
>>>                        };
>>>                  };
>>>          };
>>>
>>>          panel@0 {
>>>                  reg = <0>;
>>>          };
>>> };
>> I can't see how that one makes sense. The endpoint seems to have a
>> single output, yet you also have a panel under it which is also an
>> output? You should have at least the virtual channel of that endpoint
>> somewhere to differentiate data between the panel and whatever is
>> connected on the other side of that endpoint.
> Same that I understood so far (based on v2 change), However we have
> exynos5433 has this pipeline and Andrzej mentioned it is valid
> pipeline on other thread.
>
> May be Andrzej, can give more conclusive evidence for it.


Hmm, this is DSI bridge (or encoder), which has one input (connected to 
mic, described by port 0) and one output (connected to DSI panel 
described by child relationship).

It looks for me quite natural.


Regards

Andrzej


>
>>> Example OF graph representation of DSI host, which has neither
>>> a 'port' nor a 'ports' but has child panel node.
>>>
>>> dsi0 {
>>>        compatible = "ste,mcde-dsi";
>>>        #address-cells = <1>;
>>>        #size-cells = <0>;
>>>
>>>        panel@0 {
>>>                reg = <0>;
>>>        };
>>> };
>>>
>>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>>> ---
>>> Changes for v3:
>>> - updated based on other usecase where 'ports' used along with child
>>> Changes for v2:
>>> - drop of helper
>>> https://patchwork.kernel.org/project/dri-devel/cover/20211207054747.461029-1-jagan@amarulasolutions.com/
>>> - support 'port' alone OF graph
>>> - updated comments
>>> - added simple code
>>>
>>>   drivers/gpu/drm/drm_of.c | 18 ++++++++++++++++++
>>>   1 file changed, 18 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
>>> index 59d368ea006b..aeddd39b8df6 100644
>>> --- a/drivers/gpu/drm/drm_of.c
>>> +++ b/drivers/gpu/drm/drm_of.c
>>> @@ -249,6 +249,22 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>>>        if (panel)
>>>                *panel = NULL;
>>>
>>> +     /**
>>> +      * Some OF graphs don't require 'port' or 'ports' to represent the
>>> +      * downstream panel or bridge; instead it simply adds a child node
>>> +      * on a given parent node.
>> All OF graphs require either port or ports. DSI hosts can just have a
>> child node.
> As commented above, it can be DSI or any host which has child nodes
> and are looking to find panel/bridge.
>
> Thanks,
> Jagan.
