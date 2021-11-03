Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A81D9443AA1
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 01:54:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230155AbhKCA5I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 20:57:08 -0400
Received: from mga01.intel.com ([192.55.52.88]:4017 "EHLO mga01.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229804AbhKCA5I (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Nov 2021 20:57:08 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="255023256"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="255023256"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 17:54:32 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="583914590"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.209.55.177]) ([10.209.55.177])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 17:54:31 -0700
Message-ID: <63678f47-8b4a-1385-a755-bc7c2316ca0d@linux.intel.com>
Date:   Tue, 2 Nov 2021 17:54:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH -next 0/4] Add LCLK control into Aspeed LPC sub drivers
Content-Language: en-US
To:     Zev Weiss <zev@bewilderbeest.net>
Cc:     Joel Stanley <joel@jms.id.au>,
        Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Corey Minyard <minyard@acm.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        openipmi-developer@lists.sourceforge.net
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
 <YYHSHoELvKRI4Zh1@hatter.bewilderbeest.net>
 <d2a18e3b-cb02-37b5-cad8-45c3e8ff3bb4@linux.intel.com>
 <YYHYMKDD7hz15ceR@hatter.bewilderbeest.net>
From:   Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <YYHYMKDD7hz15ceR@hatter.bewilderbeest.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/2/2021 5:30 PM, Zev Weiss wrote:
> On Tue, Nov 02, 2021 at 05:17:30PM PDT, Jae Hyun Yoo wrote:
>> Hi Zev,
>>
>> On 11/2/2021 5:04 PM, Zev Weiss wrote:
>>> On Mon, Nov 01, 2021 at 04:36:38PM PDT, Joel Stanley wrote:
>>>> On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>>>>>
>>>>> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>>>
>>>>> Hello all,
>>>>>
>>>>> This series is for appliying below fix to all Aspped LPC sub drivers.
>>>>> https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/ 
>>>>>
>>>>>
>>>>>
>>>>> An LPC sub driver can be enabled without using the lpc-ctrl driver 
>>>>> or it
>>>>> can be registered ahead of lpc-ctrl depends on each system 
>>>>> configuration and
>>>>> this difference introduces that LPC can be enabled without heart 
>>>>> beating of
>>>>> LCLK so it causes improper handling on host interrupts when the 
>>>>> host sends
>>>>> interrupts in that time frame. Then kernel eventually forcibly 
>>>>> disables the
>>>>> interrupt with dumping stack and printing a 'nobody cared this irq' 
>>>>> message
>>>>> out.
>>>>>
>>>>> To prevent this issue, all LPC sub drivers should enable LCLK 
>>>>> individually
>>>>> so this patch adds clock control logic into the remaining Aspeed 
>>>>> LPC sub
>>>>> drivers.
>>>>
>>>> Thanks for sending this out!
>>>>
>>>> This will resolve a few of the issues we have in the issue tracker:
>>>>
>>>> https://github.com/openbmc/linux/issues/210
>>>> https://github.com/openbmc/linux/issues/130
>>>>
>>>> The patches look good to me. I think you've just missed Corey's PR for
>>>> v5.16, but I will stick them in the openbmc tree once they've had a
>>>> review.
>>>>
>>>
>>> Hi Jae,
>>>
>>> I tried this series out on the same in-progress OpenBMC port from 
>>> issue number 210 linked above and am still seeing problems (dmesg 
>>> pasted below).
>>>
>>> I cherry-picked commit f9241fe8b9652 ("ARM: dts: aspeed: Add uart 
>>> routing to device tree") from linux-next to allow the first patch to 
>>> apply cleanly; is there anything else I might be missing that'd be 
>>> needed to test the series properly?
>>
>> Looks like below dmesg shows an error from 'aspeed_lpc_snoop_probe'
>> which this series doesn't touch. Do you have below fix in your code
>> tree?
>>
>> https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/ 
>>
>>
>> Thanks,
>> Jae
>>
> 
> Yes, I've got that patch (commit 3f94cf1558), and the accompanying dts 
> update to add the clocks property to the lpc-snoop device (commit 
> d050d049f8).
> 
> However, while there is an aspeed_lpc_snoop_probe() backtrace there, 
> note that there's *also* one from aspeed_kcs_probe() further on 
> (starting at timestamp 3.263306).
> 
> 
> Zev
> 

Can you please test additional changes below?

Thanks,
Jae

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c 
b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 00706472cc4d..af03aea0f3ce 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -644,6 +644,17 @@ static int aspeed_kcs_probe(struct platform_device 
*pdev)
         if (rc)
                 goto err;

+       platform_set_drvdata(pdev, priv);
+
+       aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | 
KCS_BMC_EVENT_TYPE_OBE), 0);
+       aspeed_kcs_enable_channel(kcs_bmc, true);
+
+       rc = kcs_bmc_add_device(&priv->kcs_bmc);
+       if (rc) {
+               dev_warn(&pdev->dev, "Failed to register channel %d: 
%d\n", kcs_bmc->channel, rc);
+               goto err;
+       }
+
         /* Host to BMC IRQ */
         rc = aspeed_kcs_config_downstream_irq(kcs_bmc, pdev);
         if (rc)
@@ -658,17 +669,6 @@ static int aspeed_kcs_probe(struct platform_device 
*pdev)
                 priv->upstream_irq.mode = aspeed_kcs_irq_none;
         }

-       platform_set_drvdata(pdev, priv);
-
-       aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | 
KCS_BMC_EVENT_TYPE_OBE), 0);
-       aspeed_kcs_enable_channel(kcs_bmc, true);
-
-       rc = kcs_bmc_add_device(&priv->kcs_bmc);
-       if (rc) {
-               dev_warn(&pdev->dev, "Failed to register channel %d: 
%d\n", kcs_bmc->channel, rc);
-               goto err;
-       }
-
         dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n",
                         kcs_bmc->channel, addrs[0]);

diff --git a/drivers/soc/aspeed/aspeed-lpc-snoop.c 
b/drivers/soc/aspeed/aspeed-lpc-snoop.c
index eceeaf8dfbeb..044c8f6665b7 100644
--- a/drivers/soc/aspeed/aspeed-lpc-snoop.c
+++ b/drivers/soc/aspeed/aspeed-lpc-snoop.c
@@ -306,10 +306,6 @@ static int aspeed_lpc_snoop_probe(struct 
platform_device *pdev)
                 return rc;
         }

-       rc = aspeed_lpc_snoop_config_irq(lpc_snoop, pdev);
-       if (rc)
-               goto err;
-
         rc = aspeed_lpc_enable_snoop(lpc_snoop, dev, 0, port);
         if (rc)
                 goto err;
@@ -324,6 +320,10 @@ static int aspeed_lpc_snoop_probe(struct 
platform_device *pdev)
                 }
         }

+       rc = aspeed_lpc_snoop_config_irq(lpc_snoop, pdev);
+       if (rc)
+               goto err;
+
         return 0;

  err:
