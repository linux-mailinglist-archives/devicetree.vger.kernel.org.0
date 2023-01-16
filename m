Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9EFD66C3C9
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 16:26:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231421AbjAPP0x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 10:26:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229925AbjAPP0T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 10:26:19 -0500
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01on2087.outbound.protection.outlook.com [40.107.14.87])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABA7123D87
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 07:22:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YL3nRrZRJUr896EFBWZ65Huyh/6Y1zf5xe0ZScVqRzltj5NxYJhavtRGvbVCyCMQroeutwSkivl6X8Z9kxrgDLLwYrgq4FU6MU/YVmOw9xETPjGqO5+L95m2uUos4gHn8lc3lWOgTthIPKizrqfubfsWyW5jqYg7a41CWk4b99ZePSskCmCrWWFaBsu9eYApKfqgmdTwoZ1hj/najiAPgLHVkGWj/TzJamWWBUpqt7o6H7tJuzvOQ9vho94MSXPPrEm1F82IJeGRZdoiKzd7RYMWBZx3deRnmzPKBx5ECBL+bDZU4YBhmPx+UfIwIxCc73NTLpXax6qQGDJVoGXSwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c8ZRBFhIwCaqDvFZhOewfvgJPgOePL/q/+jxj5oMJRI=;
 b=cYxAaOP7fb6FuH5E8aNVn2iq2AeMq9McjnpvElGsHIrMPrANSVWZ2ps8IG5imQ16QhsgjZ2yj8khL2e4yWpc3e0Scdru/PgwEJ+R9uPRWdpbxMbes3yebWVyItXVwBwvETpX1GEIdGNaNRVb2kYGD0yICHpKOubxjLcoBXKA8pNJp/xYELdf0TSzPwXE3DBlaKbD6hAVf2qMV7t4kev3ASW8MRKzdz6xdDxZw6t1TZMzqVT0Lef4IzCMxWIjMz/06y1r1st1Yu5vnY5Fmc5XTeZgxJua9nmucYow4o38RM56nwyLTJqHPQuCEceu3CSg+WLan/ptTz5Kv1Vn66OfzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c8ZRBFhIwCaqDvFZhOewfvgJPgOePL/q/+jxj5oMJRI=;
 b=t0SOnBTnog1JU2Bj4eQzf0szCidWWNeBz9sjSlzwYMOU2I4VWimsf9GE5lrGgjGUUGInesBr0WFYrBRWsFFuZtpc7PBdd5yM4rnB1fuy4sNE3xd3Hw+Ac0UjPoTEw/zKM+ydu2VkLU3r7Nr/T2Ci5UIYf94l+iZ2abfCP+7LsOo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by VE1PR08MB5566.eurprd08.prod.outlook.com (2603:10a6:800:1a9::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Mon, 16 Jan
 2023 15:22:53 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219%2]) with mapi id 15.20.5986.022; Mon, 16 Jan 2023
 15:22:53 +0000
Message-ID: <dfea81c2-b32d-a548-89ee-f1237ad5f2ec@wolfvision.net>
Date:   Mon, 16 Jan 2023 16:22:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arm64: dts: rockchip: fix probe of analog sound card on
 rock-3a
Content-Language: en-US
To:     Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230115211553.445007-1-jonas@kwiboo.se>
 <7caeb07b-8465-6bdd-d90d-06a905b56f37@wolfvision.net>
 <4802111.31r3eYUQgx@archbox>
