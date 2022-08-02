Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDDD9587E8B
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 17:05:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236413AbiHBPFA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 11:05:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237366AbiHBPE7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 11:04:59 -0400
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-eopbgr140045.outbound.protection.outlook.com [40.107.14.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B09923BF6
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 08:04:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MRIEtLN0hbxNiiluTW6DODAl0L2Pbm/hObXSzjqib/scfrqiTILrTJM3C7YPQOPHxrbGCCh4smAlHqMgGDPTRXH/Rbe7VnM/r2lfPJLo3VhOGaEdQOZa0qYTTr5mW1nm628n+q9pj+eZVnWW26ERDa76rsHTKSCcHr359+JxZ/N9Tx3hSCZJNEnO+a14Mhvv3cvt/I+xS/homnMmWyWqMBwlYxNbXw4DlUkV/FKVNhpKgDH7wzW/zihUVnOjff2k4Ol0F25/NWwzYwjzByWp/P1SzN0qqdosB5hNyHIeSsINWHeZ/7BcyBcw1C2LqNPeHZVQrpIiEcKL1XQUn2NSVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0XCjCpqGfhUkNBD5I5rZAwTzLQyzh+P4iyfRq25zcWY=;
 b=M82dOu2HSRIfYFR8l7iBd8l8/owom5Rf23IAo6/5uO9aAPEHLzHuQMutYvOFaRcg0lc8CTtS05dL/L9RU7RXTliXH1Wo0EPCU+rvsX6SLo6DV8ml9l+S2zDpWienhESjMoPf55EHoAv12F0VbW+bBXfJapmpD2gnFUWtsr7RuIPOAq4dQ+CQhQES5R3ADal2eonXnlE05dKshWvdnSP7F2sTDw04gHpiuT3mReqdWUO2LPOE3udkoSzTnnvn5uCqnJurLb24abVMyCzN9gif0lrVxUtherXGgl+I/E/YYn+md+OzyBU7R2H5bOdE7xdeH3wzqqugu/4ffNmMIGwTEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0XCjCpqGfhUkNBD5I5rZAwTzLQyzh+P4iyfRq25zcWY=;
 b=RmGLj6TBkFKKEsCzEAEyCfFkr8Y5GWZYTkQPyXNGdom6w1kzyQnIv95aE6FhTtHU5hSr2Ij8vkSC6QZUXTcemlvMNOrSst+QSUM++amAZzI+7K+Q1s/Sn7RYJRb5WARe1exxxrnu4Ns5YWikM4zOphYPq9T1UojrNSYD6nQVEYdiHl7MkT7/13p9U2yzTcOJiDTC0AH+QAO+uBnskOhXEtGKXbPXNgm64aiyC5W3TrIHfDOmA/acuNvA8SeumYf5FQOi0KzZ9ZMIQQeKnZdkdnMxQHlDMi4NBLjZjTm/PyyFuXfKkLyTtvdKukHhc8nNc1C9KHuV8wuE5q2x0Hs/zQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com (2603:10a6:10:7d::22)
 by AS8PR03MB7601.eurprd03.prod.outlook.com (2603:10a6:20b:34c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.16; Tue, 2 Aug
 2022 15:04:54 +0000
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::7d32:560f:9dd0:c36]) by DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::7d32:560f:9dd0:c36%4]) with mapi id 15.20.5482.011; Tue, 2 Aug 2022
 15:04:54 +0000
Subject: Re: [PATCH] dt-bindings: net: dpmac: Add phys property
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Ioana Ciornei <ioana.ciornei@nxp.com>
References: <20220801181347.3873041-1-sean.anderson@seco.com>
 <584e385e-7790-87c1-55c8-d280ae2fb9a6@linaro.org>
