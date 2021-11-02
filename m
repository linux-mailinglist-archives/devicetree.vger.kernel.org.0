Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2F86443399
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 17:46:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234662AbhKBQtJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 12:49:09 -0400
Received: from mga09.intel.com ([134.134.136.24]:5710 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232720AbhKBQrq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Nov 2021 12:47:46 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="231168592"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="231168592"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 09:35:35 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="583666391"
Received: from nlibermx-mobl.amr.corp.intel.com (HELO [10.209.55.177]) ([10.209.55.177])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 09:35:32 -0700
Message-ID: <edaeb540-aa31-d143-4320-cb2a73f0070f@linux.intel.com>
Date:   Tue, 2 Nov 2021 09:35:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH -next 4/4] ipmi: kcs_bmc_aspeed: add clock control logic
Content-Language: en-US
To:     Joel Stanley <joel@jms.id.au>,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>
Cc:     "jae.hyun.yoo@intel.com" <jae.hyun.yoo@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Corey Minyard <minyard@acm.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
        "openipmi-developer@lists.sourceforge.net" 
        <openipmi-developer@lists.sourceforge.net>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Jenmin Yuan <jenmin_yuan@aspeedtech.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-5-jae.hyun.yoo@intel.com>
 <HK0PR06MB3779F8E273396ED805EE5D81918B9@HK0PR06MB3779.apcprd06.prod.outlook.com>
 <CACPK8XesLdb+Cbi3ZYrOahRHbXQi3L=cQXax=RV2=PrjiPQBew@mail.gmail.com>
From:   Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <CACPK8XesLdb+Cbi3ZYrOahRHbXQi3L=cQXax=RV2=PrjiPQBew@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/1/2021 8:28 PM, Joel Stanley wrote:
> On Tue, 2 Nov 2021 at 03:16, ChiaWei Wang <chiawei_wang@aspeedtech.com> wrote:
>>
>> Hi Jae,
>>
>>> From: linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org> On
>>>
>>> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>
>>> If LPC KCS driver is registered ahead of lpc-ctrl module, LPC KCS block will be
>>> enabled without heart beating of LCLK until lpc-ctrl enables the LCLK. This
>>> issue causes improper handling on host interrupts when the host sends
>>> interrupts in that time frame.
>>> Then kernel eventually forcibly disables the interrupt with dumping stack and
>>> printing a 'nobody cared this irq' message out.
>>>
>>> To prevent this issue, all LPC sub drivers should enable LCLK individually so this
>>> patch adds clock control logic into the LPC KCS driver.
>>
>> Have all LPC sub drivers could result in entire LPC block down if any of them disables the clock (e.g. driver unload).
>> The LPC devices such as SIO can be used before kernel booting, even without any BMC firmware.
>> Thereby, we recommend to make LCLK critical or guarded by protected clock instead of having all LPC sub drivers hold the LCLK control.
>>
>> The previous discussion for your reference:
>> https://lkml.org/lkml/2020/9/28/153
> 
> Please read the entire thread. The conclusion:
> 
> https://lore.kernel.org/all/CACPK8XdBmkhZ8mcSFmDAFV8k7Qj7ajBL8TVKfK8c+5aneUMHZw@mail.gmail.com/
> 
> That is, for the devices that have a driver loaded can enable the
> clock. When they are unloaded, they will reduce the reference count
> until the last driver is unloaded. eg:
> 
> https://elixir.bootlin.com/linux/latest/source/drivers/clk/clk.c#L945
> 
> There was another fork to the thread, where we suggested that a
> protected clocks binding could be added:
> 
> https://lore.kernel.org/all/160269577311.884498.8429245140509326318@swboyd.mtv.corp.google.com/
> 
> If you wish to use this mechanism for eg. SIO clocks, then I encourage
> Aspeed to submit a patch to do that.

We are revisiting the aged discussion. Thanks for bringing it back.

I agree with Joel that a clock should be enabled only on systems that
need the clock actually so it should be configurable by a device driver
or through device tree setting, not by the static setting in
clk-ast2600.c code. So that's the reason why I stopped upstreaming below
change for making BCLK as a critical clock.

https://www.spinics.net/lists/linux-clk/msg44836.html

Instead, I submitted these two changes to make it configurable through
device tree setting.

https://lists.ozlabs.org/pipermail/linux-aspeed/2020-January/003394.html
https://lists.ozlabs.org/pipermail/linux-aspeed/2020-January/003339.html

But these were not accepted too.

And recently, Samuel introduced a better and more generic way.

https://lore.kernel.org/all/20200903040015.5627-2-samuel@sholland.org/

But it's not accepted yet either.


Chiawei,

Please refine the mechanism and submit a change to make SIO clocks
configurable through device tree setting. I believe that we can keep
this patch series even with the change, or it can be modified and
adjusted if needed after the SIO clocks fix is accepted.

Thanks,
Jae
