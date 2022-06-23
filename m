Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D248557574
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 10:27:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229913AbiFWI1y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 04:27:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230144AbiFWI1v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 04:27:51 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DAA2488A0
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 01:27:50 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id o8so26853108wro.3
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 01:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=XbJxth9tRCJ25M1ZtDqhJEdmIW0lgPfIhZtn1D4CF94=;
        b=qzpKzFjp0Vzr1dfUZ/biNrohzZZlanRtI5lT2sPIUHhU2/C/Bd4dI5Xby+P70ihROS
         pZKKfhTeyd6PuP5eNMFXHpnkqb+CF/el9mXs0+Us/gR44T03zkiL/YpXb5aGpMeRvbKQ
         ocwHZp/SH3NDzRvob40xXL0ZTlUg+xGcIFPyQf3FvjkdZR2hWtjghYvzmGSJ98MOqEg2
         JCh10jJT4NrlaAQXLoegdNamyLDQFH26txfxGMFBK1kkiUknDzZF4lzrUI64UaciNyv9
         GzBy6ccGjgDEsGPhVx1xQFSBLz8ghxIt51h8Y9Zcm1iEfG9opEDAHWlJDh6irn7iQAui
         7Neg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=XbJxth9tRCJ25M1ZtDqhJEdmIW0lgPfIhZtn1D4CF94=;
        b=TDP2gJC+JfI28hrZXEhQNsGzDXygQyftrecFlnhwj8+FmExK9sRm/E3Nkkc0yMIGas
         vizluHp699KcU+ipWtebgZKwKvmmIUOJMDnjc0j7NpWCnrQyeX84ode9LyYZSIV/CiYg
         0d38Wk6mDj7Ht6hK0Lm58fz2safyo4XOSyumb6eIb4r9HhgJ0//DZCSghRtc8uJf9HK2
         jZq3Wj409/37zMAIi+gYWEkZTdn99vMhJtatynGG8aLJlO7ZviZX8Mjnjbuep1Dk7CGS
         eZhEN5N4tgGnoJ9tFTPhYjR1w3vjSCGYG2j72Uqu4zZin362QnPbgfKpKuqevqISDVG9
         ETqw==
X-Gm-Message-State: AJIora8tSekPWG46OFcKJ3GrrOnM/qjo2PHlP7V90b8cZC2CNWPK+uQZ
        At7B1CLCGWrn/DTbrZKS8SNuzw==
X-Google-Smtp-Source: AGRyM1tFE7HiQGCqIdoOCyxEMVOwHB7a0N7pOT/+8ykgOA4W6ZtrxLFb2mbg0vjLwtnoKRgGeBcnjQ==
X-Received: by 2002:a05:6000:901:b0:21a:a576:23cc with SMTP id bz1-20020a056000090100b0021aa57623ccmr6897834wrb.489.1655972868423;
        Thu, 23 Jun 2022 01:27:48 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id d12-20020a05600c34cc00b0039c63f4bce0sm2270234wmq.12.2022.06.23.01.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jun 2022 01:27:47 -0700 (PDT)
Date:   Thu, 23 Jun 2022 09:27:45 +0100
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
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH V3 06/11] mfd: bcm2835-pm: Use 'reg-names' to get
 resources
Message-ID: <YrQkAYS0U5PyBLJb@google.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
 <20220607204226.8703-7-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220607204226.8703-7-stefan.wahren@i2se.com>
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

> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> If available in firmware, find resources by their 'reg-names' position
> instead of relying on hardcoded offsets. Care is taken to support old
> firmware nonetheless.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  drivers/mfd/bcm2835-pm.c | 59 +++++++++++++++++++++++++++-------------
>  1 file changed, 40 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
> index 42fe67f1538e..ff0dae5a026d 100644
> --- a/drivers/mfd/bcm2835-pm.c
> +++ b/drivers/mfd/bcm2835-pm.c
> @@ -25,9 +25,41 @@ static const struct mfd_cell bcm2835_power_devs[] = {
>  	{ .name = "bcm2835-power" },
>  };
>  
> +static int bcm2835_pm_get_pdata(struct platform_device *pdev,
> +				struct bcm2835_pm *pm)
> +{
> +	/* If no 'reg-names' property is found we can assume we're using old
> +	 * firmware.
> +	 */

Please use the correct format for multi-line comments.

Better still, convert this to a single line comment.

> +	if (!of_find_property(pm->dev->of_node, "reg-names", NULL)) {
> +		dev_warn(pm->dev, "reg-names are missing, please update your DTB.\n");
> +
> +		pm->base = devm_platform_ioremap_resource(pdev, 0);
> +		if (IS_ERR(pm->base))
> +			return PTR_ERR(pm->base);
> +
> +		pm->asb = devm_platform_ioremap_resource(pdev, 1);

Might be nicer to return here and remove the else.

> +	} else {
> +		struct resource *res;
> +
> +		pm->base = devm_platform_ioremap_resource_byname(pdev, "pm");
> +		if (IS_ERR(pm->base))
> +			return PTR_ERR(pm->base);
> +
> +		res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> +						    "asb");

While you're at it, might as well make this single line too.

> +		if (res)
> +			pm->asb = devm_ioremap_resource(&pdev->dev, res);
> +	}
> +
> +	if (IS_ERR(pm->asb))
> +		pm->asb = NULL;
> +
> +	return 0;
> +}
> +
>  static int bcm2835_pm_probe(struct platform_device *pdev)
>  {
> -	struct resource *res;
>  	struct device *dev = &pdev->dev;
>  	struct bcm2835_pm *pm;
>  	int ret;
> @@ -39,10 +71,9 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
>  
>  	pm->dev = dev;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	pm->base = devm_ioremap_resource(dev, res);
> -	if (IS_ERR(pm->base))
> -		return PTR_ERR(pm->base);
> +	ret = bcm2835_pm_get_pdata(pdev, pm);
> +	if (ret)
> +		return ret;
>  
>  	ret = devm_mfd_add_devices(dev, -1,
>  				   bcm2835_pm_devs, ARRAY_SIZE(bcm2835_pm_devs),
> @@ -54,20 +85,10 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
>  	 * bcm2835-pm binding as the key for whether we can reference
>  	 * the full PM register range and support power domains.
>  	 */
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> -	if (res) {
> -		pm->asb = devm_ioremap_resource(dev, res);
> -		if (IS_ERR(pm->asb))
> -			return PTR_ERR(pm->asb);
> -
> -		ret = devm_mfd_add_devices(dev, -1,
> -					   bcm2835_power_devs,
> -					   ARRAY_SIZE(bcm2835_power_devs),
> -					   NULL, 0, NULL);
> -		if (ret)
> -			return ret;
> -	}
> -
> +	if (pm->asb)
> +		return devm_mfd_add_devices(dev, -1, bcm2835_power_devs,
> +					    ARRAY_SIZE(bcm2835_power_devs),
> +					    NULL, 0, NULL);
>  	return 0;
>  }
>  

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
