Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 072051DAAB7
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2020 08:39:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726503AbgETGjk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 May 2020 02:39:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726475AbgETGjj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 May 2020 02:39:39 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86564C05BD43
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 23:39:39 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id i15so1876749wrx.10
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 23:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=t0COEyXj5D7NvkjtdvydID9BlBfxGe8of0Dfo1AtG48=;
        b=JNEE1o6yhLVdcuKXhiGY+WKqOeJP/cguKffC8RXamxJeYUzNWMSAf5svkdHabJt3X2
         fQ/ibhR69Q/0NTu4DHD1BhZyV7yp+1jx/ogls2VBx5Anqks+AxyaB+uFdCiAWepuXPml
         fU++yx8fB9HPa9iEI3CLdd7jRQ8FEfbiI9/EAAJzPFP8dR3c/XRJncHAWqD0LnIOzUZh
         U1ES+pAUkLOyI1r5UuXphntFHQOmYJ4LYw9cTLf2lsrZDPH1C0w9p4dv82Isr1hUoaU+
         xcHPLrBKE0qyoZ45tbz1tXRA7gkPXpD3oBKkI2k0xxQrJ4CHs/8EbN1fojDjeTAKR2lR
         mqcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=t0COEyXj5D7NvkjtdvydID9BlBfxGe8of0Dfo1AtG48=;
        b=AdoHIaw9XhHHEkJgKrVR3Dn5pUPfRc/7okpWpnE9O678OJgs3xSSQETRsaI2/QinNH
         E8U09gOYSDChaZHWTyozJj/YWV0CvDHtmdCFY9t8jIqhXGbyE56EwhjasadFRFQdjZtM
         6XXSDy9mSG76vc1XHrlh/dWyMaXPcG+bNTQ7VNtaDnGttdT3mvQii78cCwCW0r/4s+Sc
         DyvMFbeNcrpVmr7M98kt55IEsNf6h7p77vFxiYI4S7Zt9GCMWNkWGBKJX5NEs1vFqWtV
         RFy1R5XSsMNzZaILVlOVvf5C9SPLg/8ZJhW0OvQH+O9ihpzG0i0EAK/Yl0RFkCt3XR0f
         vsTg==
X-Gm-Message-State: AOAM531eTK1+qtIXpRxPGZVe4qmw6uN4J8j5/Rqwpsq328TbUsKstdEK
        cDeIiYeXRO7khzsvR/2mo1xZrgu6thY=
X-Google-Smtp-Source: ABdhPJz10hiF6TxXkTZa5JarAelnWM1tRH1Rh9uBwIjHWV9cX2CCPggm62zNbl3YzgDThSkN+F/BhA==
X-Received: by 2002:a5d:43d1:: with SMTP id v17mr2579195wrr.282.1589956777948;
        Tue, 19 May 2020 23:39:37 -0700 (PDT)
Received: from dell ([95.149.164.102])
        by smtp.gmail.com with ESMTPSA id z132sm2217692wmc.29.2020.05.19.23.39.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 23:39:37 -0700 (PDT)
Date:   Wed, 20 May 2020 07:39:35 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     devicetree@vger.kernel.org,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
        David Collins <collinsd@codeaurora.org>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] mfd: Introduce QTI I2C PMIC controller
Message-ID: <20200520063935.GZ271301@dell>
References: <cover.1588115326.git.gurus@codeaurora.org>
 <5644dea146f8b49a5b827c56392ff916bfb343e9.1588115326.git.gurus@codeaurora.org>
 <20200429075010.GX3559@dell>
 <20200501011319.GA28441@codeaurora.org>
 <20200515104520.GK271301@dell>
 <20200519185757.GA13992@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200519185757.GA13992@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 19 May 2020, Guru Das Srinagesh wrote:

> On Fri, May 15, 2020 at 11:45:20AM +0100, Lee Jones wrote:
> > On Thu, 30 Apr 2020, Guru Das Srinagesh wrote:
> > 
> > > On Wed, Apr 29, 2020 at 08:50:10AM +0100, Lee Jones wrote:
> > > > On Tue, 28 Apr 2020, Guru Das Srinagesh wrote:
> > > > 
> > > > > The Qualcomm Technologies, Inc. I2C PMIC Controller is used by
> > > > > multi-function PMIC devices which communicate over the I2C bus.  The
> > > > > controller enumerates all child nodes as platform devices, and
> > > > > instantiates a regmap interface for them to communicate over the I2C
> > > > > bus.
> > > > > 
> > > > > The controller also controls interrupts for all of the children platform
> > > > > devices.  The controller handles the summary interrupt by deciphering
> > > > > which peripheral triggered the interrupt, and which of the peripheral
> > > > > interrupts were triggered.  Finally, it calls the interrupt handlers for
> > > > > each of the virtual interrupts that were registered.
> > > > > 
> > > > > Nicholas Troast is the original author of this driver.
> > > > > 
> > > > > Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> > > > > ---
> > > > >  drivers/mfd/Kconfig         |  11 +
> > > > >  drivers/mfd/Makefile        |   1 +
> > > > >  drivers/mfd/qcom-i2c-pmic.c | 737 ++++++++++++++++++++++++++++++++++++++++++++
> > > > 
> > > > The vast majority of this driver deals with IRQ handling.  Why can't
> > > > this be split out into its own IRQ Chip driver and moved to
> > > > drivers/irqchip?
> > > 
> > > There appear to be quite a few in-tree MFD drivers that register IRQ
> > > controllers, like this driver does:
> > > 
> > > $ grep --exclude-dir=.git -rnE "irq_domain_(add|create).+\(" drivers/mfd | wc -l
> > > 23
> > > 
> > > As a further example, drivers/mfd/stpmic1.c closely resembles this
> > > driver in that it uses both devm_regmap_add_irq_chip() as well as
> > > devm_of_platform_populate().
> > > 
> > > As such, it seems like this driver is in line with some of the
> > > architectural choices that have been accepted in already-merged drivers.
> > > Could you please elaborate on your concerns?
> > 
> > It is true that *basic* IRQ domain support has been added to these
> > drivers in the past.  However, IMHO the support added to this driver
> > goes beyond those realms such that it would justify a driver of its
> > own.
> 
> I am exploring an option to see if the regmap-irq APIs may be used in
> this driver, similar to stpmic1.c. Just to let you know, it might be a
> few days before I am able to post my next patchset as I'll have to make
> the necessary changes and test them out first.

Take your time.

The next release is due imminently, so you have as long as you need.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
