Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98F93753B58
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 14:54:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234066AbjGNMyC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 08:54:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230093AbjGNMyB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 08:54:01 -0400
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2051.outbound.protection.outlook.com [40.107.8.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23CA21734
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 05:53:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BjCt7+7z6e/1okGv/WkaOP9Uwvv1MRiyFzcy3iXiCVv5o48VnMwb5q+r32CGY/UvI5mcIN7ssus0LiUeYZ2Cj9vth4GFQ3kxio7lBsJqvmU4UbdXIcH3HUhoa2Eu9EGwvEpoMedosm81ov8fYGaxrIGsMe58oKI+UT91fzh1ymAOYFLCQv5wi0MKWoidsxKjiKu4StMgo9bmF8J6fCjiOP4eQgVly5EexPHu+MZYxHs0Axr0t4onIwz8r2vUQK+q12x8G36gx7tJTJwRnjTaU2esGJ09o9lqLPyEmHvmBzrdBkFBinwLKQSIg8lRtESy/9bhnxoWCO1+jQkCxQLgTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vRopVgfIUdSJjwgNk2Pro1Uau73LNKuIjza00MDAt3g=;
 b=k4YPhRNGt3OMJ6fUkpQ0ILZqw7TemgOg8ryGLkqLe2utqsjDWsuk1jZwIbeLJVWExVTV6QaeR8ZF4OpEtF5eiUPyWh/1N53Bnxqp7ZPZWARdM29U6WfpFWfXAKndNY6n8/y1IZnO9wzjrbX1v0l5oOJrq26LpcjSyyP4gqAoI17blgjELeQV1DTO59K0z80A+rngRINMkJLo2/cQUYKNI8daEe1eCwTonBj1RUjnznml1rX/l5TxS+Ib8IixYJMaCOracqVNwSJrtdd/VwfGJPpjt6SdXxbWHpUo/zk2n/IkZ9gVPBFUJZvmrkE9ZTNmdisFBAi3NgqSmaSz0Ww1gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=variscite.com; dmarc=pass action=none
 header.from=variscite.com; dkim=pass header.d=variscite.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=variscite.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vRopVgfIUdSJjwgNk2Pro1Uau73LNKuIjza00MDAt3g=;
 b=Is1izHnRanOTFaqdk8BtNmBZ+ZzgeYge+3uIY97gtnYObSfJqF83cu1s+QahUeFserEoXFKOVfwA2UNFMtRPMTA2xXw5mtYllsMG/o4RP47SS6xd6ElPb3t0tqJAB03cKh/uravKaNMB0+zdvoIcb1/EKXAmgOuqzMODqKNUM/MMfwkt11v/SIryZCH4XhdNA8UPq0KoaGqDdqGBdzHSbaE3kuU5Cu7+b21n1sKyq1d4cxB22TDzBiOMh1Y+JEUF12aRR+B8J6yrGJfUdjigVwNzCTwGMgScUFB8eK4/qgQvaKYOcqi9mSGgVy3Ew5VTlNx4+mJdcuQvgrN563Q7vQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=variscite.com;
Received: from AS2PR08MB8808.eurprd08.prod.outlook.com (2603:10a6:20b:5f4::14)
 by AS4PR08MB7926.eurprd08.prod.outlook.com (2603:10a6:20b:575::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.36; Fri, 14 Jul
 2023 12:53:56 +0000
Received: from AS2PR08MB8808.eurprd08.prod.outlook.com
 ([fe80::88d8:ddec:561b:c061]) by AS2PR08MB8808.eurprd08.prod.outlook.com
 ([fe80::88d8:ddec:561b:c061%6]) with mapi id 15.20.6588.027; Fri, 14 Jul 2023
 12:53:55 +0000
Message-ID: <94e84ae4-f8e3-2bd1-b876-9301a1d6cc78@variscite.com>
Date:   Fri, 14 Jul 2023 07:53:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: add device tree bindings for mxl-8611x PHY
Content-Language: en-US
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Eran Matityahu <eran.m@variscite.com>,
        Nate Drude <nate.d@variscite.com>
References: <322ede0d-7cc5-6878-4aed-af4c120b4de9@variscite.com>
 <6e9346b2-e241-a5c5-c74d-36ff98d20258@variscite.com>
 <83d4d054-fa17-2d3e-e6bd-bf7416702dbf@kernel.org>
From:   Nate Drude <nate.d@variscite.com>
In-Reply-To: <83d4d054-fa17-2d3e-e6bd-bf7416702dbf@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR16CA0005.namprd16.prod.outlook.com
 (2603:10b6:610:50::15) To AS2PR08MB8808.eurprd08.prod.outlook.com
 (2603:10a6:20b:5f4::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS2PR08MB8808:EE_|AS4PR08MB7926:EE_
X-MS-Office365-Filtering-Correlation-Id: 75efe765-c770-43f9-60e6-08db8469622c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vVeOt1ZduAf76J3NcNdW7clHntU44/YcPgsTk/uom27kccW8jdUDxwe5czMv9LwIV2WvC0kTlBrBxoA6uNh2mYp9bERnvTeX1tQ6pCjt+P5Z/+7o+Uo87C5P0rVJDy20APRdNDFQw20M2zQsMSAOe3l2pkPHRXzvO2oqOfrQV4kwCf3zcn6nkxcK+2ATzTrBxM5AM1vPvAhHwTO8f2cLJcqdMvCmqFrKK1XNifo6sTp9xEEWpQX66WAwtRUBl4Tbv8ZKr3o3jhR4ZI0/n7crmJUu8faVa8fg8BckZe0IpVMydv3C3kDJ0nbpXwwJmfHou5mEMa5FJ3XZ6XPA/XZTYJgoq6i3kuN/L0Cj2+WfhQrSxG0zDpxv5E4JX8owmkT44MTrbRHwrjNOYk7uHJDKCTAfY0AgwTm/2nfinRpxHAAN4uYEm1FdDoAbRC2vMRGsxR1O2FGizNn70P3XQgQwQuheG+0octh8Y6UDsau0z7/E7ZWCGSH7w6HKxYDy5EOmdoR5Kzb367ug5OXcUQn8XSEc5PE37wGDXI/LOKXHN4jO2xatwz3YRTqz80e0Yfg3/5x5ABro9GmemoRLKaJwzUQr3n3VTSbRMT56kMcNeMkwglxbg1mOAOsYY2x3Hk4VsaHC1aOlmICKGuauNjatSw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS2PR08MB8808.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(136003)(346002)(366004)(396003)(39840400004)(451199021)(83380400001)(2616005)(478600001)(31686004)(186003)(6666004)(53546011)(6506007)(26005)(4326008)(6512007)(107886003)(66946007)(66556008)(86362001)(316002)(2906002)(66476007)(41300700001)(6486002)(31696002)(36756003)(110136005)(54906003)(38100700002)(8936002)(5660300002)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2tCVFcvbUtkdlZxNW9nWlcvOVk5c1hINDhjUE5hdHN4N28zenVHYzZXaTRR?=
 =?utf-8?B?TVozcWVuV01laXk5UDVmNUx3MXYxT0hhTjJabmNwSy9yRkNuRVRST1hhMGR6?=
 =?utf-8?B?cTRSVDV4QnJkZWdrV2tJTzM5RWNiZzFCYnUvNHI4NUNuaitLa21uWHRTZ2RB?=
 =?utf-8?B?Zis0aVo0eXY2NmhyQlgrRVplaE5ndEM4RnMwbVFPWjFLR1JQRVQ1U21jNEZy?=
 =?utf-8?B?aDZzQXdzd3FrcFV0TmpHbnd2bncvOTVkS0pEOWVZdmZMa3cxazRBWkFaYWh3?=
 =?utf-8?B?YlBpWGVBQkVEdDlOTXloNm1QZ2x3M0JaZFZZSVUzM203cE02RFoyZnR1R0g2?=
 =?utf-8?B?alJmVXM4dlNVdytlREthdU5ZNENGc1hQZkMyOTFYa3V2K1oxWTlBMzg4UEh2?=
 =?utf-8?B?ZlVESDZua0FQWFA1Ui9oVUtSalUyMXVJdWVuSlR0c3RMUUg3Z3FDYlhteVdQ?=
 =?utf-8?B?aXNSNllaYXlWZ0x1RlhIUnh1NGFBZUFwTWNWdXdVdWVKOW1TS0VtLzE0WS9s?=
 =?utf-8?B?Y3VZSVpYV1ZMQmJjM3NwZHZHVkNyYnFIVFFORForQWpVRkxJNjJTQjE0RjNX?=
 =?utf-8?B?MDZJY25HSFgvNXdqSmdaeWFMWVR6eHhlaFQwWENoVUZwUEQ3Ry9DQkQ4YUI2?=
 =?utf-8?B?MFA0QmwyQ3Zqb0hrTWlHTWUyL2REZ1VvZFdkV3czamVUblFKSnFsK09sQ0Rt?=
 =?utf-8?B?RlhGN2xsYTR1YVNqb0lOY1QzQXJ1WEtncktsRnVycWV4VzlPeXNobitPMnZ2?=
 =?utf-8?B?c0lpZ2FWeDhLb3BSbitqVUlnVEpxdzVuMng1MmJwU25BOE1vNzZ4ZitYbG1L?=
 =?utf-8?B?NGhjSk1LRkRTU3cvdEtXRy80Z1d5OVJISGdRMWdZS0U2akl0andGSERzTnRz?=
 =?utf-8?B?OExNZFFBVXZnSGhUaDJhS0c4NkZuQWNRdWY0TDhqTGZDbjcybnVpd1cxdDRT?=
 =?utf-8?B?ZjB4M3NpbXZVU20wMzRJdzNMZUlmZUh2SmVkd1hsQnhTaWN4NC9MM1ZPb1ll?=
 =?utf-8?B?VDM1dGUyb3pzblFCQWppQ3ZQaytXYmpRT2RWZHRqaXkyY3RjbWFvVW1RWkNE?=
 =?utf-8?B?MGZkY1c0b2VrTHJPR3BuRmEwUHNHeFB3K2dVREl0T1NuR2U3WWIzVHA1Vk8r?=
 =?utf-8?B?a1p6ai9TbUlGYkV1RDZTMjQwbkVkMlF2ajlYeHphWUt3OHNtZ3JvZ0tVRG04?=
 =?utf-8?B?bEZNYUV6dUdqbThBYWtpZ1lLc0V1LzgybENvVFJjcENIZHY2aW9FWlZzWGRG?=
 =?utf-8?B?bElGYXJGN09la2dwWW1VNXVHZmtoMXVPWTJXQUdQV3ppNVhTY1RPOFBRUXZx?=
 =?utf-8?B?cmU1TFlwUXk2RE50YkpQK09kanZlQVpOOVpWQWhRV3A4aHREdlAxaWdUdFpX?=
 =?utf-8?B?T2ZMb2Y0VUc1ZDF5WU0zU25OMEF1UWdpa1V4RGJJTDErYUhhUHl1N0hmZjRK?=
 =?utf-8?B?NVY3RWRHdnFXUGk1NHd0N05sdk9uVi9VSFUwTTJJcUlnVW5pMC9SVzk0NElp?=
 =?utf-8?B?S0t3Qzk4VXUwUVFYemRvYTJjQ04yb3hqc2cwUzRMVHIvSG1HNU5JSkcxK1pn?=
 =?utf-8?B?TmJhY0dVdmVCRk1PNzZxNGRwdS9QWVAxNUZqbXZ6QTRXcDByWDNoLzJFcW9n?=
 =?utf-8?B?N3pyRVRrNFFMTWpMaXBVSURJL3hLQy9aYXRtc2c0RUc1SC9kN0lBZ3Ixb2Ju?=
 =?utf-8?B?cmhmUjgvNS9hSE4wZ1NpRFVpUWtuQy85ZGlhSGJ1ZFZpWWJ2MHdEWjJPRnhI?=
 =?utf-8?B?MlIzWC9WSHc4aFptU0RJWlNheUFSR1lqNlJ5bEJxS28wSFpiOHVIOUhHZ3Vi?=
 =?utf-8?B?ZEhEblF6eFc0ZXJuWitOaVhYQU5XVjV2VFZId2lyWUZzT2VlWDNYQUFPd3JF?=
 =?utf-8?B?cXBoSHpITzhmd01QZFdJQzZ5dlJjYzR1WHhzTEZpc2lIOWR3SlgwY3M0RjI2?=
 =?utf-8?B?S01EK1NMNEYxM2VwTm9mOXJBTnZNaWgwSUdZcU11cTZEdTRyaytoWTROMmF1?=
 =?utf-8?B?VEhsWHV5dWhZcEJncUNxM2ZPUDFvRCtpQWpZaXIyVXdlWmd4elZDMWo4RDUz?=
 =?utf-8?B?QUdZK3RqVnQxc2lJTDAySDBsaHFYMDdQdlFUYVRxTWZmbWRCUHRZOWErdnNW?=
 =?utf-8?Q?neGXQ0O/OAAIVuNjyK2hSOXo8?=
X-OriginatorOrg: variscite.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75efe765-c770-43f9-60e6-08db8469622c
X-MS-Exchange-CrossTenant-AuthSource: AS2PR08MB8808.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2023 12:53:55.7565
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 399ae6ac-38f4-4ef0-94a8-440b0ad581de
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z8TL1QjE7EN4RU7DY8sRpkFEMBQyPeim/Xqdd9ttZU4YCn5p8D+JVe1x76U781j6HKftEcgWEllHMiw8sqMsZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7926
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On 7/13/23 2:06 PM, Krzysztof Kozlowski wrote:
> On 13/07/2023 15:23, Nate Drude wrote:
>> The MXL8611X driver has custom bindings for configuring the LEDs
>> and RGMII internal delays. This patch adds the documentation and
>> defines necessary to configure it from the device tree.
>>
>> Signed-off-by: Nate Drude <nate.d@variscite.com>
>> ---
>>    .../net/phy/mxl-8611x.txt                     | 37 +++++++++++++++++++
>>    include/dt-bindings/net/mxl-8611x.h           | 27 ++++++++++++++
>>    2 files changed, 64 insertions(+)
>>    create mode 100644 doc/device-tree-bindings/net/phy/mxl-8611x.txt
> 
> You did not CC DT maintainers, so kind of funny way to ask them to
> review something.
> 
> In general I will not provide full review for projects other than Linux.
> Submit bindings to the Linux, following proper Linux kernel process, if
> you wish them to be fully reviewed.

I appreciate your review, and sorry for the CC mistake. I added the 
other maintainers.

> 
> 
>>    create mode 100644 include/dt-bindings/net/mxl-8611x.h
>>
>> diff --git a/doc/device-tree-bindings/net/phy/mxl-8611x.txt
>> b/doc/device-tree-bindings/net/phy/mxl-8611x.txt
>> new file mode 100644
>> index 00000000000..462fdf61666
>> --- /dev/null
>> +++ b/doc/device-tree-bindings/net/phy/mxl-8611x.txt
>> @@ -0,0 +1,37 @@
>> +* MaxLinear MXL8611x PHY Device Tree binding
>> +
>> +Required properties:
>> +- reg: PHY address
>> +
>> +Optional properties:
>> +- mxl-8611x,ledN_cfg: Register configuration for COM_EXT_LED0_CFG,
> 
> That's not correct vendor name. Neither property name - underscores are
> not allowed. The property itself does not describe any feature or
> hardware. We do not program registers in DT.

Thanks, I'll need to reconsider how to abstract this from register 
values. Forget about this for now, I will split the LED support into a 
separate effort.

> 
>> +	COM_EXT_LED1_CFG, and COM_EXT_LED2_CFG
>> +- mxl-8611x,rx-internal-delay-ps: RGMII RX Clock Delay used only when
>> PHY operates
>> +	in RGMII mode with internal delay (phy-mode is 'rgmii-id' or
>> +	'rgmii-rxid') in pico-seconds.
>> +- mxl-8611x,tx-internal-delay-ps-100m: RGMII TX Clock Delay used only
> 
> Use correct unit suffixes.
> 
>> when PHY operates
>> +	in 10/100M RGMII mode with internal delay (phy-mode is 'rgmii-id' or
>> +	'rgmii-txid') in pico-seconds.
>> +- mxl-8611x,tx-internal-delay-ps-1g: RGMII TX Clock Delay used only
>> when PHY operates
>> +	in 1G RGMII mode with internal delay (phy-mode is 'rgmii-id' or
>> +	'rgmii-txid') in pico-seconds.
> 
> Same problem.

Can you please provide feedback on these updated bindings?

- maxlinear,rx-internal-delay-ps: RGMII RX Clock Delay used only when 
PHY operates
	in RGMII mode with internal delay (phy-mode is 'rgmii-id' or
	'rgmii-rxid') in pico-seconds.
- maxlinear,tx-internal-delay-100m-ps: RGMII TX Clock Delay used only 
when PHY operates
	in 10/100M RGMII mode with internal delay (phy-mode is 'rgmii-id' or
	'rgmii-txid') in pico-seconds.
- maxlinear,tx-internal-delay-1g-ps: RGMII TX Clock Delay used only when 
PHY operates
	in 1G RGMII mode with internal delay (phy-mode is 'rgmii-id' or
	'rgmii-txid') in pico-seconds.

> 
>> +
>> +Example:
>> +
>> +	ethernet-phy@0 {
>> +		reg = <0>;
>> +
>> +		mxl-8611x,led0_cfg = <(
>> +			MXL8611X_LEDX_CFG_LINK_UP_RX_ACT_ON |
>> +			MXL8611X_LEDX_CFG_LINK_UP_TX_ACT_ON |
>> +			MXL8611X_LEDX_CFG_TRAFFIC_ACT_BLINK_IND
>> +		)>;
>> +		mxl-8611x,led1_cfg = <(
>> +			MXL8611X_LEDX_CFG_LINK_UP_10MB_ON |
>> +			MXL8611X_LEDX_CFG_LINK_UP_100MB_ON |
>> +			MXL8611X_LEDX_CFG_LINK_UP_1GB_ON
>> +		)>;
>> +		mxl-8611x,rx-internal-delay-ps = <0>;
>> +		mxl-8611x,tx-internal-delay-ps-100m = <2250>;
>> +		mxl-8611x,tx-internal-delay-ps-1g = <150>;
>> +	};
>> diff --git a/include/dt-bindings/net/mxl-8611x.h
>> b/include/dt-bindings/net/mxl-8611x.h
>> new file mode 100644
>> index 00000000000..cb0ec0f8bd0
>> --- /dev/null
>> +++ b/include/dt-bindings/net/mxl-8611x.h
>> @@ -0,0 +1,27 @@
>> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
>> +/*
>> + * Device Tree constants for MaxLinear MXL8611x PHYs
>> + *
>> + * Copyright 2023 Variscite Ltd.
>> + * Copyright 2023 MaxLinear Inc.
>> + */
>> +
>> +#ifndef _DT_BINDINGS_MXL_8611X_H
>> +#define _DT_BINDINGS_MXL_8611X_H
>> +
>> +#define MXL8611X_LEDX_CFG_TRAFFIC_ACT_BLINK_IND		(1 << 13)
> 
> Register values are not bindings.
> 
> 
> Best regards,
> Krzysztof
> 

Once again, thanks for your review. Hopefully when the driver patches 
are sent for Linux this will have been helpful.

Sincerely,
Nate
