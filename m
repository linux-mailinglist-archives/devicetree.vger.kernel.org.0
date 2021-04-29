Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C7F036EC7D
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 16:38:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233073AbhD2OjB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 10:39:01 -0400
Received: from mail-db8eur05on2131.outbound.protection.outlook.com ([40.107.20.131]:28989
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232989AbhD2OjA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 29 Apr 2021 10:39:00 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=joJqf2XS+9KhPsSxfc+lz/lN8SnNCYKl6zCG+wwWJnvIYjTbBN3cF+Rr4N+tXfuEzVMb2fKKyg2woe7jpodm2mYy4pPSQ6GeDwN9ULi+H4jx9QFun8Lj6FWxa5UGPMNdygECOnDna1CeS0iCnFDOlFFY0ubchyT6Eh24U+cMom+u3I4mF5FbYgHwl09vwrL+XsXxoaMOb82giYsCMOzGPPTZbc1Oj5Ln7dt58j6v2+tle/u1CfmsfYqxQ9NWk1kJPJzyuZnxWEqpFZk9hkCWplW/xhaU/9MLrhpa5DYHfAG9kDr/lGqdUd6Nfiqtb64MxkXFFNOR7sfQ1sYriXU3Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KwmxvitrUxUbbdv6dD5elcpnmQL/paIt7giNCw0t3dA=;
 b=EZYANpqBpIb2mQDgb4AOOx4dunJyX1nresAhRujuDVgsGmzNn5VhmDIrwbjIqeBMK2b95qjLLxMI7Fhcfhc43hSsn//+jLJP1VGb6VuC4sIKx5G21RXQUUryeNxZt3EyIOvWtSwUnrZa2WO8h53KK9TWM5Hiqo7FPNeqVMOSjOYEvMpRywPnEurLcufZMkodgpGpTKK91ZmdHVerpcSscTj3VdpY4TRcoiodjtg2nDb2fiA6gaBzD1XULzwrQqSZ3gP2Amgw/7VWdj45GA0XVLZRtCYPHycoh/oWGN/RLYIcfBDpIpeSciX9QowZF5Yex3i8PtTx6jA/qS41zY5Meg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KwmxvitrUxUbbdv6dD5elcpnmQL/paIt7giNCw0t3dA=;
 b=Kc3jC4BAKkrpPChFc4uhz4vJ9pWxQvSQnMvbMFmAHp/itw+lQnVagBKa6+os/CQ51EzjHhYHHigA5bd07PxzMgnkBGTeeOvoiSqyq31JMMHgY8y2Cve4S835t0vuM+IgtAv6fAm0/OIbZjRmjCtqDgrm8erQbCIQP0l11zeVFvg=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM8PR10MB4084.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1e3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21; Thu, 29 Apr
 2021 14:38:12 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::3d8a:f56b:3a0c:8a87]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::3d8a:f56b:3a0c:8a87%7]) with mapi id 15.20.4065.027; Thu, 29 Apr 2021
 14:38:12 +0000
Subject: Re: [PATCH v2 08/13] dt-bindings: imx: gpcv2: add support for
 optional resets
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
To:     Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh@kernel.org>
Cc:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>,
        Adam Ford <aford173@gmail.com>, patchwork-lst@pengutronix.de,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20201105174434.1817539-1-l.stach@pengutronix.de>
 <20201105174434.1817539-9-l.stach@pengutronix.de>
 <20201109201557.GA1690230@bogus>
 <5b6c97dc74ccb38107a50972427d091cdb114209.camel@pengutronix.de>
 <f652344c2c1664d541300dc71cc9ccd8aeaee292.camel@pengutronix.de>
 <928adc851c756f27562b0ae1847f08e2c857504d.camel@pengutronix.de>
 <f9400040-0884-81a4-ae76-5cd1db8c195d@kontron.de>
Message-ID: <ba235ca5-299e-7900-359b-d08b56b73176@kontron.de>
Date:   Thu, 29 Apr 2021 16:38:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <f9400040-0884-81a4-ae76-5cd1db8c195d@kontron.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Originating-IP: [109.250.137.217]
X-ClientProxiedBy: BEXP281CA0011.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10::21)
 To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.27] (109.250.137.217) by BEXP281CA0011.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.10 via Frontend Transport; Thu, 29 Apr 2021 14:38:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 65eb3b64-0033-4647-0c1b-08d90b1c6a4d
