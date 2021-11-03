Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA255443A66
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 01:30:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231248AbhKCAdS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 20:33:18 -0400
Received: from thorn.bewilderbeest.net ([71.19.156.171]:50131 "EHLO
        thorn.bewilderbeest.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229804AbhKCAdS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Nov 2021 20:33:18 -0400
Received: from hatter.bewilderbeest.net (97-113-240-219.tukw.qwest.net [97.113.240.219])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: zev)
        by thorn.bewilderbeest.net (Postfix) with ESMTPSA id 20532285;
        Tue,  2 Nov 2021 17:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
        s=thorn; t=1635899442;
        bh=kutB5SU1qk86Qex7r3FP2m75aK+dhC3RMcn7DHixw+E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Zkhlc/FaWAkQyLIJg853zWURFEacyHX+bXvwg92ZOMofVt1ZhJv14RF/o90RnUUxz
         C4nbnmGxNItoxDCuGl+3bLA7t2YokPFsFLmt32eLpsC5sntJcwkw3qZKPE6LPNp7vV
         ekW2ZPuXG2iPXYd4cMNY4//hAiaxo8S1HXI8fXcE=
Date:   Tue, 2 Nov 2021 17:30:40 -0700
From:   Zev Weiss <zev@bewilderbeest.net>
To:     Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
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
Subject: Re: [PATCH -next 0/4] Add LCLK control into Aspeed LPC sub drivers
Message-ID: <YYHYMKDD7hz15ceR@hatter.bewilderbeest.net>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
 <YYHSHoELvKRI4Zh1@hatter.bewilderbeest.net>
 <d2a18e3b-cb02-37b5-cad8-45c3e8ff3bb4@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <d2a18e3b-cb02-37b5-cad8-45c3e8ff3bb4@linux.intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 02, 2021 at 05:17:30PM PDT, Jae Hyun Yoo wrote:
>Hi Zev,
>
>On 11/2/2021 5:04 PM, Zev Weiss wrote:
>>On Mon, Nov 01, 2021 at 04:36:38PM PDT, Joel Stanley wrote:
>>>On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>>>>
>>>>From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>>
>>>>Hello all,
>>>>
>>>>This series is for appliying below fix to all Aspped LPC sub drivers.
>>>>https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
>>>>
>>>>
>>>>An LPC sub driver can be enabled without using the lpc-ctrl driver or it
>>>>can be registered ahead of lpc-ctrl depends on each system 
>>>>configuration and
>>>>this difference introduces that LPC can be enabled without heart 
>>>>beating of
>>>>LCLK so it causes improper handling on host interrupts when the 
>>>>host sends
>>>>interrupts in that time frame. Then kernel eventually forcibly 
>>>>disables the
>>>>interrupt with dumping stack and printing a 'nobody cared this 
>>>>irq' message
>>>>out.
>>>>
>>>>To prevent this issue, all LPC sub drivers should enable LCLK 
>>>>individually
>>>>so this patch adds clock control logic into the remaining Aspeed LPC sub
>>>>drivers.
>>>
>>>Thanks for sending this out!
>>>
>>>This will resolve a few of the issues we have in the issue tracker:
>>>
>>>https://github.com/openbmc/linux/issues/210
>>>https://github.com/openbmc/linux/issues/130
>>>
>>>The patches look good to me. I think you've just missed Corey's PR for
>>>v5.16, but I will stick them in the openbmc tree once they've had a
>>>review.
>>>
>>
>>Hi Jae,
>>
>>I tried this series out on the same in-progress OpenBMC port from 
>>issue number 210 linked above and am still seeing problems (dmesg 
>>pasted below).
>>
>>I cherry-picked commit f9241fe8b9652 ("ARM: dts: aspeed: Add uart 
>>routing to device tree") from linux-next to allow the first patch to 
>>apply cleanly; is there anything else I might be missing that'd be 
>>needed to test the series properly?
>
>Looks like below dmesg shows an error from 'aspeed_lpc_snoop_probe'
>which this series doesn't touch. Do you have below fix in your code
>tree?
>
>https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
>
>Thanks,
>Jae
>

Yes, I've got that patch (commit 3f94cf1558), and the accompanying dts 
update to add the clocks property to the lpc-snoop device (commit 
d050d049f8).

However, while there is an aspeed_lpc_snoop_probe() backtrace there, 
note that there's *also* one from aspeed_kcs_probe() further on 
(starting at timestamp 3.263306).


Zev

