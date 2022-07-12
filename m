Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9739571EAA
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 17:15:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232400AbiGLPPj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 11:15:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233376AbiGLPP1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 11:15:27 -0400
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2083.outbound.protection.outlook.com [40.107.20.83])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1591425DB
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 08:08:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BzH92mBk4nZB3JYxkKMZjTnTW3QCbtkV9jHJDUFyrY3iyiYCvuzTSkXkZ8xI2sCcyvaK1TyAJ59bSQ7nc7FtAYe0nIab51ER8opPQPGb9Hd5rMl4oTq0aBBoa9WbOp8GdsVE+cli78SGtUVVmabUfca/bZeuzU6pcs19oamRWi9pw4R/Wfd5cQJ1QyeNOpjlo1Xj9M64zsUUb5AyXGtHzZk2nr5s0t287/Ots8USbwIxTBuyxT+FeZbvbZdpokOiWmurxlgreOs01STaXYltnO9U6TwAr8U9vvO9QhbuWIncnpMC3HNqKmVZ1JKwNR+1rjpAZ7I3Zci2a6nv890zcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VZCMNOfXEigs51ESXxAxGYA+pDgFR5aBcGXh3kcL20o=;
 b=YGOOHrNxaxJWxi12nqMbmnZOC3eTQb/afM9Zd6HPaxVEHt3/OeSp0ytTRSaOYnGdKglO7FIsp/MvqrX55SNI9YSARct43XAdfpmbedjdH2E4EhlUcJxVBgyTUWLMTvzn1og+b13zHD7xU6E/UcZFCPfhv1Mxt4++Vp8S6aiwXMuWB/UZhimlQvdshcQIlNABU8EWK3eW/n+0L0XgQI2eukTeayWPtajeo7uz0OQM3JyTItFQLUU6UG5+dBJXXEohnixVedaCT5802hDwT7Ty7ZUiLPlRAkfRM3jDOVKl30iOyUHb6wGM59agbDLwh7I/HqDVeK8Mpw4XO/33Fb5XbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VZCMNOfXEigs51ESXxAxGYA+pDgFR5aBcGXh3kcL20o=;
 b=cf/KDFzxndBrNLkUqckMGbdtIdqygRAJkM9y7OQwd8Rt7GcUFXLbY5MD3JqC0DLvC1H8Hrz/no2S9FOvLDb3Ew/dBGuA0n1cTFlnxpxEGzZ9bL5tNh5NObCdhMWnDikCyilmlL4oNlG2kBj7xUNJ1wrljzGWTrUxWqlk6wpe/pw/2CDV/8oLz7A2VzJRE9libNq/F8SuX8mK2aezokt3hW/wBgpmcT0RZ8cz/1znSewsJu8TVLh9IweoNS3YY7xSLOuEQxRqMz3PCNxY29x9C6tNblEYQXAYVox3glpPO+29kvTBOJfVdy9eXIUq+5T/2VdssYKqWpOi4NgPclpf1Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com (2603:10a6:10:7d::22)
 by AM9PR03MB6961.eurprd03.prod.outlook.com (2603:10a6:20b:280::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.26; Tue, 12 Jul
 2022 15:08:32 +0000
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1]) by DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1%6]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 15:08:32 +0000
Subject: Re: dt-schema non-array items property
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <f86cbb55-a548-537a-4108-46f10718c284@seco.com>
 <c853512b-859a-11ae-b933-c85fec7f9e36@linaro.org>
 <c7edff7f-f89e-3387-62ac-a915b4915580@seco.com>
 <9ba06c97-ee89-5597-6f66-2d31df60aab3@linaro.org>
