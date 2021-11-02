Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10A6E442DB9
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 13:22:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229577AbhKBMZU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 08:25:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbhKBMZT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Nov 2021 08:25:19 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32E31C061714
        for <devicetree@vger.kernel.org>; Tue,  2 Nov 2021 05:22:45 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id j9so7149864qvm.10
        for <devicetree@vger.kernel.org>; Tue, 02 Nov 2021 05:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=524j3weIMUBYVohdC3QFfF1dIv9YteXIYBPPUPdtNZI=;
        b=gqgGeoKVcua9Eja33WGYMqhcVmZEluUj9WI0JxTO7JMhAdAoofYhm2DMUWOe17ogJR
         YDX/jP/LWDCq+gD2PsifYEkFXkAqj0TeWKjv8g6eL6UYjeUQ2IKoeMYqLuBZ42U5I4I0
         9YB2oOvhoBqvmDTHilv2hZdUT3u4Y+g1fFuYD5iKP41w6fXEFPbl5sF8HIK/+vQs53+v
         0hBOnuLTxg8XM4uvOOUvZEi5uUXE3Hs4IZPwaSGA5KLogHVkP//DzKiN2RrQd5AG2pyB
         u6hD3gNXIdU8EP/PVBGUbxmjidwtSM1TwsATBbtAriVFXAIbYgDbWGHxuaIa8AtPdR2j
         DpfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to;
        bh=524j3weIMUBYVohdC3QFfF1dIv9YteXIYBPPUPdtNZI=;
        b=NbFFOV7FSjL3UhsfkWl8qXUTtuyiIAXYM36dy7j6z6kuAV7xMftahbdPGimb4QtLON
         e17VgTJKe7bo+3MoEOidabn/fwAhAfvS5LnNCYEkCDhZ9KxraQPNMT4WJZC8v0eyCa/b
         blH+qg0CyOnVa3HAJkWwCLT7plviLCXyp4YgeUZsWy/nSi4qVGwk1Z6AZEmQ9uh0NCTG
         apBV+P916jV6uyHXc8IeV+HPQYYtBATRJ0SBJlVg1XHJbePha8fR7Zxy/YPMpyGZJ5+a
         Fm/WA9+WnA5fUcu1jXWDsAMrNL90IFOx9k6iunCZ8Hj6dJRwl1gvdypePkYUmYzhsvLH
         S+vQ==
X-Gm-Message-State: AOAM531N1T42zoTxs3dq+Q9mJCnFvU5q/YQc6a2j2xTAI7F8dwBPLm9r
        l5rJ1IANoeOHBKCTc8GtVA==
X-Google-Smtp-Source: ABdhPJwC+GW2Z14j8Ar7+l/yPNFCH4WawZMyhX5wmqOW3DdYy7QDet5X850by09ALefKzmA4gePHeQ==
X-Received: by 2002:a05:6214:2584:: with SMTP id fq4mr17116466qvb.53.1635855764249;
        Tue, 02 Nov 2021 05:22:44 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
        by smtp.gmail.com with ESMTPSA id i11sm48290qtq.44.2021.11.02.05.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 05:22:43 -0700 (PDT)
Sender: Corey Minyard <tcminyard@gmail.com>
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:b4e0:932d:f90c:fafb])
        by serve.minyard.net (Postfix) with ESMTPSA id C9A0B1800BA;
        Tue,  2 Nov 2021 12:22:42 +0000 (UTC)
Date:   Tue, 2 Nov 2021 07:22:41 -0500
From:   Corey Minyard <minyard@acm.org>
To:     Joel Stanley <joel@jms.id.au>
Cc:     Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
        Zev Weiss <zev@bewilderbeest.net>,
        Rob Herring <robh+dt@kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        openipmi-developer@lists.sourceforge.net
Subject: Re: [PATCH -next 0/4] Add LCLK control into Aspeed LPC sub drivers
Message-ID: <20211102122241.GK4667@minyard.net>
Reply-To: minyard@acm.org
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 01, 2021 at 11:36:38PM +0000, Joel Stanley wrote:
> On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
> >
> > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> >
> > Hello all,
> >
> > This series is for appliying below fix to all Aspped LPC sub drivers.
> > https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
> >
> > An LPC sub driver can be enabled without using the lpc-ctrl driver or it
> > can be registered ahead of lpc-ctrl depends on each system configuration and
> > this difference introduces that LPC can be enabled without heart beating of
> > LCLK so it causes improper handling on host interrupts when the host sends
> > interrupts in that time frame. Then kernel eventually forcibly disables the
> > interrupt with dumping stack and printing a 'nobody cared this irq' message
> > out.
> >
> > To prevent this issue, all LPC sub drivers should enable LCLK individually
> > so this patch adds clock control logic into the remaining Aspeed LPC sub
> > drivers.
> 
> Thanks for sending this out!
> 
> This will resolve a few of the issues we have in the issue tracker:
> 
> https://github.com/openbmc/linux/issues/210
> https://github.com/openbmc/linux/issues/130
> 
> The patches look good to me. I think you've just missed Corey's PR for
> v5.16, but I will stick them in the openbmc tree once they've had a
> review.

We can still get them in to 5.16 if it's important for that; this is a
bug fix, after all, and it's early.  I just need to know the urgency.

Get the Reviewed-by's in and add the bindings and I can get it into the
next tree for a bit, then I can submit.  We may be in rc1 by then, but
that's ok.

-corey

> 
> Cheers,
> 
> Joel
> 
> >
> > Please review this series.
> >
> > Thanks,
> > Jae
> >
> > Jae Hyun Yoo (4):
> >   ARM: dts: aspeed: add LCLK setting into LPC IBT node
> >   ipmi: bt: add clock control logic
> >   ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
> >   ipmi: kcs_bmc_aspeed: add clock control logic
> >
> >  arch/arm/boot/dts/aspeed-g4.dtsi   |  1 +
> >  arch/arm/boot/dts/aspeed-g5.dtsi   |  5 +++++
> >  arch/arm/boot/dts/aspeed-g6.dtsi   |  5 +++++
> >  drivers/char/ipmi/bt-bmc.c         | 24 ++++++++++++++++++++++-
> >  drivers/char/ipmi/kcs_bmc_aspeed.c | 31 ++++++++++++++++++++++++++----
> >  5 files changed, 61 insertions(+), 5 deletions(-)
> >
> > --
> > 2.25.1
> >
