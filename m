Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D07E56C25B
	for <lists+devicetree@lfdr.de>; Sat,  9 Jul 2022 01:13:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240015AbiGHUND (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 16:13:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240004AbiGHUNC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 16:13:02 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2070.outbound.protection.outlook.com [40.107.21.70])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 864FF564F7
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 13:12:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LLuYuldOPfh+WdOwysWP9pc0lET2YYpYZUBQYAPbnO9kdsiLmizXk/6CaxQghpxiuL5lM/kb8lp782+FoQBTY54VYSZojT+nG9eTKhRM+FW1+WDMkfpXcFLz7X+shLv+QBppjMg/15i5E77P9nfbu+ok2Ks/MEJHSlD5Lm+pWCSqQn6Lz5wNcyjq9bceb3fGqp0FVJTzK5ta5ekMaZDEy91HU10ONpfLpH7zxJNXCLu6Gas0bed/h6J4BEhcNzNIQiylFhRmZOU5tl3vbSiJv/TvundPU8RalkMpu1fL39Y79tSdy/x3e75N8g29327vKWAlEr96ADCdRqDvJTnChQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0TQx26lH8Uiu651LUgVg/yU+6fftoftjWZCz69vkvQ0=;
 b=QFTFYpdUc4mFWlpZevMtHVRIfesZzwXKFGE6eylAFULhtPNvzNI90/e0E/xJjexxd2XyJS5YkOG4Crp8lLCxk3GxIKwrCBCx+EC6gGIND81ZqIq2SHUqN5R1Olj0JH2ggGCX5nccevLE4I8JEDHix6ui/aU5zYE1OLheRC3JDV9DbKBZUX9FiZs/bMkz5emwhDeXct7+v1IyU7Por2AWG1POZLV7DeSyVgH5FBK5fNmvD9BOS4AnvBs1HnV3w+m8loWo9JBIAVXCa9ff1AIVn6/3Mbzn46H94g3Igt8JIUdl3UWUHhUUHQf1HDUDgL1+QTdd81xfI/IH/7ip8SlZnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0TQx26lH8Uiu651LUgVg/yU+6fftoftjWZCz69vkvQ0=;
 b=J1BiMTYZVv09mhfSm7lk/yMeqbY/F+FXuGiL5TFMMsQIKFEyJGaVA4CPUqAGFBaQFxMZH5qyvlfMHK6MZjbF8Xlum/mI0jhN2bz7eOf9is6qMYO2eyEeLRAEoAA1x6/Sk14S4pbq1aSflOshT1buZjmjcoRZd3e0chGRKjCMb/MHKd/eBB7gFaV7noM5OQMCNlMm7mXArCakgFjJoHd84QfKgLX+eLy/OY0dVgy16ZHG3IPFt2pvGW1/YwMGa77gTKCDG+kC1cAlA/SqulRGUa1D+yMWSWIhH9wMcn4kVgnaYkQO7ivOIT9z3L859OzCvYqghqZCP9xGGWT3Nrp9sA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com (2603:10a6:10:7d::22)
 by AM4PR0302MB2787.eurprd03.prod.outlook.com (2603:10a6:200:8e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Fri, 8 Jul
 2022 20:12:56 +0000
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1]) by DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1%6]) with mapi id 15.20.5417.016; Fri, 8 Jul 2022
 20:12:56 +0000
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
From:   Sean Anderson <sean.anderson@seco.com>
Subject: dt-schema non-array items property
Message-ID: <f86cbb55-a548-537a-4108-46f10718c284@seco.com>
Date:   Fri, 8 Jul 2022 16:12:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1PR13CA0419.namprd13.prod.outlook.com
 (2603:10b6:208:2c2::34) To DB7PR03MB4972.eurprd03.prod.outlook.com
 (2603:10a6:10:7d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f09ac8b-0880-4fca-e841-08da611e3f3c
X-MS-TrafficTypeDiagnostic: AM4PR0302MB2787:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q/ZcRlaPXcOJawe5PsRgzN3verUcObW4/ASygLcge1kQxi/OYFv4Ow1yvSXf+iDqKS41t9b3sK4V/IAga3q7H0XSAgBjvF5UUZi1uVztqK2KPMnp07Nvpcblu8PxLw4e5ubN+GBE8ExUVrNIDS3OR47nbFBJy1l/6ztP1vtf3dNWE8sRvbUX00pjWFBWyUb14mi8xao4GozZL3LMV7CTOI5EQnVYPlXIO3F3vrY2M5W/IW3lNzVjhrEpAhMkuSXPvu4RFdPBw+2Kp+zAUtS1/SDvoZs/jaI/xTONnZcW55OpYGCco8cPKBbZVm5opkrl16HXBcPDAslTq5lHTlQymZh29wuFkVUPrqJ6eJnbsNBx4+sEaTf0WvQJgpDHVGDHdREDLDFp0Bs9ffijVboMVzgLrJCxThZe5dNCIzAbjipIb9soMKMT5yayrrjHJQOBJQkotUcrs5s2D2nwkIqacs9TWdoH2JMZ4Az/rl0+JOFyg/qYCsUaDjpa8xvIMVvKP8YHp4bhqWet0vrELWNNp4DA510J78RtcXxtnu04ZEIHI2unaQjtB/ehP2yUfrEVPithj1iTvoyKYjqTYYnGbTP9QPa4FijROlOxlvpGUn4UJTwx8FXNc0gVzELoI4QXvZwtz0F1b1l7W10EauLj5rn4oEFwKropxvYeNUNcPSOICfZPSkr9gUbyCqj5nv/8a/O49sX7A3FjV6fc6MUincODJ4HeflBn0jvlPrtgc9DxpLPHmSDZcyizxjQuZ75F32UGcaW43pKa1XUyP+Y4tzPSaNRC/LsdrOutOY22DQ8aS5DvZcCMQqJdlSMM3Qx2nBIn+cTHJhX8bdSPvkFPM6KO7lXV0ZwmaYBYdEjW2a4hBnumwEBsyJ8QJkA4Fs7nQuMFVNIocQ0+2JP/MxZEvA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR03MB4972.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(136003)(396003)(366004)(346002)(39850400004)(376002)(41300700001)(6486002)(6666004)(966005)(66946007)(2906002)(478600001)(86362001)(31686004)(31696002)(26005)(6512007)(6506007)(110136005)(316002)(52116002)(38100700002)(36756003)(38350700002)(2616005)(186003)(44832011)(8936002)(8676002)(66556008)(5660300002)(66476007)(3480700007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1poM0NydmgvSjAxZDZZckdML3BpUm9TdXV5eVdPUks5UGNkR01NU2tCZncy?=
 =?utf-8?B?UklrKzNlekZGNFRxY3loUTZkRzFuRUhrUmprRHQwd1RESHpJUHY4YzRUaXVp?=
 =?utf-8?B?anJUd3diTG8xcEZkeWwzelJqMWc0KzBoQU5FdGNUOEFxMmdzOXY1a1dPbXFG?=
 =?utf-8?B?TEZROGxaZlNDeGFTVWI4UFJ5bEJENlNqYnJPSG5YVUlKdjRWemVxdlhMaFNM?=
 =?utf-8?B?N1h0MS9jUmhPQkl4WTBKVWxVRjk4MWJySDVQRjdreDAxWVhjQ3l4cWtXSDBO?=
 =?utf-8?B?bmhsb05VWkljWWZjQlhqL3Y0d1B0VlJCcWR5ZmxPN3MwRGVzSUhkN3Z3bU11?=
 =?utf-8?B?bE96N0JLM05BbVEwT1k2bS9ZSmh0RW5QQWV5MDhGNm9oZkg3VmFud3NVd2M0?=
 =?utf-8?B?YnFmcU1iK240TWYxTVFOSW01Qkw4YU4xVEs4aDhrUjJ6d3dVRmcvVHlCVi9Q?=
 =?utf-8?B?ZlJGazlXcVR2bnEzQkZZSHdubTJsZURBOHNibEJtYVNvdG54cWN4a2pBYTdW?=
 =?utf-8?B?YWozSkxHdG95OFNIbi9jL0dQbkQwdVdMak82d3dqMUFQUUUxQWFDakNlUFR5?=
 =?utf-8?B?VUNPRUtuaUpOLzlGN01sNnJRMVpOYmp4b1R3VDJjZm10L2VwelpYcHNCaHVl?=
 =?utf-8?B?c2xtUVkvSUxVSEd3bmZhSEZMTk5NbTBRUklsemd0a3YzNFRnV3BINXpQUGZl?=
 =?utf-8?B?Wlp4ZXhNY0FJL1Y0QUo4TzdkMnprRHorbmh2bzdMMFpLSWI2eGFjaElwMGZk?=
 =?utf-8?B?S29UYVA4MmpMRENNeXZQQUN3RVhjUit5V01xUkhwT2poRnVsc3NFVDY3UkpC?=
 =?utf-8?B?RVRkYWFqOXBwUE9VVE1FUjlrNjROUG1aYzZnMVMxODNxdndPN1VQWm9RcWFz?=
 =?utf-8?B?anNHTUV4UG9Xc0NEMEZNN01pU3lBaGkxcklnaHhtSDAzT0kyWmZsYnhneG1V?=
 =?utf-8?B?RXIraW5xOEVGUjQzbUM4RmFkZm5NUTFpTys4M0dYZ29YbDBIdHhIcXVYWWVh?=
 =?utf-8?B?TC9yQzlUVno5WDVpWnM5M2JkWklnOVJnTm9oakxlNGtmV3RTajArZ2g3MEYx?=
 =?utf-8?B?dVg0MnBJbEpkN0xpYUVKZzFFUXhSZjczSnEwL0ZGcVRXZzhCL21ITEdNK04y?=
 =?utf-8?B?NUpubm9XWDVQcGpZemVSczEvc0U5eDY5eHh2MmJaQVhEV2lDbElhaCs3L1Q0?=
 =?utf-8?B?TlIwWWpsbmhnRzZVWC9yRVp5ZWVKLzFLSTdYQXRSeDJNb3B5LzVwL2pOSDZn?=
 =?utf-8?B?b1RWcnRjeFhoSVlhd1pLbUYxUi9iVzRhcUNoUy9PUVNGbytibDdPS1VlU29G?=
 =?utf-8?B?OXg2bFZUczZNdnNHc211WnoyNWxYRkEyMjN1dU9la3dDejliNmpYWUdqSkNS?=
 =?utf-8?B?NnM1NFVBa3dlN0NTem9LNHcxbHg2ek5ObFZQOXk4OGtRUFI1NnF4aU1RZUth?=
 =?utf-8?B?dVVjUnJoUm5kcTZ2M0xZYlpDUS9keXlNbFpkOGRvN01VT2Y3ZWFob0gxYTNr?=
 =?utf-8?B?YXJjRHhYMXVEdDhsLzZ0MkViYVlIN2swMy85SkI4c2FlL1JQRHJBdks1Kzdo?=
 =?utf-8?B?bFhNU3FWeUlwSXFkeisvWGN5TWdvVUsvYmxnVGlBbDEzVzVqUFV6Qm5iSnV3?=
 =?utf-8?B?cGluTlMxTnhRYk9LUC9SdUF1WVYyYnA2SGFiRENWWklLTW9MNzZTbkhneVhm?=
 =?utf-8?B?WWtaSVpjWm9OekQrY25rVnVjVEp2dDkxN0JVaGpxT3NndGl3NTJVY3BtSGts?=
 =?utf-8?B?b3FOVWlkV0V2MjZJcjBvR0d5V29GK0VabTk3QlNibzZoMERuYnl1YW9NbnlG?=
 =?utf-8?B?Kzk2MEc2SUovZDMwNGV0d0dYN3lncHF5UjkwZ2RLU0VYNEZMSklzQ0hTWlRZ?=
 =?utf-8?B?SVF3QXJyNk5vaDViZW5ucjZac2hPL0RpWkFYeGV1ejdES2hoRFRaRkxVUUJN?=
 =?utf-8?B?L2p6ZnZtMW15MEZlZVpHNHYzZ0FFOFdvY3BCRjJGc1dOSXBpU2VRVm9HcVV6?=
 =?utf-8?B?bDBkVC9leS9Qay9MNlNEbUlwV3dycXhxM2VWSVplQS9VMTJETEVTMVhxOU91?=
 =?utf-8?B?VWhGWjNZS0xyeDkvVS82REtCNUE2RTRVY0xWdGRmOTdNOWl3b0V6Q3lzWHl2?=
 =?utf-8?B?Y0JZNlgzbGdjd2YveVRacmswUEJaRmN4cXFsMHJoK1pHRU1kWDZMbkFHWHF3?=
 =?utf-8?B?YVE9PQ==?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f09ac8b-0880-4fca-e841-08da611e3f3c
X-MS-Exchange-CrossTenant-AuthSource: DB7PR03MB4972.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 20:12:56.5309
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f/a06O3sik988NgJ0B4Y5B4PS+BX66OFzYUESaFveCc7dSvx76MZCSvjjHUjcHt8+zVdXftYg3DmRP7jUN0sMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0302MB2787
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

I'm a bit confused about how the items property is supposed to work.
According to meta-schemas/string-array.yaml, the contents of items may
be either a list of enum, const, or pattern, or an object with any
properties allowed at the top level. However, this last clause doesn't
seem to apply. If I try to use it, such as in
should-work-but-doesnt-names below, I get

test.yaml: properties:should-work-but-doesnt-names:items: {'enum': ['a', 'b', 'c']} is not of type 'array'
	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#

What's going on here?

--Sean

%YAML 1.2
---
$id: http://devicetree.org/schemas/test.yaml#
$schema: http://devicetree.org/meta-schemas/core.yaml#

title: ""
maintainers: []
unevaluatedProperties: false

properties:
  compatible:
    const: baz

  verbose-names:
    $ref: "/schemas/types.yaml#/definitions/string-array"
    minItems: 1
    items:
      - enum: [a, b, c]
      - enum: [a, b, c]
      - enum: [a, b, c]
 
  non-kosher-names:
    $ref: "/schemas/types.yaml#/definitions/string-array"
    minItems: 1
    items:
      - enum: &abc [a, b, c]
      - enum: *abc
      - enum: *abc

  should-work-but-doesnt-names:
    $ref: "/schemas/types.yaml#/definitions/string-array"
    minItems: 1
    items:
      enum: [a, b, c]

examples:
  - |
    baz {
      compatible = "baz";
      verbose-names = "c", "b", "a";
      non-kosher-names = "c", "b", "a";
      should-work-but-doesnt-names = "c", "b", "a";
    };
...
