Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D90884CAC72
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 18:49:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbiCBRuY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 12:50:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236917AbiCBRuY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 12:50:24 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F22EA2A246
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 09:49:40 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BADD2139F;
        Wed,  2 Mar 2022 09:49:40 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 292333F73D;
        Wed,  2 Mar 2022 09:49:39 -0800 (PST)
Message-ID: <9f9f5461-2a88-0aee-ca37-b8f30aacc2dd@arm.com>
Date:   Wed, 2 Mar 2022 17:49:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH v3] dt-bindings: mfd: rk808: Convert bindings to yaml
Content-Language: en-GB
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        lee.jones@linaro.org, heiko@sntech.de, zyw@rock-chips.com,
        zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220215211548.31940-1-macroalpha82@gmail.com>
 <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
 <YhfcxaaQgO7eDOXH@robh.at.kernel.org>
 <6ba1c897-a932-915e-1415-1bb685754305@arm.com>
 <20220302163611.GA12995@wintermute.localdomain>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220302163611.GA12995@wintermute.localdomain>
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

On 2022-03-02 16:36, Chris Morgan wrote:
> On Fri, Feb 25, 2022 at 10:44:55AM +0000, Robin Murphy wrote:
>> On 2022-02-24 19:30, Rob Herring wrote:
>> [...]
>>>>> +required:
>>>>> +  - compatible
>>>>> +  - reg
>>>>> +  - interrupts
>>>>> +  - "#clock-cells"
>>>>
>>>> Is this actually required (ditto elsewhere)? Technically it's only necessary
>>>> if there are any clock consumers targeting this node, so arguably it should
>>>> be the clock binding's responsibility to validate that.
>>>>
>>>> It wouldn't make much sense for a dedicated clock controller to omit
>>>> #clock-cells such that it couldn't have any consumers, but given that these
>>>> things are primarily PMICs I think it's reasonable to allow a board not to
>>>> care about the clocks at all if it doesn't use them. I know that the
>>>> original binding claimed it was required, but if we're already relaxing that
>>>> for RK805 here then we may as well relax it entirely.
>>>
>>> Fair enough. However, if the consumer could be in an overlay, then I
>>> think we want it to be required and not make the overlay add the
>>> property. Properties just appearing within nodes at runtime is likely
>>> not well supported in OSs.
>>
>> Ah yes, that's an angle I hadn't considered, and I reckon it clearly answers
>> my original question in the affirmative :)
>>
>> Indeed these clock outputs are often hooked up to SDIO WiFi modules, and I'm
>> sure I *have* seen boards which put such modules on pluggable daughterboards
>> in a manner which could reasonably use overlays, so in principle it does
>> seem like a realistic concern. I'm happy with setting a general principle
>> that if a clock output is exposed on a physical pin, then at the DTS level
>> we can't know for sure that it *won't* be consumed (even if the original
>> board design didn't intend it), therefore the device is always a potential
>> clock controller and "#clock-cells" should be required. In that case, the
>> consistency argument would fall the other way, to enforcing it for RK805 as
>> well.
> 
> Okay. So the existing point of contentions are:
> 
> 1) "#clock-cells" should always be required. This causes a few boards
> to fail to check properly, but I assume that can be easily remedied by
> adding the "#clock-cells" to the devicetree.
> 
> 2) The rk805, rk809, and rk817 only have a single clock-out. To
> workaround a quirk in the driver some boards have 2 clock-output-names.
> To fix the devicetree to accurately describe the hardware, the driver
> will have to be updated along with many boards with these PMICs.
> 
> 3) The rk808 has no vcc13 or vcc14 input, but at least 4 boards preport
> to use such a voltage input anyway.
> 
> Not a point of contention, but I need to add examples for the rk805,
> rk809, and rk818 which I will just pull from a popular devicetree.
> 
> I can solve the clock-cells issue by simply adding that to the correct
> devicetrees (though I have no devices to test those on I assume they
> should be benign changes?). Is that acceptable to fix that?
> 
> For the single clock out, I can't really fix it without updating the
> driver and modifying a large number of devicetrees. Should I just make
> it 1 min/2 max across all these YAML files and note for the rk805,
> rk809, and rk817 that there is only really one clock output?
> 
> What should I do for #3? I've checked the schematic for the Pinebook
> Pro (which is one of the 4 boards affected) and can confirm that
> VCC13 and VCC14 on these boards is literally just VCC1 and VCC2,
> respectively. I can't seem to find the schematics for the other 3
> boards affected though, but I assume it's something similar.
> 
> Let me know, I'd like to get this finalized so I can get the battery
> code for the rk817 charger pushed too.

In my opinion:

1) Yup, just fix the DTs. We're only adding a property where it would 
have to be anyway were there any consumers, so there's no risk of 
breakage, and the overlay support argument is a good one.

2) Make "clock-output-names" 2 items when "#clock-cells" = 1, or 1 item 
when "#clock-cells" = 0; allow the latter case for at least RK809 where 
it's in use already. Fixing the driver and DTs to converge all the 
single-clock-output chips consistently on the latter form can go on a 
to-do list somewhere.

3) Just fix the DTs. The properties aren't used, so they won't be 
missed. (FWIW it looks like those spurious names on RK808 pins 23 and 44 
probably originated from the original RK3399 reference design schematic)

How does that sound?

> Thank you very much for all your help.

And thank you for stepping up and persevering with such an annoyingly 
awkward binding conversion!

Robin.
