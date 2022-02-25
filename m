Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4DC74C42AB
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 11:45:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239587AbiBYKpd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 05:45:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236827AbiBYKpd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 05:45:33 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5F20C1F6368
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 02:45:01 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C47D106F;
        Fri, 25 Feb 2022 02:45:01 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F2A03F70D;
        Fri, 25 Feb 2022 02:44:59 -0800 (PST)
Message-ID: <6ba1c897-a932-915e-1415-1bb685754305@arm.com>
Date:   Fri, 25 Feb 2022 10:44:55 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH v3] dt-bindings: mfd: rk808: Convert bindings to yaml
Content-Language: en-GB
To:     Rob Herring <robh@kernel.org>
Cc:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
        lee.jones@linaro.org, heiko@sntech.de, zyw@rock-chips.com,
        zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220215211548.31940-1-macroalpha82@gmail.com>
 <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
 <YhfcxaaQgO7eDOXH@robh.at.kernel.org>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <YhfcxaaQgO7eDOXH@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-02-24 19:30, Rob Herring wrote:
[...]
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - interrupts
>>> +  - "#clock-cells"
>>
>> Is this actually required (ditto elsewhere)? Technically it's only necessary
>> if there are any clock consumers targeting this node, so arguably it should
>> be the clock binding's responsibility to validate that.
>>
>> It wouldn't make much sense for a dedicated clock controller to omit
>> #clock-cells such that it couldn't have any consumers, but given that these
>> things are primarily PMICs I think it's reasonable to allow a board not to
>> care about the clocks at all if it doesn't use them. I know that the
>> original binding claimed it was required, but if we're already relaxing that
>> for RK805 here then we may as well relax it entirely.
> 
> Fair enough. However, if the consumer could be in an overlay, then I
> think we want it to be required and not make the overlay add the
> property. Properties just appearing within nodes at runtime is likely
> not well supported in OSs.

Ah yes, that's an angle I hadn't considered, and I reckon it clearly 
answers my original question in the affirmative :)

Indeed these clock outputs are often hooked up to SDIO WiFi modules, and 
I'm sure I *have* seen boards which put such modules on pluggable 
daughterboards in a manner which could reasonably use overlays, so in 
principle it does seem like a realistic concern. I'm happy with setting 
a general principle that if a clock output is exposed on a physical pin, 
then at the DTS level we can't know for sure that it *won't* be consumed 
(even if the original board design didn't intend it), therefore the 
device is always a potential clock controller and "#clock-cells" should 
be required. In that case, the consistency argument would fall the other 
way, to enforcing it for RK805 as well.

Cheers,
Robin.
