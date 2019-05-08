Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 91D1E17D8D
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 17:53:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727041AbfEHPx2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 11:53:28 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:45954 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726506AbfEHPx2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 11:53:28 -0400
Received: by mail-pl1-f193.google.com with SMTP id a5so5184896pls.12
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 08:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=gGXsTdjP+fUkiebykwxfC5FGbwspwxsc8Wncr6AUPyY=;
        b=rWn4EYCTFLw/NYEbH3zTIHY05Mw2dmGSbk1wDnkD2WV8sojqKU2YeSX6UXOOJfv7Bv
         gmjHPd+J7L0/jiRu0/nePahsE5CW82P52d+8kH6lQp37LMFq96SfZAxOCHL0d6yRK+Qs
         0ThWTG6sCpJuAlPcDOt9cguqK+KW4dKZSBgqoz03La9n+HR5ckQZHJH/VOXX1wnAomZM
         8F0oZktTRQtnAHuM9Yu6m5t+Ab0yS3bs+0/JHQlIr+jALD7NUAlBcQp8fsZPV4TPT9v3
         hCVknGkaAvfRIHYSZOBRVmutr4HfoplWwCWIHgjT+CN2UusHH+noE3tHZAh5h0HCM9L2
         xJIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=gGXsTdjP+fUkiebykwxfC5FGbwspwxsc8Wncr6AUPyY=;
        b=VDx3fJiDanmQG6i0em/7k676Cv9WhazcbSoSbZjxDNHuR3d+b82dIRNxd9ucCaIShd
         PJSQnyIHuZLpR2dqXcF/PX3GGRoCQbmFgtnR6/Cs/5xz/yM97N13o3atwXXp4pnBCgJ+
         P79CHR9Ih0oB2CmX23lka+UoIM67xNfdzt1kCY19Fsd0PtDDOtnVV0cnGj3q1+AuuTD8
         6h0Nv4ZD1UIYM6bSjjQOluOcrOMNFBStToIkaisdlOAO0l9X7ZUeiozq6Lk2Vjcafk2h
         7NZHTm0ZUOgOx+Kij5THm3IPWSBZH30NFHvDbQ+dWmKeNJdJjD5llc/q7mldIYuvdD1I
         Ux+Q==
X-Gm-Message-State: APjAAAXeWcIVnPbiQtS640XKXcj9uBMJufBkU8eupxgVZRlAlNG2xlYw
        6147vUPAr8AZaCKp5ARweRjO
X-Google-Smtp-Source: APXvYqwMqGURNfsR3BWkxYNWstQBS32qs1434INfBDIj0JyPlf0G1T0g0VuYZ31489ayPVkXrp4uVw==
X-Received: by 2002:a17:902:20e2:: with SMTP id v31mr44608807plg.138.1557330807220;
        Wed, 08 May 2019 08:53:27 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6000:7ab1:cd79:1ccc:df38:79c0])
        by smtp.gmail.com with ESMTPSA id o73sm7613819pfi.137.2019.05.08.08.53.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 08 May 2019 08:53:26 -0700 (PDT)
Date:   Wed, 8 May 2019 21:23:19 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, haitao.suo@bitmain.com,
        darren.tsao@bitmain.com
Subject: Re: [PATCH 3/3] reset: Add reset controller support for BM1880 SoC
Message-ID: <20190508155319.GA3962@Mani-XPS-13-9360>
References: <20190425125508.5965-1-manivannan.sadhasivam@linaro.org>
 <20190425125508.5965-4-manivannan.sadhasivam@linaro.org>
 <1556895321.3046.3.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1556895321.3046.3.camel@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Philipp,

