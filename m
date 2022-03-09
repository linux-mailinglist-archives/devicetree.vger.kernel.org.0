Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B53214D2EB0
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 13:06:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232638AbiCIMHl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 07:07:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232635AbiCIMHl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 07:07:41 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CEBDA17227C
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 04:06:41 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C0ED1688;
        Wed,  9 Mar 2022 04:06:41 -0800 (PST)
Received: from [10.57.41.254] (unknown [10.57.41.254])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 86B123FA4D;
        Wed,  9 Mar 2022 04:06:38 -0800 (PST)
Message-ID: <8b902216-fd82-fb2c-1849-d613caa0a763@arm.com>
Date:   Wed, 9 Mar 2022 12:06:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-GB
To:     "elaine.zhang" <zhangqing@rock-chips.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
        Dmitry Osipenko <dmitry.osipenko@collabora.com>,
        =?UTF-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
        huangtao <huangtao@rock-chips.com>,
        devicetree <devicetree@vger.kernel.org>,
        =?UTF-8?B?5pON55Ge5p2w?= <algea.cao@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        pgwipeout <pgwipeout@gmail.com>, hjc <hjc@rock-chips.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        =?UTF-8?B?5p2o5Yev?= <Kever.yang@rock-chips.com>,
        linux-rockchip <linux-rockchip@lists.infradead.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel <kernel@pengutronix.de>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
References: <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
 <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
 <20220225131154.GE19585@pengutronix.de>
 <20220228141921.GN19585@pengutronix.de>
 <5184ecf2-8734-3121-cbbc-5dcfcf0d02f8@arm.com>
 <20220302112528.GV19585@pengutronix.de>
 <20220304142235.GL22780@pengutronix.de>
 <9ea0134e-aac7-60e1-5c58-ae31b4e1c422@collabora.com>
 <035f2dfd-bf35-abca-32bf-2be85cc88f8a@rock-chips.com>
 <20220309094139198367142@rock-chips.com>
 <20220309081810.GH405@pengutronix.de>
 <206d079d-5591-984d-cccc-dc5baa3db249@rock-chips.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <206d079d-5591-984d-cccc-dc5baa3db249@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-03-09 08:37, elaine.zhang wrote:
> hi,
> 
> 
> 在 2022/3/9 下午4:18, Sascha Hauer 写道:
>> Hi Elaine,
>>
>> On Wed, Mar 09, 2022 at 09:41:39AM +0800, zhangqing@rock-chips.com wrote:
>>>     hi，all：
>>>     Let me explain the clock dependency：
>>>     From the clock tree, pclk_vo0 and hclk_vo0 are completely 
>>> independent
>>>     clocks with different parent clocks and different clock 
>>> frequencies。
>>>     But the niu path is :
>>>     pclk_vo is dependent on hclk_vo, and the pclk_vo niu goes 
>>> through  hclk_vo
>>>     niu.
>> Thanks, this is the information we are looking for. What is "NIU" btw?
>> I think this is even documented in the Reference Manual. With the right
>> pointer I just found:
> 
> The NIU (native interface unit)
> 
> You can see 2.8.6(NIU Clock gating reliance) in TRM.
> 
>>
>>> A part of niu clocks have a dependence on another niu clock in order to
>>> sharing the internal bus. When these clocks are in use, another niu
>>> clock must be opened, and cannot be gated.  These clocks and the special
>>> clock on which they are relied are as following:
>>>
>>> Clocks which have dependency     The clock which can not be gated
>>> -----------------------------------------------------------------
>>> ...
>>> pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
>>> ...
> 
> Yeah, the dependency is this.
> 
> It may be not very detailed, I don't have permission to publish detailed 
> NIU designs.
> 
>>
>>
>>>     The clock tree and NIU bus paths are designed independently
>>>     So there are three solutions to this problem:
>>>     1. DTS adds a reference to Hclk while referencing Pclk.
>>>     2, The dependent clock is always on, such as HCLK_VO0, but this 
>>> is not
>>>     friendly for the system power.
>>>     3. Create a non-clock-tree reference. Clk-link, for example, we 
>>> have an
>>>     implementation in our internal branch, but Upstream is not sure 
>>> how to
>>>     push it.
>> I thought about something similar. That would help us here and on i.MX
>> we have a similar situation: We have one bit that switches multiple
>> clocks. That as well cannot be designed properly in the clock framework
>> currently, but could be modelled with a concept of linked clocks.
>>
>> Doing this sounds like quite a bit of work and discussion though, I
>> don't really like having this as a dependency to mainline the VOP2
>> driver. I vote for 1. in that case, we could still ignore the hclk in
>> dts later when we have linked clocks.

OK so just to clarify, the issue is not just that the upstream clock 
driver doesn't currently model the NIU clocks, but that even if it did, 
it would still need to implement some new multi-parent clock type to 
manage the internal dependency? That's fair enough - I do think that 
improving the clock driver would be the best long-term goal, but for the 
scope of this series, having an interim workaround does seem more 
reasonable now that we understand *why* we need it.

Thanks,
Robin.
