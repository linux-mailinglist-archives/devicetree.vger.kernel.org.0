Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F10C166C3D5
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 16:29:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbjAPP3W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 10:29:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231772AbjAPP2h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 10:28:37 -0500
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2088.outbound.protection.outlook.com [40.107.15.88])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BCEF233D1
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 07:23:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SMHo4xxZWJKBWK0iQRjPSAUh2HW9p1MKXdqHHE2wro48asheLkiGj9gOgh9VhlPLx3HL0Ldz78YIQjTAAF7GThu1uSg1djVVuY+X9HdaSHafQr3/r0vjGjRnLBGRDSsbS5WfBCw7imLepQC2gd4iOuQmAlmI360abWto1S0ogkdUEHnhQrAKRYN4FPYaE40veUIZNYt4FS51HGaFN0qnEQ5WR6nOm+qrYfjXK/fLZwKnkFT4wGZT9m+yDqJO7lUWlZU9SSPBA+e0jHuhEHAw27h8bNzflSX/ENsCe1Ks/NB3HTC8pRAuCRhJH0okcq9MZN1v9bdnCmlUFtTN232ejw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zJQi3U9+AK3IrpzevlE/QsEkkYWxjNSkWOHbQGvGPoU=;
 b=gewnJm8n74iLoH+P2eAoxskyGWcG8Mw+PzTeRymZOy0YLALbYE33lUUyYO7ShbtiQlqAaBoevXg8G6JrVIdwZOuLQPYZn9LSrEGOIdPQZfGQeQcOM41L3bhOpEsq5DjkGa0fd5NEKSHfuj0THIE8NjA/47kiILG9l1oEslW000NfZkEz3whQ0LeS8EDae3ewLJB20eT+9ONpIX+rOPmv2PMPppfELNdETwyPqeMEjtrUVrcjhwrv7anY94jSk/0JNsg5514/Hlxft9SJQ5IuOWbWy4UmH2saL8fFFFZlOH8omWPIzEukmc39krDMlxbra6OX+KvNpX3aO90GAzPg3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJQi3U9+AK3IrpzevlE/QsEkkYWxjNSkWOHbQGvGPoU=;
 b=BqjYyc/BpAQSIj8vl35AXzuuLz6GCg/q/6iHwUDD633Y14QjCtFQIXZ2VhjemHV449eW3pYvl3d1rhmHlsGS6xG5NFdtQ+vnm7yIt1cP45xaGise61GPX9h+wc+2nP5NeXAgH2WomyPO78l2Sc7SGiKE6rRKACuHTPg77lADlJg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV1PR08MB8500.eurprd08.prod.outlook.com (2603:10a6:150:84::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.19; Mon, 16 Jan
 2023 15:23:52 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219%2]) with mapi id 15.20.5986.022; Mon, 16 Jan 2023
 15:23:52 +0000
Message-ID: <f180eb32-7dfa-b98c-62e3-50f4e8a65733@wolfvision.net>
Date:   Mon, 16 Jan 2023 16:23:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arm64: dts: rockchip: fix probe of analog sound card on
 rock-3a
Content-Language: en-US
To:     Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        frattaroli.nicolas@gmail.com
References: <20230115211553.445007-1-jonas@kwiboo.se>
 <7caeb07b-8465-6bdd-d90d-06a905b56f37@wolfvision.net>
 <DB9P190MB1594D084408339B34C69B060ACC19@DB9P190MB1594.EURP190.PROD.OUTLOOK.COM>