On Fri, May 03, 2019 at 04:55:21PM +0200, Philipp Zabel wrote:
> Hi Manivannan,
> 
> thank you for the patch. A few issues below:
> 
> On Thu, 2019-04-25 at 18:25 +0530, Manivannan Sadhasivam wrote:
> > Add reset controller support for Bitmain BM1880 SoC reusing the
> > reset-simple driver. While we are at it, this driver has also been
> > modified to make use of the SPDX license identifier.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/reset/Kconfig        |  3 ++-
> >  drivers/reset/Makefile       |  1 +
> >  drivers/reset/reset-simple.c | 16 +++++++++++-----
> >  3 files changed, 14 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> > index 2c8c23db92fb..b25e8d139f0d 100644
> > --- a/drivers/reset/Kconfig
> > +++ b/drivers/reset/Kconfig
> > @@ -117,7 +117,7 @@ config RESET_QCOM_PDC
> >  
> >  config RESET_SIMPLE
> >  	bool "Simple Reset Controller Driver" if COMPILE_TEST
> > -	default ARCH_STM32 || ARCH_STRATIX10 || ARCH_SUNXI || ARCH_ZX || ARCH_ASPEED
> > +	default ARCH_STM32 || ARCH_STRATIX10 || ARCH_SUNXI || ARCH_ZX || ARCH_ASPEED || ARCH_BITMAIN
> >  	help
> >  	  This enables a simple reset controller driver for reset lines that
> >  	  that can be asserted and deasserted by toggling bits in a contiguous,
> > @@ -129,6 +129,7 @@ config RESET_SIMPLE
> >  	   - RCC reset controller in STM32 MCUs
> >  	   - Allwinner SoCs
> >  	   - ZTE's zx2967 family
> > +	   - Bitmain BM1880 SoC
> >  
> >  config RESET_STM32MP157
> >  	bool "STM32MP157 Reset Driver" if COMPILE_TEST
> > diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> > index 61456b8f659c..b87968771166 100644
> > --- a/drivers/reset/Makefile
> > +++ b/drivers/reset/Makefile
> > @@ -7,6 +7,7 @@ obj-$(CONFIG_RESET_A10SR) += reset-a10sr.o
> >  obj-$(CONFIG_RESET_ATH79) += reset-ath79.o
> >  obj-$(CONFIG_RESET_AXS10X) += reset-axs10x.o
> >  obj-$(CONFIG_RESET_BERLIN) += reset-berlin.o
> > +#obj-$(CONFIG_RESET_BM1880) += reset-bm1880.o
> 
> Leftover from a previous patch version? You can remove this.
> 

Ah, yes!

> >  obj-$(CONFIG_RESET_BRCMSTB) += reset-brcmstb.o
> >  obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
> >  obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
> > diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
> > index 77fbba3100c8..fd1fa4984d76 100644
> > --- a/drivers/reset/reset-simple.c
> > +++ b/drivers/reset/reset-simple.c
> > @@ -1,3 +1,4 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> >  /*
> >   * Simple Reset Controller Driver
> >   *
> > @@ -8,11 +9,6 @@
> >   * Copyright 2013 Maxime Ripard
> >   *
> >   * Maxime Ripard <maxime.ripard@free-electrons.com>
> > - *
> > - * This program is free software; you can redistribute it and/or modify
> > - * it under the terms of the GNU General Public License as published by
> > - * the Free Software Foundation; either version 2 of the License, or
> > - * (at your option) any later version.
> >   */
> 
> Please split this change into a separate patch and add Maxime to Cc:
>  

Okay

> >  #include <linux/device.h>
> > @@ -119,6 +115,14 @@ static const struct reset_simple_devdata reset_simple_active_low = {
> >  	.status_active_low = true,
> >  };
> >  
> > +#define BM1880_NR_BANKS		2
> > +
> > +static const struct reset_simple_devdata reset_simple_bm1880 = {
> > +	.nr_resets = BM1880_NR_BANKS * 32,
> 
> This is not necessary, given your device tree changes, the
> 
>         data->rcdev.nr_resets = resource_size(res) * BITS_PER_BYTE;
> 
> in reset_simple_probe should already do the right thing.
> You can remove the .nr_resets from reset_simple_bm1880 and the
> BM1880_NR_BANKS #define.
> 

I read BITS_PER_BYTE wrong :/ Without nr_resets I can reuse the
reset_simple_active_low struct.

> > +	.active_low = true,
> > +	.status_active_low = true,
> > +};
> > +
> >  static const struct of_device_id reset_simple_dt_ids[] = {
> >  	{ .compatible = "altr,stratix10-rst-mgr",
> >  		.data = &reset_simple_socfpga },
> > @@ -129,6 +133,8 @@ static const struct of_device_id reset_simple_dt_ids[] = {
> >  		.data = &reset_simple_active_low },
> >  	{ .compatible = "aspeed,ast2400-lpc-reset" },
> >  	{ .compatible = "aspeed,ast2500-lpc-reset" },
> > +	{ .compatible = "bitmain,bm1880-reset",
> > +		.data = &reset_simple_bm1880 },
> >  	{ /* sentinel */ },
> >  };
> 
> With these changes,
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> for both parts. 
> 

Thanks!

Regards,
Mani

> regards
> Philipp
