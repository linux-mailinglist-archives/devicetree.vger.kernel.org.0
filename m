Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADE235575B4
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 10:41:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229841AbiFWIlO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 04:41:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230172AbiFWIlN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 04:41:13 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95C2549249
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 01:41:12 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id e5so10602625wma.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 01:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=rWVj9cB0VWQwjl49hmnp6oq16s8Sg76Jvrdztki9ovM=;
        b=TYc8r7HaGQx1/TUZa3jH6IVaFolGey0NfGvOCSZdEDOARhutqNlNJUc3liJnJcYumH
         ZkYm+sTb2L2OnCHijIBvgOU4D+x2JhZRFl3K/Yici+jRdhXnvz3UfXeeOYgpexIJgYAU
         3bthev/JdtCDS80Pf9F97B7Z2Bi86VgfDL5RYs3sOANbHtR48pow9IIo09TohSm4o2t9
         mFalStiy0QPi4KBHNmMXgQDIs3AkDDRBf1RomrTs+1O5ctB6/lHzs4diNmrI7aa9iwHR
         h5/QreRLF9Lkh3TomhDMoGv1yRSYNkhfJ17bfc6Zo0WeCPGOg0s6fA4ILv1gyHt7kWKr
         rVVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=rWVj9cB0VWQwjl49hmnp6oq16s8Sg76Jvrdztki9ovM=;
        b=jGwYr3Gvml9JUIDbYm81scrDwkZOq6cN8kht0UuxCNX99ToLMmZyv+lkn/cEu36f0v
         o2dTewcsXq6Ckqat5U4BFyPCbiT/Va41ZpjGnSJbpZjiJE9kkkebEG0V2fmv3RN2u9Ux
         JqMXUxvBucCpedT8JlLP3XXiUaEn/nNIN9UOJ3yvAeOZ8cL77XEUkNvPuKVTx04ppxJE
         FdpB+gDpyyTA2cg0pV2L2mpY8vvOLJbtgYCrOs3RU/weDt4vZKUdXtCk1MLiIn7ESy52
         frmV81ocDjQBXnylqkb5llmliSCILS1epYT0nL7wNZVu+mJZZOcbb5aod6BH+Vx51UlW
         gq1A==
X-Gm-Message-State: AJIora85LFs36uGP2syd1wWcG9Q1GASltQJUgKHHofLpBCnN6kbuz9s/
        TJ0fBA+j90y3VVrhRcQ3zuH4RA==
X-Google-Smtp-Source: AGRyM1v/Spw0q05cJy85iL1hTEZd/YVlAHKxhTynQaSAvhRK2q++zdYTesnBjzDNEIXAnOn8ANPOIg==
X-Received: by 2002:a05:600c:3847:b0:39c:6a85:d20c with SMTP id s7-20020a05600c384700b0039c6a85d20cmr2905464wmr.129.1655973671000;
        Thu, 23 Jun 2022 01:41:11 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id g13-20020a5d488d000000b0021b86dbad37sm15645315wrq.68.2022.06.23.01.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jun 2022 01:41:10 -0700 (PDT)
Date:   Thu, 23 Jun 2022 09:41:08 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V3 07/11] mfd: bcm2835-pm: Add support for BCM2711
Message-ID: <YrQnJBCzQNb9VcUf@google.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
 <20220607204226.8703-8-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220607204226.8703-8-stefan.wahren@i2se.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 07 Jun 2022, Stefan Wahren wrote:

> In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
> with the ISP and H264 bits, and V3D is in the same place in the new ASB
> as the old one.
> 
> As per the devicetree bindings, BCM2711 will provide both the old and
> new ASB resources, so get both of them and pass them into
> 'bcm2835-power,' which will take care of selecting which one to use
> accordingly.
> 
> Since the RPiVid ASB's resources were being provided prior to formalizing
> the bindings[1], also support the old DT files that didn't use
> 'reg-names.'
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> 
> [1] See: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")
> ---
>  drivers/mfd/bcm2835-pm.c       | 21 +++++++++++++++++++++
>  include/linux/mfd/bcm2835-pm.h |  1 +
>  2 files changed, 22 insertions(+)
> 
> diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
> index ff0dae5a026d..4a2be669674a 100644
> --- a/drivers/mfd/bcm2835-pm.c
> +++ b/drivers/mfd/bcm2835-pm.c
> @@ -28,6 +28,8 @@ static const struct mfd_cell bcm2835_power_devs[] = {
>  static int bcm2835_pm_get_pdata(struct platform_device *pdev,
>  				struct bcm2835_pm *pm)
>  {
> +	bool is_bcm2711 = of_device_is_compatible(pm->dev->of_node, "brcm,bcm2711-pm");
> +

Since this is only used once, probably better to call
of_device_is_compatible() in-place.

>  	/* If no 'reg-names' property is found we can assume we're using old
>  	 * firmware.
>  	 */
> @@ -39,6 +41,7 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
>  			return PTR_ERR(pm->base);
>  
>  		pm->asb = devm_platform_ioremap_resource(pdev, 1);
> +		pm->rpivid_asb = devm_platform_ioremap_resource(pdev, 2);
>  	} else {
>  		struct resource *res;
>  
> @@ -50,11 +53,28 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
>  						    "asb");
>  		if (res)
>  			pm->asb = devm_ioremap_resource(&pdev->dev, res);
> +
> +		res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> +						    "rpivid_asb");
> +		if (res)
> +			pm->rpivid_asb = devm_ioremap_resource(&pdev->dev,
> +								res);
>  	}
>  
>  	if (IS_ERR(pm->asb))
>  		pm->asb = NULL;
>  
> +	if (IS_ERR(pm->rpivid_asb))
> +		pm->rpivid_asb = NULL;
> +
> +	/* Ensure that rpivid_asb is set only for BCM2711, so subsequent
> +	 * driver can rely on this and don't get confused by broken DTB.
> +	 */

Please use proper formatting.

> +	if (pm->rpivid_asb && !is_bcm2711) {
> +		dev_err(pm->dev, "Unexpected rpivid_asb register, please fix your DTB.\n");

Not sure we should be validating values from DT like this.

If incorrect hardware information is placed into DT, unexpected
behaviour will occur.  This is known.  Perhaps a mention of this
should be placed into the DT binding documentation, but checking for
it here seems odd.

Same goes for the previous patch come to think of it.  Please remove
the "update your DTB" warning from there too.

> +		return -EINVAL;
> +	}
> +
>  	return 0;
>  }
>  
> @@ -95,6 +115,7 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
>  static const struct of_device_id bcm2835_pm_of_match[] = {
>  	{ .compatible = "brcm,bcm2835-pm-wdt", },
>  	{ .compatible = "brcm,bcm2835-pm", },
> +	{ .compatible = "brcm,bcm2711-pm", },
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, bcm2835_pm_of_match);
> diff --git a/include/linux/mfd/bcm2835-pm.h b/include/linux/mfd/bcm2835-pm.h
> index ed37dc40e82a..f70a810c55f7 100644
> --- a/include/linux/mfd/bcm2835-pm.h
> +++ b/include/linux/mfd/bcm2835-pm.h
> @@ -9,6 +9,7 @@ struct bcm2835_pm {
>  	struct device *dev;
>  	void __iomem *base;
>  	void __iomem *asb;
> +	void __iomem *rpivid_asb;
>  };
>  
>  #endif /* BCM2835_MFD_PM_H */

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