From:   Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <DB9P190MB1594D084408339B34C69B060ACC19@DB9P190MB1594.EURP190.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR06CA0164.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::21) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV1PR08MB8500:EE_
X-MS-Office365-Filtering-Correlation-Id: 66f98e33-ae01-4a4d-062f-08daf7d5ac69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hEX/F5zyIP5V5y7X7IhsRX2+GzB9q3NtVgAV/hcu8RMdQftwMatwu6KGGdsKDzr79hLZGe89a1jRi95Xsm1AR37fjGVsgBUSx4jxw5jIn8ZgnEYLanaYqtdYnEyHGxB6mM8QyTI+FOALCgQp5dq6hgyXYehMb6n8/a4RPNx1tLVIkD0j8Fr6hWnyhcKK78xV5/z5RJDgaY1jOLtSYHAnydvbAd6UV5QjMlvxXI1vc4YeAaELjmWDkruS+LmvBCpiUzRb8jV3+2S7f2RSkXkc1juan4/r8+mZF9Tc2UsCh0aEkgPOKa3Bli8QPpzgvnVzIZtYrz1D1vIz0NZJtctPmevIGitZVijrQQbWE8Xp0f2yQX5VvBlBHvGQx7H4UBAVhSPOZw55xlv1nK962YAr5Iu3OnwHm42m0v+WIZjUbvbBaG+7pge1wVrqtpnQttysKh1IxNEhWuNQZjmtugKSWMi8y1rZNm2SQ6rMDOs/i6FgIedTI1dXsoGHEw7i/OaG2OVElXL2LcDXRwgj77qHAfcAtpuxrWmp4eVqOUKmsAfbWvKnqOlUVgFdiVIaj2j8tL13iQ9EV8BFETzgBn+tU3Kc4B4oeLg0xHB5NmXuxIEIWDa/JfIZ1sks3ruNSTEr5Qdl26Hk9c002a4UXDrGVuxGRtiC4U2iw1vaoq/CNu3KIHj0WaDtKs42Qyt1vhczX21R4uz/gLLC9DCWLjHQ+ceVE+iWOCwGvNNbLgYiyyTpLVtEgmnewRMnUSH9P0Xe0zH8HhWzPqF2IxEvBmgyLJnQ6JJKuRKF1jqvHS98CHQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(136003)(376002)(366004)(396003)(346002)(451199015)(2906002)(44832011)(41300700001)(5660300002)(31686004)(66946007)(4326008)(66556008)(66476007)(8676002)(26005)(316002)(83380400001)(36916002)(38100700002)(45080400002)(52116002)(31696002)(36756003)(38350700002)(53546011)(966005)(86362001)(6486002)(186003)(478600001)(8936002)(6512007)(6506007)(110136005)(54906003)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MERkcjdRTlZKYW93QzFzNkt4L2VhZTBuOFpGWkpSWGMvemdiNXNBMEt5Q1ds?=
 =?utf-8?B?U3NPcGpvRUF3ZDFnVTA0c3ErenZnVFI0ZjF6Q0Zzc0lpNUxIY2drZGliL0xG?=
 =?utf-8?B?STNvNmYwY0Z4VmdtYWZPVC9FWFBMRS90aDd0YTVtSmMxNUpUVktYMmQ1WUxl?=
 =?utf-8?B?TlhzMDNyNHNyb1k1aFRjb052M3RtcjBEZWtQVzl1bXBneFlmSEJId0RCWVky?=
 =?utf-8?B?YitMSlptNENkQ3hRVFQ1anltOGovVzJLQjU1QVV0U3UyVTBIK1pGd2c3MDMv?=
 =?utf-8?B?cG9TRTQ0ZnlDWlNnZjFlejhOYXRDZm9McjY5TVU3MVRyTS9iZWNOdzEwd0dG?=
 =?utf-8?B?NXNrTFpTbWxtRm8zV3JwWWxJa2dlVVMyUTdlNzVRdzVOKzFnamZmUFdEcUFE?=
 =?utf-8?B?L3MxeHBQN2w3SjRuYXVjdDZmWDFXMDB0bFJOc0w5bXY0dFhxUFY3bFVaQWw5?=
 =?utf-8?B?VGtRem1MZDJZR0xpOXhWQ0ErSTd1ZUV6MlRQKzVuVnppRWpncUg3L1diZVhD?=
 =?utf-8?B?N0VmRmdsZjg5c3hSeWQwNnlvc3h5MHY2dEp3THplYjRRNmpzSlVCVHQxbU1s?=
 =?utf-8?B?R3N4M1AzdjdFUHRrZk5PTXZ5U2NuREp5UU5teTV6WldNMXMyUmt4ZFBDT3Z6?=
 =?utf-8?B?NG8vZlJ4QXBIUjhkVzlCMWhQOHlYanJzaWs3NzQ2cWNkb1p3U3hHWVR0RWZ4?=
 =?utf-8?B?R3dWbGxMSlFFZjdoSDNhdFl1Z1ljUThldExVUFZYZUpsYlZqNjd6K1ZQczkz?=
 =?utf-8?B?SmdMUmNNSU1EaCtZTjUwUlc3Z2ZLVG1TZkJxRGVaaTVwOHNGbmFheklodUds?=
 =?utf-8?B?N2lIVDFSUUs5emdtamYzK3J4dlVNaTFiZmdxYkVzWndZT2RwSFZ4OFlnUS9R?=
 =?utf-8?B?ZmF4UDFkWDlFck5sRXdOdktFOUtWM3ZleXhQelg1SVY2NkFqb2ptYVJpQk9a?=
 =?utf-8?B?R2RxcHVCV0RhcmYzV3Y5aDFPL1FhclJpdGpaa2V6ZFg0d0djVjgzT255QVhL?=
 =?utf-8?B?SW1rN2p4bXBycDdSVVBaYVFsWXhQTkgwTlUwKzM1cWFENW9ONlYrUTU2T0oy?=
 =?utf-8?B?MHNtOG9aaTg1aGkzQVJyVHIyOUlOMHRISU84Mm93dWhRU2xOcXN1QlFCQ2lJ?=
 =?utf-8?B?S2Z6M2k4WWZGd1R0eDRJQ2d2V25yVE9zZ0JLWFRwTEM3NzZDVGQrelh6aWhF?=
 =?utf-8?B?ZFlxM0dPWHZZS1dIR3RIY0ZSMzdiYmRSTnVHcEU1bzVCcFVtdEUwZjl0cDdm?=
 =?utf-8?B?ZEFsQnZYMHdMUnlEdWhHdnZZN3FTY2tabWhZbnlONUF6VmRBTE0zd2pjNnZH?=
 =?utf-8?B?Z3BidEdDamRodXZOdDNNMkM5MmZSd0FvOGVOaGlCOURGaHNneHpxRFJnYnhz?=
 =?utf-8?B?NXRPRFpFTTVuKzJsTmJjQWNMMUsrRlp1V2tuL0lsMEpTTEJ4RGZuc1BaZVVS?=
 =?utf-8?B?RUhCeFdVY1lkRDNIMWVjbmlYMVVZTmU0YjMyYlh0UElucUlJZnFYVVRkaGxW?=
 =?utf-8?B?RE1NM0R1SU5zNloyV2hKNS9TSVp3dXplVnRZMU9kQ2hZNFBwNm5YckVhaGVD?=
 =?utf-8?B?Ri9qbUh0R3pXY1FZVkswQWZpRWJmT1l0bnZISWpkQ0lmZWNKVlVYa2NwVjNt?=
 =?utf-8?B?Z05zb0VPOU8yK0lsQU5aUU52M3hoMFZoTFlQQ20vQkY0MmNISjBDVmVCa1dV?=
 =?utf-8?B?dElJY0MvNHpHQmhhSlJUWFhTb3ROTWhvb0VmMXo4QkxGSmhFL0Q2SkhmTzZF?=
 =?utf-8?B?bmV2SXE0V3BHZWowSTg5WGJsMlNreXErQXc0MFFWc2ZpMzF3cXRtYUs0eWdy?=
 =?utf-8?B?WkhqMkhiUm5Ud01EZzFzZVlDcEU0WU5vWkIvdHBYUkt3azNpeVF6R0ZsT0ZV?=
 =?utf-8?B?V09GZHcvTVUvSHhFZ2p4emY3SVV0YWxPOVJqNlNoUXZhelNUWWJoN3dXcWZY?=
 =?utf-8?B?KzY0TXgvRDdBRDBJdzNmRkxDTngrZGxJODZkTmhLNExrdk41bGJsVjRpR09m?=
 =?utf-8?B?TjFRNVpDUjdyZE43MDc4WXV0aUxPUmthakdmTU1aL05neHlKa0VPWkp0UGNm?=
 =?utf-8?B?emVGV3NuUHJISVRRNDVSK3p0dExhKzJ4OEdEd2FnSzJTVGZDYVRwTFFZejVK?=
 =?utf-8?B?S3JONkRpUDFZb3Z5MlpsL3Fqci95TXlaa3NNZmZlTlFjelJDc3pZbXNEOWg4?=
 =?utf-8?B?cHc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 66f98e33-ae01-4a4d-062f-08daf7d5ac69
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2023 15:23:52.0254
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: trgr1N9SyNwVuriSoUZXxwTJQwQAqpZ/rmKMC0Hzqzw/gJfOcnHCuxGbZ7Pmzv58ujqNh4VeTu6PkJ63gRaIVYm/DsUpF6p/0E/iNawkJH4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8500
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jonas,

