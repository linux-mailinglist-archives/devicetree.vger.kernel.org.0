Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EB94443331
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 17:39:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234659AbhKBQmO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 12:42:14 -0400
Received: from mga06.intel.com ([134.134.136.31]:16209 "EHLO mga06.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230297AbhKBQmL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Nov 2021 12:42:11 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="292150604"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="292150604"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 09:38:29 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="583667612"
Received: from nlibermx-mobl.amr.corp.intel.com (HELO [10.209.55.177]) ([10.209.55.177])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 09:38:25 -0700
Message-ID: <3ad1f139-1951-b99e-3df0-4a34a2044809@linux.intel.com>
Date:   Tue, 2 Nov 2021 09:38:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH -next 0/4] Add LCLK control into Aspeed LPC sub drivers
Content-Language: en-US
To:     minyard@acm.org, Joel Stanley <joel@jms.id.au>
Cc:     Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
        Zev Weiss <zev@bewilderbeest.net>,
        Rob Herring <robh+dt@kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        openipmi-developer@lists.sourceforge.net
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
 <20211102122241.GK4667@minyard.net>
From:   Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <20211102122241.GK4667@minyard.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/2/2021 5:22 AM, Corey Minyard wrote:
> On Mon, Nov 01, 2021 at 11:36:38PM +0000, Joel Stanley wrote:
>> On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>>>
>>> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>
>>> Hello all,
>>>
>>> This series is for appliying below fix to all Aspped LPC sub drivers.
>>> https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
>>>
>>> An LPC sub driver can be enabled without using the lpc-ctrl driver or it
>>> can be registered ahead of lpc-ctrl depends on each system configuration and
>>> this difference introduces that LPC can be enabled without heart beating of
>>> LCLK so it causes improper handling on host interrupts when the host sends
>>> interrupts in that time frame. Then kernel eventually forcibly disables the
>>> interrupt with dumping stack and printing a 'nobody cared this irq' message
>>> out.
>>>
>>> To prevent this issue, all LPC sub drivers should enable LCLK individually
>>> so this patch adds clock control logic into the remaining Aspeed LPC sub
>>> drivers.
>>
>> Thanks for sending this out!
>>
>> This will resolve a few of the issues we have in the issue tracker:
>>
>> https://github.com/openbmc/linux/issues/210
>> https://github.com/openbmc/linux/issues/130
>>
>> The patches look good to me. I think you've just missed Corey's PR for
>> v5.16, but I will stick them in the openbmc tree once they've had a
>> review.
> 
> We can still get them in to 5.16 if it's important for that; this is a
> bug fix, after all, and it's early.  I just need to know the urgency.
> 
> Get the Reviewed-by's in and add the bindings and I can get it into the
> next tree for a bit, then I can submit.  We may be in rc1 by then, but
> that's ok.

Thanks Corey! I'll submit v2 soon.

Jae

> 
> -corey
> 
>>
>> Cheers,
>>
>> Joel
>>
>>>
>>> Please review this series.
>>>
>>> Thanks,
>>> Jae
>>>
>>> Jae Hyun Yoo (4):
>>>    ARM: dts: aspeed: add LCLK setting into LPC IBT node
>>>    ipmi: bt: add clock control logic
>>>    ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
>>>    ipmi: kcs_bmc_aspeed: add clock control logic
>>>
>>>   arch/arm/boot/dts/aspeed-g4.dtsi   |  1 +
>>>   arch/arm/boot/dts/aspeed-g5.dtsi   |  5 +++++
>>>   arch/arm/boot/dts/aspeed-g6.dtsi   |  5 +++++
>>>   drivers/char/ipmi/bt-bmc.c         | 24 ++++++++++++++++++++++-
>>>   drivers/char/ipmi/kcs_bmc_aspeed.c | 31 ++++++++++++++++++++++++++----
>>>   5 files changed, 61 insertions(+), 5 deletions(-)
>>>
>>> --
>>> 2.25.1
>>>