From:   Sean Anderson <sean.anderson@seco.com>
Message-ID: <9b00ffd4-c9de-aff9-02d2-4a1e40805192@seco.com>
Date:   Tue, 12 Jul 2022 11:08:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <9ba06c97-ee89-5597-6f66-2d31df60aab3@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR16CA0015.namprd16.prod.outlook.com
 (2603:10b6:610:50::25) To DB7PR03MB4972.eurprd03.prod.outlook.com
 (2603:10a6:10:7d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1f195dbf-a19c-48c6-59ab-08da641862a4
X-MS-TrafficTypeDiagnostic: AM9PR03MB6961:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yg7xHqFzMAttzKpAPmJXAIvjbdj0hNpG2TTwbs9EJZcyB4OLLniOEe072/NtXxCGhCYLhxEiDnRlekeP1PYE148GDIl9idJ42vnfkxVbN+j9Okt7v8wU/rf32xybLLtF26+M2bLNDpWodC1apqVz1y4/buff4/WK4A1ZPDCnTfjvfjIv6dpcZL4SKZV3GAuARbwASM41eDFM0nK+uqJKpHZtjDrgKlVIvWlx4SZw/LPQA4dTtmapJgN6pA9/I9GuwblbraU9PalxeImgHnWhXkNc2RWDJ1gHG3viUpRvr9BAGL0ocCmwgEDSxDVGjMrqki8p9gaQHEuBHAEKYG8nObRXQdT2Dc8p6AyZ4Qkjr5qXIk0vBKevM60khwjj2bnJplxCQIOtI1sxhW2MauB1DjalXMSCQFamnUoo0upbcFOP7SXwGHCjftTyt1+oA0Oae3+4yaMHQm1AjoK/B+rN2WUXnKtY7Nz1fFPtDNtU6bpyUv1yPBvxmicGrSd2wL5gNTTJJL/qJZ2W/qa4NZ/SKzjDexqjPivhRwKuTjBbJ80OPX7s2T43nWTJL/V/ur3TMzkgkGHMVIv9Cx1FmSehPwhq7NLS9FZpQCIHAvHlGxXtcjhHSoFAOU2P6xXeGEfq0YOnKaT6vhNvAn8bYqpm18NkNjZ5LnoHpbY5jwMyWVwvX/qxKvRg+08McBcs+x91uRLgUUfPMMXw3hxu5co0FCuxaERhwUopujAi/mOxIeZcZNdGxw9TnEJSVzzCq8sZwrp1fSjtis91FR1R3qpBL7BFLefvb5pl8RwZz9Zwu9x4ZTMtI2c5Lv1GObAxRtb6d8NpJLqurbuTSbueKOUZVgZlMRDQNfo6+Jhj2m1gpT9BQDtoCCP7M133+Wi7YUwG
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR03MB4972.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(346002)(39850400004)(366004)(136003)(376002)(396003)(186003)(2616005)(53546011)(26005)(52116002)(6512007)(3480700007)(6506007)(2906002)(38350700002)(86362001)(31696002)(110136005)(8676002)(66476007)(6666004)(41300700001)(5660300002)(38100700002)(6486002)(316002)(66556008)(44832011)(31686004)(4744005)(478600001)(36756003)(83380400001)(66946007)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Znc1cWNtbWpyUUxVNmpLRUtWRk8vdzE2YjNTRlp1dlVMNWRhdmljYko0ZWsv?=
 =?utf-8?B?SU9yRmJTdUloSkFYUzBlQWtJdXA0ck9jMkxKUzVKVVFtWVMrcURIT3FpMmlG?=
 =?utf-8?B?cWFhemw4Z1dzK3VaOGpscEZRN3RjZEdDcjFjNFFOUlhJdVZ4YzZ1aTUxUHRx?=
 =?utf-8?B?TVJRT0w1MU1NeEFjMFgvbUpoYnkyZFN6czV1bzZ1ZzZHaHFFb2Z3aGFQbVRE?=
 =?utf-8?B?Z2R3QUFNalY1a2dYRExNYTBHVWlkQlF6LzE0R29FZkIxY056dUtlZ0xIOHBp?=
 =?utf-8?B?WXVaY2JwbFpmbXZiWW9PUHFGZlpLUGk2R3NiNC96cjluT2JzQWlrclFEMFhW?=
 =?utf-8?B?U3FjWFdZVmpEcTFoc3RrUFQyTElMQ2JNa2I5Sk1LM0lqQ3BUb05kZWZQbjRJ?=
 =?utf-8?B?QVk3RDRhejhHZEw0MmtUeCtKRzFpd3BQYWJad3VXeXRjOTFiaG1XSmc3MlFi?=
 =?utf-8?B?cWxtSDQ5YU4vOE9GUnRYQWh2ODF6a0x4YkF5cHBvMnVGdDQzbVl3d3R5SnpQ?=
 =?utf-8?B?cENQMC9sTFB6U3h4eWpUZldFSEo2UXNXRUloRXB4MzFBbXk3TEJIMWt1N1JB?=
 =?utf-8?B?OWcrV3N3cjQrZTVrTEZ6Q0U5ak5NZmh6WXpBYTc2Y096MXdBZzljK1RYNlBw?=
 =?utf-8?B?bERNNmlIcDUwQ1lFUVBteGtzUWVsL2p6SFNQajE0UlBmVTFXNUNleUUwRThM?=
 =?utf-8?B?SitJVEZ2Y3NkbFRZV0tOUEpPN3Q5a3NoTUU3L0cxNnBubVRTRFVjcEJjZDVN?=
 =?utf-8?B?WVMrTWlEWkJRUkgxbzBtUlNTMUpXanNZWndlcWQ1aWZVMHNYY05HSzRjckxl?=
 =?utf-8?B?YXpMZ21JRkFmdDRyMmNSSjNoUlF0cWlhSmlwc001NUJQdWY1Q0dNaGp0VDBK?=
 =?utf-8?B?UzZwZFE2N2ZNbTdOK2lnT0lhalp5dzljS3FxaHRCdTh5a3VBOVdpajE4ZjJ2?=
 =?utf-8?B?VGhnRmZkTFEwdTJEYkZCaGFsRjdrY0hvdndoSTVVUVFDYmt1R1dSbWQzTHZz?=
 =?utf-8?B?TkxZUXVkbVRHQWhWZlNoMHo1aVhGSVRYclFCT2twTTdGN1Jncml6V3kyc2hT?=
 =?utf-8?B?Rk1YNG8rbGNsUy9sS0phSVlqNEFYT1NmUkE5YTYyNS9KN1dIYm55L2lJdjRn?=
 =?utf-8?B?cVJKbnZKSytiU1BxV1EzN2I2bFN2WW1VREpuaHRFMkx0aTZFWUpVbDVjQXdy?=
 =?utf-8?B?Rmo1U3VoNlN4Zk9zb1B4bzZ0RlRHSUV2aDdrSXlyWjEralFUTEJIYkwwSjdZ?=
 =?utf-8?B?M0lBWkcrVGZCd1JwNk8ydk1ua0ZVdEtiMXFyRlM0L09ubXJMMFFSamF1R1FL?=
 =?utf-8?B?dm05ODFFeFZZTFdBdlVXWVU4Y0ZHd01HVktjcnhweWhySm9Hem5xOENLai84?=
 =?utf-8?B?WmY3eGRmM21UdVI0cXlpUE44cVhtckZacjM0RG1HcUdXeG8vOFpjVWxMLzE3?=
 =?utf-8?B?em9NN0t1cnFmcEY4K2lDZUNGcTcxS2hwSTdQcXg1Mkcydkxqajg2ak1CbUNV?=
 =?utf-8?B?NXV2OWl3NWdud3dEdG1oMlhNb1dwQUZpT3ZkQXYxekhiNmMrVmRMUWg5Y3Js?=
 =?utf-8?B?Tk5xdHYvVmFRMFcvY3k4Q0tmWG1kdkczSE1vaUZPdHM5emd0c1Y5TlJQeHVN?=
 =?utf-8?B?blcvM0lOVDBveExCRWROTUFTcitNcU9QY25lakhxa0tkWEM5ZVNqcnRIWlI3?=
 =?utf-8?B?elM3bS95WTA2RmYxZndzeTBma2ZTYW01MWVsVUdKWHVOT2pPRldNWC9Ia3Zy?=
 =?utf-8?B?ZVB0azB6SThmeVRwanRrOGM0dmY5NzNkQ3ltSXk1WGpYa1p1Rm9lSmppRFBk?=
 =?utf-8?B?ZTBMODZ3M2dzeVlueGRReVNXSkJCNWFNcThWbHFDVlNXVk5QRXA3ZlZJbGUz?=
 =?utf-8?B?ZDRudDRlTjZYYUNsYkJGWVI5MThlOXJyR3Z5eEQwQ0xFOE5LSDBFT2laT1hJ?=
 =?utf-8?B?bXdLdFdsZVZKcVZQb2FXK2tUZTY1WGVPbGlraDNZSitCbUMrdm9vaDZwYlRS?=
 =?utf-8?B?YmRxay9Qenp2cmQyVDZQVlY2bXAwNnNwVlN2NkJhdEx3WlZOL2s5eFd3QUtO?=
 =?utf-8?B?bERqQXZ0Qk9ML2xwOHlLd1k3TklqTjV4b2k1OS9Wd3luTEhQTi85R1JXRzhx?=
 =?utf-8?B?d2hRamxCWTdVUGhCTW82OE5IdWsvRHBjZWVlVjZRUkxwRldmV0Rrb3h5U1Ex?=
 =?utf-8?B?WWc9PQ==?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f195dbf-a19c-48c6-59ab-08da641862a4
X-MS-Exchange-CrossTenant-AuthSource: DB7PR03MB4972.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 15:08:32.4214
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HKDmoFp7r+hexv2u6K1TQGHhzVrE9kDJlXPMUEmTTaA5X5yq/nQfXQny8IdjcYACM3AhAm/+sVWNJsPeF5T8YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR03MB6961
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7/12/22 2:54 AM, Krzysztof Kozlowski wrote:
> On 11/07/2022 16:44, Sean Anderson wrote:
>>>>   should-work-but-doesnt-names:
>>>>     $ref: "/schemas/types.yaml#/definitions/string-array"
>>>>     minItems: 1
>>>
>>> You miss here maxItems, which is not correct (no upper limit). This is
>>> why array type is expected.
>> 
>> Thanks, that fixes things. Where does this requirement come from? I don't
>> see it in the meta-schemas/{items,string-array}.yaml.
> 
> Beginning (first lines) of string-array.yaml.

Thanks, I missed that.

--Sean