On 1/16/23 10:29, Jonas Karlman wrote:
> Hi Michael,
> 
> On 2023-01-16 09:41, Michael Riesch wrote:
>> Hi Jonas,
>>
>> On 1/15/23 22:15, Jonas Karlman wrote:
>>> The following was observed on my Radxa ROCK 3 Model A board:
>>>
>>>    rockchip-pinctrl pinctrl: pin gpio1-9 already requested by
>>> vcc-cam-regulator; cannot claim for fe410000.i2s
>>>    ...
>>>    platform rk809-sound: deferred probe pending
>>>
>>> Fix this by supplying a board specific pinctrl with the i2s1 pins used
>>> by pmic codec according to the schematic [1].
>>>
>>> [1]
>>> https://emea01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdl.radxa.com%2Frock3%2Fdocs%2Fhw%2F3a%2FROCK-3A-V1.3-SCH.pdf&data=05%7C01%7C%7Cb09a8096d417409ca0c108daf79d85f2%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C638094553170941885%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=upix1Lqcu1y5vYkPtcB5Ao5TA04brBcecCS0LX2ipe4%3D&reserved=0
>>>
>>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>>
>> Makes sense to me, but...
>>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> index 00d873a03cfe..a149c8b83f94 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> @@ -573,6 +573,8 @@ &i2s0_8ch {
>>>   };
>>>     &i2s1_8ch {
>>> +    pinctrl-names = "default";
>>> +    pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0
>>> &i2s1m0_sdo0>;
>>
>> ... shouldn't this include i2s1m0_mclk as well?
> 
> i2s1m0_mclk is already included in the pmic/rk809 pinctrl, so it was
> omitted from the i2s1_8ch pinctrl.

ah ok! In this case:

Acked-by: Michael Riesch <michael.riesch@wolfvision.net>

Best regards,
Michael

> 
> Best regards,
> Jonas
> 
>>
>> For some reason this has been omitted in the pinctrl defined in
>> rk356x.dtsi. But then rk356x.dtsi also claims
>>   - both i2s1m0_sdo1 and i2s1m0_sdi3
>>   - both i2s1m0_sdo2 and i2s1m0_sdi2
>>   - both i2s1m0_sdo3 and i2s1m0_sdi1
>> which are mapped to the same respective pins. Therefore it seems that
>> there might be something wrong with this pinctrl altogether.
>>
>> Cc: Nicolas Frattaroli, maybe he can provide some clarification.
>>
>> Best regards,
>> Michael
>>
>>>       rockchip,trcm-sync-tx-only;
>>>       status = "okay";
>>>   };
> 
