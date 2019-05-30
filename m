Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D93642FA9E
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2019 13:01:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726541AbfE3LBy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 07:01:54 -0400
Received: from foss.arm.com ([217.140.101.70]:34342 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726462AbfE3LBx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 May 2019 07:01:53 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D174374;
        Thu, 30 May 2019 04:01:53 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2538E3F5AF;
        Thu, 30 May 2019 04:01:52 -0700 (PDT)
Date:   Thu, 30 May 2019 12:01:45 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] arm: dts: vexpress-v2p-ca15_a7: disable NOR flash node
 by default
Message-ID: <20190530110145.GA20028@e107155-lin>
References: <20190530091139.11643-1-sudeep.holla@arm.com>
 <CACRpkdZZkfRPTH1h1EOC=YWt7tdqbOp3hpfFou8thsUf8_EqSA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdZZkfRPTH1h1EOC=YWt7tdqbOp3hpfFou8thsUf8_EqSA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 30, 2019 at 12:50:12PM +0200, Linus Walleij wrote:
> On Thu, May 30, 2019 at 11:11 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> 
> > Accessing the NOR flash memory from the kernel will disrupt CPU sleep/
> > idles states and CPU hotplugging. We need to disable this DT node by
> > default. Setups that want to access the flash can modify this entry to
> > enable the flash again but also ensuring to disable CPU idle states and
> > CPU hotplug.
> >
> > The platform firmware assumes the flash is always in read mode while
> > Linux kernel driver leaves NOR flash in "read id" mode after
> > initialization. If it gets used actively, it can be in some other state.
> >
> > So far we had not seen this issue as the NOR flash drivers in kernel
> > were not enabled by default. However it was enable in multi_v7 config by
> > Commit 5f068190cc10 ("ARM: multi_v7_defconfig: Enable support for CFI NOR FLASH")
> >
> > So, let's mark the NOR flash disabled so that the platform can boot
> > again. This based on:
> > Commit 980bbff018f6 ("ARM64: juno: disable NOR flash node by default")
> >
> > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>

Thanks.

> It's a bit sad that this cannot be easily fixed (I don't know if it can even
> be fixed with firmware updates?), it's kind of useful to be able to
> update the flash from within Linux, as that mimics what pretty much
> every IoT device (such as routers) is doing and would be nince for
> an OpenWrt port.
>

IMO, it issue with partitioning of the system. Basically these traditional
NOR flash don't support partitions at hardware level so that one accessed
by firmware/secure side is protected from another accessed from non-secure.

I like the eMMC boot partitions in that ways as these are hardware
partitions and the device state is separate for these.

Also, ideally firmware/secure side should just restrict themselves to
Secure ROM, but as a record we consistently ensure firmware on SROM is
busted and use non-secure ROM/NOR Flash as bypass :) which then makes
it tricky to deal with such scenarios in Linux. Hope we fill have some
system with everything working *one day* :D

--
Regards,
Sudeep
