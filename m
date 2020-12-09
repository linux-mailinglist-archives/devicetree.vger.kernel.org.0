Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA0652D49AB
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 20:01:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733050AbgLIS7v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 13:59:51 -0500
Received: from mail-dm6nam11on2049.outbound.protection.outlook.com ([40.107.223.49]:54336
        "EHLO NAM11-DM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1729345AbgLIS7v (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 9 Dec 2020 13:59:51 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XkO7hibfzZ/xF0kMHs43uVYaRnhTgXWuMlbhjhFeo05MIhVkG11LEtD8d9ybKGzzt5hgOT5cewt/RBGqfRKXIU6inGhqpOrksxuqs+rLSOCjdg8tqpHUgQ45Zn6pXyuZiwNwahCbKL4NfueLIiej3/sFnM1gZPLJGs9nkEG1LC0UPrpBmd/BogCsDGS08sYg9bK3Rmnt4H0E2bgNYqzfTbfNadBLs0/GdaMp3XwmNrurmjtisgIWZXomB5EsCXGD820AhVywVLaPgDkemFJddjIL1Pesh03YgNWIwjhi6Z+eoQpzbdpR+fxs56qZGT9kzkEvjBexfwjloUuxvf9LxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dG349WmVPinlLstIx/1AiN49GV/oz2itGNZSUOrqDHs=;
 b=QS3NX1AFZHoEnyordvF3/OL6pyOyPvc5D+lB9gfKSlrYDjPZfvMwXR/Nkl+Qk+X0h3f3olbekXVPFAS0EjdUGl2D+CcF6PAntNEqk31E7MMDSRR7ylOHnxat0rB0R9Msysw8cu5ir/HoFV2oPqqsCd67kjKRd464Totwgz5wvCeyQCMIwdegDfmkKiOSyCcGFyn2g6i6AU0/Cr6aoCOebuRpNuV8jX4m1QHSpnrCRHKi8aXiRRvZqynDmK8FJjc4vvMZfUsUUj0syUg5HsnEqyls7yxD5tAxDsfVpns2grRHsbhCRIJYZQoI5ykJUY1ezPcSLm0wRngzHCZeO3xPOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dG349WmVPinlLstIx/1AiN49GV/oz2itGNZSUOrqDHs=;
 b=Ne4i6FFHxzB99R6SRxlutD2MOqeIQnN33oa7FZbd5C3pIrTQ1H39inL0n4uK/yhzM0O7zNv9lg6OGf2vLCtf+PTFDGHpCsTS/VQiFKiBT+V98jI9X5k+rwA+7w8QKHskt815Q0n0K5obcJXgZlQOco4ZZG9I36wnRXc5yihIcuw=
Received: from CY4PR07CA0006.namprd07.prod.outlook.com (2603:10b6:903:165::16)
 by BYAPR02MB5303.namprd02.prod.outlook.com (2603:10b6:a03:6f::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.13; Wed, 9 Dec
 2020 18:58:58 +0000
Received: from CY1NAM02FT016.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:165:cafe::c9) by CY4PR07CA0006.outlook.office365.com
 (2603:10b6:903:165::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend
 Transport; Wed, 9 Dec 2020 18:58:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch01.xlnx.xilinx.com;
Received: from xsj-pvapexch01.xlnx.xilinx.com (149.199.62.198) by
 CY1NAM02FT016.mail.protection.outlook.com (10.152.75.164) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3654.12 via Frontend Transport; Wed, 9 Dec 2020 18:58:57 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 9 Dec 2020 10:58:56 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 9 Dec 2020 10:58:56 -0800
Envelope-to: michal.simek@xilinx.com,
 kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org,
 m.tretter@pengutronix.de,
 robh@kernel.org
Received: from [172.30.17.109] (port=60540)
        by smtp.xilinx.com with esmtp (Exim 4.90)
        (envelope-from <michal.simek@xilinx.com>)
        id 1kn4fw-0004jM-IJ; Wed, 09 Dec 2020 10:58:56 -0800
Subject: Re: [PATCH] dt-bindings: xlnx,vcu-settings: fix dt_binding_check
 warnings
To:     Rob Herring <robh@kernel.org>,
        Michael Tretter <m.tretter@pengutronix.de>
CC:     Michal Simek <michal.simek@xilinx.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <kernel@pengutronix.de>
References: <20201202090522.251607-1-m.tretter@pengutronix.de>
 <6029fb9a-bacb-1db0-294f-096323374535@xilinx.com>
 <20201203084804.GA21858@pengutronix.de>
 <20201209183455.GA708305@robh.at.kernel.org>
From:   Michal Simek <michal.simek@xilinx.com>
Message-ID: <3af6de09-9e3c-fee1-390a-dc13db0f20ba@xilinx.com>
Date:   Wed, 9 Dec 2020 19:58:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201209183455.GA708305@robh.at.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3d4161b-23a2-43e1-c333-08d89c747b74
X-MS-TrafficTypeDiagnostic: BYAPR02MB5303:
X-Microsoft-Antispam-PRVS: <BYAPR02MB5303C8F91B203BCFF219A7EFC6CC0@BYAPR02MB5303.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XTpd+N2yaadH6e4Sgn+c9F+h8BdHjEmy+/la2FgtMoxnQK0vsNIHfvS7cci7yBl0pLDzHL2UKNEhOv0GU8WahanvxFs9VH2MwFKLTnZUq6LcxqjmumoqxLANLiJ/dw93AbDqiMjGUFPs0YFQpJPqMbUL/yp9qOgylkuqTh/n8ML887ryCE5eLGtkPESolZMAlnUE+6dc4vEPzp3bjl2m75s2atsm43Rc+L1QGiKaFDZHXfJb5zj5RfeDsWY4PhMkfvfR9QA/KHvad32rCZ347cMBSoxf11uNQaOTsZv5/5v/0PEFSGdaiwsxGVzP4qQxX51KV3UHUYHf+xbkm6masyd2lJNAAyllKDMm+QQrovK223KJnm2WcIQmuWevSLMT6AFS7Nq3Ql3ah9Z9uEJOAbBcMFhtsRVOdV5QBmlyqLKjuaPNxbNbMdBYaYYz5iZceNSotvzuaSw2hyczzjHoHR+j8ZyQ8jJFtKeCWlrlXg49SScl5w/cWZzcHVSMYAxjBAp2phW+V7L1rjXiPRuE9w==
X-Forefront-Antispam-Report: CIP:149.199.62.198;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapexch01.xlnx.xilinx.com;PTR:unknown-62-198.xilinx.com;CAT:NONE;SFS:(4636009)(136003)(346002)(376002)(46966005)(966005)(426003)(82310400003)(8676002)(54906003)(110136005)(31686004)(83380400001)(4326008)(44832011)(47076004)(26005)(2906002)(36756003)(2616005)(70586007)(508600001)(70206006)(9786002)(8936002)(5660300002)(336012)(7636003)(356005)(186003)(31696002)(6666004)(50156003)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2020 18:58:57.3674
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a3d4161b-23a2-43e1-c333-08d89c747b74
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.62.198];Helo=[xsj-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: CY1NAM02FT016.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5303
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 09. 12. 20 19:34, Rob Herring wrote:
> On Thu, Dec 03, 2020 at 09:48:04AM +0100, Michael Tretter wrote:
>> On Thu, 03 Dec 2020 08:49:01 +0100, Michal Simek wrote:
>>> On 02. 12. 20 10:05, Michael Tretter wrote:
>>>> When running make dt_binding_check, the xlnx,vcu-settings binding
>>>> triggers the following two warnings:
>>>>
>>>> 	'additionalProperties' is a required property
>>>>
>>>> 	example-0: vcu@a0041000:reg:0: [0, 2684620800, 0, 4096] is too long
>>>>
>>>> Fix the binding and make the checker happy.
>>>>
>>>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
>>>> ---
>>>>
>>>> Hi,
>>>>
>>>> The xlnx,vcu-settings binding was reviewed [0] before the bot started to
>>>> run automated tests on the device tree bindings, but now produces some
>>>> warnings. The original patch that introduces the binding is still in
>>>> Michal's tree and I am not entirely sure how to handle it, but here is a
>>>> patch.
>>>>
>>>> Michael
>>>>
>>>> [0] https://lore.kernel.org/linux-arm-kernel/20200429213659.GA9051@bogus/
>>>> ---
>>>>  .../bindings/soc/xilinx/xlnx,vcu-settings.yaml    | 15 ++++++++++++---
>>>>  1 file changed, 12 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
>>>> index 378d0ced43c8..cb245f400287 100644
>>>> --- a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
>>>> +++ b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
>>>> @@ -26,9 +26,18 @@ required:
>>>>    - compatible
>>>>    - reg
>>>>  
>>>> +additionalProperties: false
>>>> +
>>>>  examples:
>>>>    - |
>>>> -    xlnx_vcu: vcu@a0041000 {
>>>> -          compatible = "xlnx,vcu-settings", "syscon";
>>>> -          reg = <0x0 0xa0041000 0x0 0x1000>;
>>>> +    fpga {
>>>> +        #address-cells = <2>;
>>>> +        #size-cells = <2>;
>>>> +
>>>> +        xlnx_vcu: vcu@a0041000 {
>>>> +            compatible = "xlnx,vcu-settings", "syscon";
>>>> +            reg = <0x0 0xa0041000 0x0 0x1000>;
>>>> +        };
>>>
>>> IIRC we had been discussing this recently and Rob wanted to have just
>>> 1/1 mapping here.
>>>
>>> Take a look at 0db958b689ca9.
>>
>> Thanks for the pointer.
>>
>> Rob: Is there some kind of rule, when to use a 1/1 mapping and when to add a
>> bus with more cells? I still see several examples that add a bus with 2 cells.
>> I assume that they more or less legacy, but I didn't find any discussion going
>> beyond the commit description of 0db958b689ca9, which "just" fixes the
>> warnings.
>>
>> I will send a v2, but I'd like to understand the rationale for having the 1/1
>> mapping first.
> 
> Simplifies the example is all.
> 
> This one is fine as-is.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

I remember that we have been fixing that 2:2 mapping to 1:1 in past.

And simplification in this case would be
- reg = <0x0 0xa0041000 0x0 0x1000>;
+ reg = <0xa0041000 0x1000>;

That's why I would like to know what we should be asking people to do.
Or is it fine because it is the part of fpga node?

Thanks,
Michal