From:   Sean Anderson <sean.anderson@seco.com>
Message-ID: <f92c6163-1763-9269-dc9d-fb1df87a33b8@seco.com>
Date:   Tue, 2 Aug 2022 11:04:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <584e385e-7790-87c1-55c8-d280ae2fb9a6@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0PR03CA0279.namprd03.prod.outlook.com
 (2603:10b6:610:e6::14) To DB7PR03MB4972.eurprd03.prod.outlook.com
 (2603:10a6:10:7d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dfc264a6-20ef-4178-a839-08da74985b71
X-MS-TrafficTypeDiagnostic: AS8PR03MB7601:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4S8jz/qxZRiKvQziprRvnu1sFDtZkqeM2bQZW5aToUVm7q8ymKQ4Q7b35XS8Ba8xuJjTz95AWiPDFJpwl0E7FxeD67YXCvzz1RIpKaop2Jt6gCgifGDa+lqv1lS7p54Cv8l07CXqJMcOPYHCw/JkRWSm+3hMbpdH24zSFV+T8BydnRiL0dHwjG2wkJyaSDxys5lsAIPv7JIg+RDd60FGPCRZ0i3dDL+WeH+meFc6FJa17Ot9QxW/JUw5q9MOOa9Ax7zf7W3e+2ygO3xak7zN+jSQiWi/snEbUjwjEroLkHHfmA9TKiyyUXp6fYUxn5XFA2wM0DsISTeDjqXvrCVUHQ+/MW3a89Dwn5dSKrX0A+B7FFpBRKjPo7/oGm0xyC5bvIXE5d7PN2Bxx1S1SX6cBP/XWba0RBHEvOVum/GrAr57r1X+BJ68fp7NPn50R8wWvjEQe+HP/FlrgWGEIC7qcDAto4XLwAwPVeGr+OsdwSc8KhEkW58miChSglihMx2HUIJdkixW32/tdCcgrfAMCopE9E5O7cVdyHaXg2OzdW3HjNwTjVxYqfCln1zfklkiGUbAP8GSgLnGIyNIhMGTG0vN4mJ7a89+EK9KlVugu7FKtjneQMj2Us631+TTskDyjwvhUK+xlr0TX1IfeD+PmScESHv15dhJvud28tyP6mIY9NxXngif5ATp23kWqqukuxVbcpxGrwwLmUKdyWpMl5vCSMTWwM7BZPMtwJdbd40njwQuzk1eht0LY/TMDZUsmQeNlcFBpuvLJXEuYZVETSzCefS8MKwLQuvqhNORbI5KkM5JVB8CbPr47UrjprcljVflY/R9LTjIINKWlsQPx+vWNukcGsxbO2D6KXK7TXg=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR03MB4972.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(396003)(136003)(39850400004)(376002)(346002)(83380400001)(6666004)(6506007)(2906002)(316002)(53546011)(52116002)(5660300002)(66946007)(66476007)(66556008)(86362001)(4744005)(8676002)(4326008)(110136005)(31696002)(44832011)(8936002)(41300700001)(38350700002)(38100700002)(478600001)(6486002)(36756003)(186003)(26005)(2616005)(6512007)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDdTc0NmVGp6MFpjUHlzaHFubnlXTFpWbkJMamR4VlFSRlR6MGhCOVR0YkxF?=
 =?utf-8?B?RTlNUGZxaUtGUHgzalVYUEQydkZNNFVDai8xamZ4OW9SOERDS3BmNnQrbldh?=
 =?utf-8?B?dnZJL1RlU2Yvc0lsSm9uNC9BaGNqclIrL3MzaG9uUTdZRjZTVjlOSW8vZ0c0?=
 =?utf-8?B?MWhKTURHVnF2OE5zNkZQQi85dTA4alJQckdKK1pvMFEwRkNOL0RtV2lUNmlG?=
 =?utf-8?B?Qnp3MXVQZlM3cE5mWTBaYkM1eUg3RXFaeVFqbGlHaG1INU5DL1phZ3VZeE5K?=
 =?utf-8?B?MU1ZZUZuUkIzalIxTzZVcEtzbVNDRmUzOUxPdUg5ZlNGZjYyQURSNVNON3JQ?=
 =?utf-8?B?TVR1b2RzZ1NURHgxc0hQYjQ4MkxESFAxSytGTlZabUcxQTl3UGxaNFNDQzlB?=
 =?utf-8?B?WHQ0OVRCWjR5eEhKbHdKQzcrSC93eDk0clIzNGJZOFhMSkhJSTdxRHo2cGFZ?=
 =?utf-8?B?OUU5WHFTcDQxL21MbHFBWUZpMituQ1BXSFBvVFRMMnJxb1lnTXZ4NERzTDlP?=
 =?utf-8?B?NE5wUGNwN1Bscm5zUGR2cFdTM2F4RGUyaCtBQXdGYzhyc0swd2ZSVUFCaXRx?=
 =?utf-8?B?U2tBcUx5c01BOFJxYXhGS2dKRXlhbnp5eGFPUmdHdUkyUHF2OUFjZnNkak1H?=
 =?utf-8?B?T096bUExZjhFZHhpMWxEbkJmUU5sQmlzRXF2WG42ZUZyeWErblhzaFNGTWt4?=
 =?utf-8?B?Y2NQcjc5VXNQYU9pQ1R6NEZnM0hnZFY2MHJKOXNMTlFFU3BScjdPeitRTDRH?=
 =?utf-8?B?eThmdStHUDl3QmQrNThkNmxvbHFvYUpmTkUxWUp3UVVrdzlRZU9BZnJNUWpL?=
 =?utf-8?B?TVUxQnczUXBtU1pCZ1h6N1dGZXM3eHF2UDllbGRNdm1sUDN2MkZQaSsxVHFj?=
 =?utf-8?B?RWFIZWJKQzRyQjVOc2tGdk9CL09RUWFkd2lFTE9wYlJhdVJmZ3IzSCtkUkMv?=
 =?utf-8?B?TS9xbmFhUmZBOUJPMkFraGFCc203QWc2bDRaa1BHY0srUlZiUTdjakFEQ0o0?=
 =?utf-8?B?dlVrV2VsdXQvOStFUEZacmRnK3Y1b0RWSGpYME9iZU5mb2xodUZjeGx6bzRT?=
 =?utf-8?B?Mkl3MnI2SklIaCtVQThHUnl5WWU0ZWpnTnB0ZHNaR09pUGdSbzR6TkJnNldn?=
 =?utf-8?B?eUVaejBGcFg4WlYyYTFUdTB0MUJSemdsZ09vTFkxSHlOWFlMVkM2Y2pkK25r?=
 =?utf-8?B?Ym5KaXF6ZlhERUJ6RGE4enhuNVBEZFViYTFSOEZqYW9wend2dVUvMDNCOTVr?=
 =?utf-8?B?UER1U2dVTkxZWTQyVm03aTFzOHZvNmNWT0R0NzVXSDNKKy9hQnFVMFpjeGUz?=
 =?utf-8?B?eGpROC9CMjgwRTI0UFVoYXdjanlCamZRdUlWclVqaXQ4aXJPc2lsWGpUVWZR?=
 =?utf-8?B?bFhaOUZpeEo4VjdKSitmK1dBeklRem00VE94VGJwcXEyL1E3QU81TUtKbmxN?=
 =?utf-8?B?My9KN3ZpK05NUDJvY2cyZXdSYU9Zdjlnai83MDBxUFhST0RVbUFybWNwT3hB?=
 =?utf-8?B?MUJNSWQ2SzNKSUVIamVtT3hpWTFBa2tVaFhlTU4xMVhmc0JkR2dqMk5XN2hy?=
 =?utf-8?B?c0lHSGZZdlc0cjNrbmdoOVgvV1diSlJTYnNIUTNTVmhGT2xwVWJXWEI2YkJ2?=
 =?utf-8?B?MGtaWnJNak5WT2ZUTWRWSFZ4VzRGMHhkQzVzamVkTzYvdVFMSmFma25sNTEy?=
 =?utf-8?B?dlM4NE5PRDZzVW9mNW85ZlBKSzlaOHFCVkhucWMySVpEbW1oUGx2a3lJc3Ey?=
 =?utf-8?B?aUhlNjhtTlgwZkU3THE2WVF0S2NzaVlPcXJBZ2RlMWk2QUN1RmpPamlQSGxz?=
 =?utf-8?B?aWZBOERkS1BuN1AxQWUvQlhCRjFybC9XSWpGL2luWjdKWWhwaU5sWno4VGEx?=
 =?utf-8?B?a1ZWVDVFaHdFUG9xdGZpdHZPYW00RnlVU2xQR0xzNW5ybkNnS2lMZW5QTVJJ?=
 =?utf-8?B?UnVEeHdFN0lIaU54N2VCV0FYbkZYM254WmVFUnhwTXVnSTlFUTVPNkFlT1lW?=
 =?utf-8?B?RVQxSGNTejZWSUNRZEUxZHl1TmFvRTlDUjBKQk9NVVFyVWJOSEUxZk1qWnN2?=
 =?utf-8?B?QkNGR0E2N084V0VZcGNmaXBsaEcvZ3F6NlhpbStzSzhBZWorLzVQejU0VUNJ?=
 =?utf-8?B?dXg5S3h1eXViTW4xS29DWlRBaVhGd2R2WC8ybzBMR2Rua29WeU4vUjVxMlBw?=
 =?utf-8?B?aXc9PQ==?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfc264a6-20ef-4178-a839-08da74985b71
X-MS-Exchange-CrossTenant-AuthSource: DB7PR03MB4972.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 15:04:54.5466
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W6AcFjgVxl8ve+X10BbDauVhLAb6CErP4vxAgqoEux0JVUBB/FllSa42cl1T41klf7HjJGeWEUJw1pSjgRScQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB7601
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8/2/22 3:51 AM, Krzysztof Kozlowski wrote:
> On 01/08/2022 20:13, Sean Anderson wrote:
>> This silences warnings like
>> 
>> arch/arm64/boot/dts/freescale/fsl-lx2160a-honeycomb.dtb: ethernet@8: 'phys', 'sfp' do not match any of the regexes: 'pinctrl-[0-9]+'
>> 	From schema: Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml
>> 
>> Fixes: f978fe85b8d1 ("dpaa2-mac: configure the SerDes phy on a protocol change")
>> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> 
> Don't  we have phy-handle for this?

This is for serdes phys. See dtschema/schemas/phy/phy-consumer.yaml

--Sean