X-MS-TrafficTypeDiagnostic: AM8PR10MB4084:
X-Microsoft-Antispam-PRVS: <AM8PR10MB4084CF5C438EED2B6794C965E95F9@AM8PR10MB4084.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9s/gq8iS9NUizqf1nT0w+BOSIHbVYUhpEk1j/QruLOLfvKji9kxVufSol7NuKyTuCNK2eyOfbfL6Jj0B6pxrR1+KHIWxZA/FGVF2I2OJqr+013eApL1KZimktjQ0FUNhAW6hMA+6BgccuSJ1qIdZ7kz1qQA5DPUjavwHxoxw0YCSgUcx1qGoCWjdvwNJGRqCk+dKEkqW+FRMrwMaaeGuS1HrAfV8bK58qP8hojMYWYy0qZ5GHFjzTnZnCKGGrTxnUoIJl7sebqLUNvKAjxBkkomQSNZPPU0mwn1o7W31GFnlVFT/XXdkOlpMh4kg6Mqc3fu4CMWRixmniJolDR/wjaKXunM4iKn4W+Y8FKdBHHLccUOmCX8djETyIfaZSOiPd/Fe70xrKgftkMvAFXYx1ylLUVgF1y/gLD1AtWAR06VuMVflD6GE/1R3h27jQiZJqVrs0RxU1z9gsWZihJ8vaK97x5+Q0EAPuIXdKctJSL5NvJ9tFcJSHo9fWeU3xb9+XZFF+2hBGHc3qFGG8ilO1RHZEyOH8dtj8L/nlZCzsaCO/GQkNr2iTBhp9LAtMChWcLeePjMVpX8Hk6nyWDzO9ZuIHY65u2guqbHvAh+Qggt0WPqTXXoTgusIoaR/mORLyh2AEegAysGVUImSYRGH8RliyWddMVg2rQpmsb7RVslBR6P5wCBgLBJdnFXR7YjC
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(396003)(366004)(376002)(39860400002)(6666004)(44832011)(2616005)(5660300002)(956004)(2906002)(110136005)(8936002)(83380400001)(8676002)(86362001)(53546011)(31696002)(31686004)(66476007)(16526019)(26005)(36756003)(186003)(6486002)(66556008)(54906003)(38100700002)(7416002)(316002)(66946007)(478600001)(4326008)(16576012)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?UXBxU2JsVTRJbTdGdHFLUWl1SjhidURsN2lLVm9EQzlqZis0VmZINFdzOGxB?=
 =?utf-8?B?M01vRjl0SExWeHlISUNpMnJNci8zUEExdVArQTk2U0NjdUhhNVFiVWZqVERQ?=
 =?utf-8?B?VFZKY0lJbFIyV0NPSzc5Mjd0V2Mrck9GM2dkMHZTNTJjMk9VdVg2c3dCL04r?=
 =?utf-8?B?enpyb3lkdHgrb3R3L1BiNXphVHJMNWJZY2JhTjNGcm43NTF0dUJtWjBTVUJy?=
 =?utf-8?B?QXk1aTVpY29Ya0ZxWW15QmN6ZU1JOSs1WFVnVWZiZnYyWXBlSlQ5RmFLbkVD?=
 =?utf-8?B?TGdNL1hIbEZ4UklHR0lHb2dnL1Rva3NrSVpqbkpNcVZ3NlZSdkVrdzlqR1VW?=
 =?utf-8?B?QUZzRk5QSjlKTnkzWHpEZ2lGR21HMmVQNHk1Q1pVTnowTFRsZGlqNVdLL0FO?=
 =?utf-8?B?SkRSdEpNbk55Qk9ZSkNudUE4RVUxUS8yZW5VbzJGVnZqM3dKTFNiV2I5MmZB?=
 =?utf-8?B?Y05qRTVKcEpOMHdQSklyYXFmZ1krRTVBR1pBRGlLaE5pMmZFOG16aUxlc3FX?=
 =?utf-8?B?OGp1aGtHTUV1emk3dGgvTVVvUFJGQU9RYU9RUFlwbVpsQVRqYXc5SGRJS2VY?=
 =?utf-8?B?ZDN5bXVxVjJaOWcvWEJpUWMvbWl6QTZGMjVZSnVCQUxIM1A5RXZMTVdSYXhC?=
 =?utf-8?B?ekNDV0VMU09rVllML1I0WFlJZjNnQlRLYzljZmdDSlNPdWVUZDF3WFgvdHZq?=
 =?utf-8?B?V2dqR0NqYTA1bUxvdTV2N3VQck5iU2tEQjFYaUpGWTZSTG9jSmt6bEM4S0lY?=
 =?utf-8?B?VWl6akdrVzJRTGJsT21xOFRWQVFEK2JoRERiSVBibzBKOHpNYWtnZjEybFdl?=
 =?utf-8?B?emdvQkx5YVBFN3pxQjNxVUVzL0RSeEZ3K05hSUJNT1pFM3h2ZUh2ZlRMbmxv?=
 =?utf-8?B?bFdYQnFJbjRCU2V3QjVrNnNmVFBucWlobE1uZXVleWVPRFZNMERzdWFzRzZR?=
 =?utf-8?B?ZzdzeDdUd21nRFczZzBUYndQbWV2MjAxOXNJUVNnME9GNjNodEhqcDVXc3R5?=
 =?utf-8?B?WnovbFRaS0ZCaVdhaWgxS2p2QWk5amFUcFR0YXZwV243T1Bua29yZXZXRGlq?=
 =?utf-8?B?K0xPeXRGUUhWa01wNHVEZUhSSVdQVkpmaGhPL1k4b2t6WHJBTXpoY0VFU0RE?=
 =?utf-8?B?dUlSZjUyYnRFcHRwQ0F0V1RORG94M2ltTm5FcmlGYVVxTGJXL010eFZxOXFB?=
 =?utf-8?B?Mlp6YnU2Rm9FVjNNVmZpaDl4b0xDeTNNVVRYWWxWcUY1TDRlTzFwaFUwdzRW?=
 =?utf-8?B?NStRSndhbmtiamg5b0EvejI4VVZBbWh5N1lsenl5RWRNUGU1NTZjWWthUjlh?=
 =?utf-8?B?MitXVW9pdDh2UlA2ZEpTeklBeW05K0NlYTN3aTI3WjloSFdGVmY4czRZMkRT?=
 =?utf-8?B?VGpWdDR4OTZhT3FOOW5BalE5TWFOVTZGd2pLQ2RGdFFMUnh6K1R2QlhselUw?=
 =?utf-8?B?aGdxanZtQm5aL0VRUkNhWUFSZjgrVTFrWm9YWHY1YStqeDR0ZUhveFphYzJ3?=
 =?utf-8?B?emZEcldoR2gxWVFBeG1qUXp6ZWJVbUY2VlYrdGVLT1hab0NwN05OQ0dITkp2?=
 =?utf-8?B?M3o0UGM5Y2dFZ2d4TlhPSHFJL2FkT296cEY5b0RtWG5pNWowSkszZG9lZ0g5?=
 =?utf-8?B?UTZ1MnZ1SHM3amdFWEEwQ2Zyc3drQTVad21VUVlzeVNUNTZYVW9CbnVXbHZw?=
 =?utf-8?B?bmZsZnQ1Q0ZjUWdzNkk3eGN0TjF0TXFnTHBoZ2t3Zm01ZXhkc0JVdElzS2RT?=
 =?utf-8?Q?w6K/0KHgw4DE/Q4tvW89f8Zd8m2XgKwKd4Y/dPP?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 65eb3b64-0033-4647-0c1b-08d90b1c6a4d
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2021 14:38:12.1149
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UZ7Mf+YDsuuYrP1ZxH6jo85uCjECs5WU/LPnF9uxrKTz4+BdWsMLblakA0Qnkkh4MZdvinbLcxhw1ZjPvMsac3iLyA8FIdg+4dpYPDaDQ7s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR10MB4084
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26.04.21 11:24, Frieder Schrempf wrote:
> Hi Rob,
> 
> On 10.02.21 15:35, Lucas Stach wrote:
>> Am Montag, dem 30.11.2020 um 10:57 +0100 schrieb Lucas Stach:
>>> Hi Rob,
>>>
>>> Am Dienstag, den 17.11.2020, 15:11 +0100 schrieb Lucas Stach:
>>> Am Montag, den 09.11.2020, 14:15 -0600 schrieb Rob Herring:
>>>> On Thu, Nov 05, 2020 at 06:44:29PM +0100, Lucas Stach wrote:
>>>>> For some domains the resets of the devices in the domain are not
>>>>> automatically triggered. Add an optional resets property to allow
>>>>> the GPC driver to trigger those resets explicitly.
>>>>>
>>>>> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
>>>>> ---
>>>>>   Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml | 7
>>>>> +++++++
>>>>>   1 file changed, 7 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/power/fsl,imx-
>>>>> gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-
>>>>> gpcv2.yaml
>>>>> index a96e6dbf1858..4330c73a2c30 100644
>>>>> --- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
>>>>> +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
>>>>> @@ -66,6 +66,13 @@ properties:
>>>>>             power-supply: true
>>>>> +          resets:
>>>>> +            description: |
>>>>> +              A number of phandles to resets that need to be
>>>>> asserted during
>>>>> +              power-up sequencing of the domain.
>>>>> +            minItems: 1
>>>>> +            maxItems: 4
>>>>
>>>> You need to define what each reset is.
>>>
>>> I can't. The resets belong to devices located inside the power domain,
>>> which need to be held in reset across the power-up sequence. So I
>>> have no means to specify what each reset is in a generic power-domain
>>> binding. Same situation as with the clocks in this binding actually.
>>>
>>> Do you have any guidance on what do here? Is this binding okay with
>>> this explanation, or do we need to do something different here?
>>
>> Any pointers on how we can make some progress with this? It's blocking
>> quite a bit of functionality of the i.MX8MM SoC being enabled upstream.
> 
> One more ping from my side. Can you give us some feedback about whether 
> we can proceed with the bindings proposed by Lucas or not?
> 
> This has been on hold now for over 5 months and it looks like one of the 
> reasons is that we don't know if the bindings will be accepted.

It looks like Rob is fine with the bindings if there is an explanation 
in the bindings for why the resets are not defined.

Quote from Rob on IRC: "Just explain why the resets are unknown and 
variable in the binding".