From:   Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <4802111.31r3eYUQgx@archbox>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR06CA0157.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::14) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|VE1PR08MB5566:EE_
X-MS-Office365-Filtering-Correlation-Id: 15134e21-1769-40eb-125a-08daf7d58938
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9l1HHFomLVlxoYHYtw5iTRSlIXWXCEaFnZWSQz0A8XwQ7iQ3Bkfhw5moE1RGPx1xlZAFIN950lMP/VdZtkmwQBHrBuvU8brezdrQx6ZCdo65xAwpQzwk+lxqrNKBBx9Cze/VUw7MmIasuLOTLr7WtTSkScZEOsoYxdJr2lr1AL1qObFcBB53ZZZZG3pYpIPl87UpjeecBGHEQ52ziCIrEFJqiZCbjEfmkF4nyEhlRiziHrm+mhij9ceDJTiYCOWKIpMQjBOW1ATCZ1a/LhdepzjCj/FqrytAn7gA5QqHaWo2JCT6q6xbV2Dsw6/Gc1d6iHG7QLztV0JJRUBIklhRh/vd65YOmJHPYBu/SubJHS3yc9z8Yw8rHOfkSS2/gRaW2/8QU5FE+WSuuPzUYkuD6bc15yCcVGu0ZmBrDDIQABOmG9AQSotyXKeC9kK0bquIKZWhL2488B8/iKUDq4CC6S5PuSAQj1tpeiMQLrAToW8kdxO+gxmwI5NbcYBbBmkDky/aMJokhxdWmL9kaQ/Lb85OL2jJCLUo6rFTg+z3sFR2zF5oeKY7ZHUBAPK4A3SJQxQSbBnDUKwipTcV2i/3C7DXMcCjLzqagYXgeQ99fngc7NNy7qfP8G1jwBoP69I7ILww2InLep1Pgc0jsNz4F3M30Zmd8TKwLzT/+DBeyv95lbtC4GFWtNHOgMZt6W8ENOPn4PF8VIp/bFTSfhTBWmEA8u2mInTfXwdZ5lw/veHOOWxelwzar9gQ+80sRa3k3oiTXHm8o0lnAgVtv+tRJN9cp1m9ofXX2k1SUrpuXfQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(136003)(39840400004)(376002)(346002)(366004)(451199015)(86362001)(31696002)(66476007)(26005)(66556008)(66946007)(186003)(6512007)(8676002)(4326008)(6506007)(53546011)(316002)(52116002)(36916002)(966005)(6486002)(478600001)(8936002)(41300700001)(83380400001)(38350700002)(38100700002)(5660300002)(2906002)(44832011)(2616005)(31686004)(36756003)(54906003)(110136005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEZ0MGJ1cVdnMjQzbmk1aE9SVjNzdXVGQjljZEVua3NaeU4wSUhPblJlYjZ2?=
 =?utf-8?B?Vi9qNGhseTNscDZEKzl6MFNOUUl2UWI1Y3hSSHF5RjlPeUNkY2JaYm5jbVZ1?=
 =?utf-8?B?U0x3WTlBSGQ0OW50ZUFhOGljeVFldDRmTDQvdmROeEYycVRoNTlDRFpYTlh4?=
 =?utf-8?B?akwxOWIvYTNCRmNIT3Z2em9IamIwZjU5QVllS2RBY1RhN2xFMkN5em51dzUx?=
 =?utf-8?B?MVhxcjR5MG1MeERhT1NqVEdCVlprV0ZGL3dEa1A3VEpyY0NNbTBJam1SbnZZ?=
 =?utf-8?B?RmZLaUpwQ21RNVM4MGN0UEU2QSt6RWlLUUdVbkNCZVNmc1JTRDF1TTlqWGtl?=
 =?utf-8?B?RVBLUG8rekpuSHhKR0xVUHBNbTIvSGtZRlZDUTJCRkZ4ekNQamdmeXVHS0Vr?=
 =?utf-8?B?c2RwVVkzS2wrdzIzdjB6U3BDUDg0WG1UbmFBaElRMzBYYnNrQUt2OWtPTUhV?=
 =?utf-8?B?VEdZeWxtMmpZdElDa3VaazJNalJrWXBLYVZISzBqbEFJMGdRWDNnelVPWXVW?=
 =?utf-8?B?elZDN1A3VWxhczRLYjVUQ05majFNWHdXdlNrVVRRK2FiSlhYeERZeDFKM095?=
 =?utf-8?B?SkRIai9kM2NPZTNjMURqRUdFWDI4WmtqUnEzcWNnTGJvdmdWaUp1d2d1THFZ?=
 =?utf-8?B?Z0Q1eUZ1ZHJHQTBEWnNDZTRvQ0FFd0Y3MzRzbHQ3STd2ZTE4b0pjQnJielVH?=
 =?utf-8?B?bkR1ZXJCMXUrM3NWQVp2MnpXRXJZVFZRRForbUJpSC9KZzBFWTl2b0I5OUda?=
 =?utf-8?B?ZUZwTTNnTDhybjlrQVhQVzlQU1RLSTBhdDVLcDBBL1FkMGIxNlBFVTFQZGRM?=
 =?utf-8?B?dFdET0xWdVVLQm9OMHAvaGt1U2VjY1l5UnNsRjY4cjFLZnJkVWZhejh2L09q?=
 =?utf-8?B?V3N2ODhOejRONWZZbUtNMVIrajZMK0J4dENwZFVLV0ZZa1lYVHpMdTlrdkJl?=
 =?utf-8?B?MTVmRjFLWWFuV0FDQ0w0Ky9Yai9SaEZELzI1VmtwSmNMLzc5MUNvdzdLZjE1?=
 =?utf-8?B?N0ZRWnU5WHFOcUsrVWIwcUhwSDRCNTd5NjlZZkE5WE12Ym81SEhaWlFPbWsz?=
 =?utf-8?B?OW9hcWs3NitWY0FFUjZuR1lNTEtYZENtQjQwV1BiVDJmYXZFcHFhakRxbDk0?=
 =?utf-8?B?MmN0OHAzR2RWYjNXT0F0SzgvNHJSVExnT0VvT2JqUFl0ZTlIWHFlaEt1ekJy?=
 =?utf-8?B?MnJHMTRaVzhyenA0R3dEdFozdHJWYWxUdi9WWEhMQ3N4cnBleGdwUmpJWHIr?=
 =?utf-8?B?VitnUmhQSFBpTGFrQmNQNStjTkJiSCszdkk0RWxQS3pWWDRxZjFhemFDaVFq?=
 =?utf-8?B?Yi9oZEtkYm1lZlV6K0FSL3FmdHVEMWhlUXZiWTM3YkQxeGxBOXhuYzNnRFg1?=
 =?utf-8?B?enlIZldGbFpFcU5jNEVnMGEzTTNQL1pGOExUK1JIWTNaMVRvZGE2UThkbnFF?=
 =?utf-8?B?YzQxbXFzdjRlQ3E3ZVV5QU1BS3VjTUVsWFRUY3NsUmU2UjZ0QXIvWUJCWFFM?=
 =?utf-8?B?b2dJMUNmRGl5K2E2QnMzTjYvTUFTU2JFZCt3eWwzUHRFWVZPRkN2dmtLa0wz?=
 =?utf-8?B?R3ovaHRLWkw2Z2xQT0hSNWlBT3ZRTHljZ2hQeWhNMnQ3Q3BZN0FQN2xmYVoy?=
 =?utf-8?B?TEUybmtiT0x5TjFGV2JkYVNHZncxQ3ZucUM3Z1lhVWsxSXNsSjN5Tng2ZGpV?=
 =?utf-8?B?a0RtVFM3QWFPUXFoRm5qSGFlL0MyV0Nwbld4aEIyOCtrdmdsaUVYL2tSVXFp?=
 =?utf-8?B?TDArdHM1eTh4L2NLeWcycGVQN05mTStzSmVvM21DR2NiTVFCU0hDWGEyYjUw?=
 =?utf-8?B?R2ZkNmNrNW1sdGZ6YUF5dmNUL0g5dGtqQzZ3enl3dHN2b2E1OTA4bE0vbkJl?=
 =?utf-8?B?S2lqWURlaFJ4K0l1ek95Y2NBMW1GNCtYNkxwc0hTNFNQdG5yaXBsTFZxKzVH?=
 =?utf-8?B?STRmbDVtNFd1S1phbW9QZTFmMktkVjV2Mmt2cElObmRSb0grMTU3UWp0RmZy?=
 =?utf-8?B?RDZEdjE5R3JOaEVoRGZ5NEhqTmdWWHZOblQ0dGNCNkxlYTRGa2h6cUpzSExv?=
 =?utf-8?B?dXpXVlk0YkI4SlZ3VnhFc0dxYlp3aFpKd01GYS8zTlEvb3ZYZzhjRE5DQ0h0?=
 =?utf-8?B?RXdody9FRjZWcUpPVFhoYWRReG40SUlmVlozZVhhb3RQbnpVWWViQ29reUFL?=
 =?utf-8?B?V1E9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 15134e21-1769-40eb-125a-08daf7d58938
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2023 15:22:52.9531
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VAIHsyDT7hpu2RJII63lj61yiGbqDN+p213oZ2dqP/GEtS4lNvLOTQkAf74hROdn3EId2riGkvraSXQKWG9DKvvjVkpk0VRxRBhILkZgtNY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5566
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nicolas,

On 1/16/23 16:14, Nicolas Frattaroli wrote:
> On Monday, 16 January 2023 09:41:50 CET Michael Riesch wrote:
>> Hi Jonas,
>>
>> On 1/15/23 22:15, Jonas Karlman wrote:
>>> The following was observed on my Radxa ROCK 3 Model A board:
>>>   rockchip-pinctrl pinctrl: pin gpio1-9 already requested by
>>>   vcc-cam-regulator; cannot claim for fe410000.i2s ...
>>>   platform rk809-sound: deferred probe pending
>>>
>>> Fix this by supplying a board specific pinctrl with the i2s1 pins used
>>> by pmic codec according to the schematic [1].
>>>
>>> [1] https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf
>>>
>>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>>
>> Makes sense to me, but...
>>
>>> ---
>>>
>>>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts index
>>> 00d873a03cfe..a149c8b83f94 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> @@ -573,6 +573,8 @@ &i2s0_8ch {
>>>
>>>  };
>>>  
>>>  &i2s1_8ch {
>>>
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 
> &i2s1m0_sdo0>;
>>
>> ... shouldn't this include i2s1m0_mclk as well?
> 
> You can totally use i2s without an mclk, but I don't have a specific
> explanation as to why this is lacking in this particular pinctrl, as
> I cargo-culted it from downstream.
> 
>> For some reason this has been omitted in the pinctrl defined in
>> rk356x.dtsi. But then rk356x.dtsi also claims
>>  - both i2s1m0_sdo1 and i2s1m0_sdi3
>>  - both i2s1m0_sdo2 and i2s1m0_sdi2
>>  - both i2s1m0_sdo3 and i2s1m0_sdi1
>> which are mapped to the same respective pins. Therefore it seems that
>> there might be something wrong with this pinctrl altogether.
> 
> This is actually correct, I believe. The driver has a feature called
> "io multiplex" which fiddles with the GRF to dynamically set the pin
> directions depending on the hardware parameters. As it happens, for
> example sdo1 and sdi3 are on the same pin mux, and can be switched
> between like this.
> 
> I don't know how well that meshes with upstream's understanding of
> pinctrl but in this case the two functions really can use the same
> pin.

Ah, fancy stuff! Thanks for the clarification!

Best regards,
Michael

> 
>>
>> Cc: Nicolas Frattaroli, maybe he can provide some clarification.
>>
>> Best regards,
>> Michael
>>
>>>  	rockchip,trcm-sync-tx-only;
>>>  	status = "okay";
>>>  
>>>  };
> 
> Cheers,
> Nicolas Frattaroli
> 
> 
> 
> 
