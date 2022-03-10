Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEEBA4D4C60
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 16:02:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245365AbiCJOzf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 09:55:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347199AbiCJOuh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 09:50:37 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEB3818F238
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 06:45:52 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id u10so8317570wra.9
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 06:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=zU7imf92+d/PezIj5fiCgBU/+AQvUgohjaHX+C+UpeQ=;
        b=CmyIyYjR7tGnr1QuRp+xPIBulZs4ugi0KQAkU3z0KhniBlnMOY++5g59UgYwCso8YI
         W8PYFBiS1lxc/vixYi31SpODNYYKTHxTm//84VyYyBug5GL3wME2E0wOtDgIrjk/LPlW
         Kdke8bcd1RSs9PEqW5NMnh6JjlUWH6R6Zguwyz5qQ7B9TohQzqrAN1vzf8CcYZNOTDjR
         chYvP4z4LO/T6MxgJd5nOnmc2PcooGqVXAGY1F+foafsu5Zku79jjVlU/rTxsTRlsP0d
         kgKY5CBZv7Cd7i2WUm6gHlaeKMS2DC6ggig0yAabKv/RaESkQub8szUOCBquQmXlWWGy
         P5hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=zU7imf92+d/PezIj5fiCgBU/+AQvUgohjaHX+C+UpeQ=;
        b=1kUYMgLXEWZIXUwxsL1KXAWGeS9BgXa+ZohGjshtEzKjvHNBNlrFC+h7cm4VdihulN
         f/Fmw2WQffUCgEylVMaedT41fNTZQLfLDlSlpeUqyOaGpAexCeXwPvae6+v+rnYa6kT3
         Sxoa9nJFBEzhsKdFHr44M3THZ4iH0vzjNxKs9SM8TIVj8N+gduI8MiUJVKPZWbghxMlf
         NiYhmikzgIaCRxOonfEE6gin4MFCwd+3AsgxLOa6nUmfHxDK2QFRqsObFhYN61ORFvPT
         wchciFRoCg+/U66p6QZddWm2biG4o1lWw0a1qPgTJ8WXbAPbRpJkABa7OTm0x9Mdevxd
         GcsQ==
X-Gm-Message-State: AOAM533w/tnF2sFnKeDuWzvK07zAjotkBm4rG2idLTLmwfG0qMJYhYgD
        n2r2Ryb9W1KxMaM674q027CxUw==
X-Google-Smtp-Source: ABdhPJyJI8jwQb/Irm6QZNNEQ5Fh9XydIkdFANTWHACe7B4gTCr/8KXVdJR/BIyz1pPmehwTd5rJ2g==
X-Received: by 2002:a5d:6dad:0:b0:203:84b4:da13 with SMTP id u13-20020a5d6dad000000b0020384b4da13mr3470010wrs.162.1646923551095;
        Thu, 10 Mar 2022 06:45:51 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id q16-20020a056000137000b001f046a21afcsm4450932wrz.15.2022.03.10.06.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Mar 2022 06:45:50 -0800 (PST)
Date:   Thu, 10 Mar 2022 15:45:45 +0100
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     heiko@sntech.de, herbert@gondor.apana.org.au, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, john@metanate.com
Subject: Re: [PATCH v2 11/18] crypto: rockhip: do not handle dma clock
Message-ID: <YioPGUFPOerQKak5@Red>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
 <20220302211113.4003816-12-clabbe@baylibre.com>
 <064626ad-129e-c7eb-5e08-12d93cffa993@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <064626ad-129e-c7eb-5e08-12d93cffa993@gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Fri, Mar 04, 2022 at 04:01:58PM +0100, Johan Jonker a écrit :
> Hi Corentin,
> 
> Make your clock driver parsing portable.
> 
> ===
>     oneOf:
>       - const: rockchip,rk3288-crypto
>       - items:
>           - enum:
>               - rockchip,rk3328-crypto
>           - const: rockchip,rk3288-crypto
> 
> Compatible string must be SoC related!
> 
> rk3288 was the first in line that had support, so we use that as fall
> back string.
> 
> ===
> 
> Make binding fit for more SoC types.
> Allow more clocks by using devm_clk_bulk_get_all.

Hello

Thanks for the hint of devm_clk_bulk_get_all, I will switch to it as it simplify clock handling.

> Drop reset-names requirement for devm_reset_control_array_get_exclusive.
> 
> ===
> 
> Use a patch order to prevent the scripts generate notifications.

which scripts ?

> 
> - dt-bindings conversion
> 
> - add rk3328 compatible string in a separate patch
> 
> - your driver changes
> 
> - dts patches
> 
> A proposed maintainer must be able to submit patch series without errors. ;)
> 
> ===
> 
> When you remove a clock in a YAML conversion you must add a note to the
> DT maintainer.
> 
> ===
> 
> Johan
> 
> On 3/2/22 22:11, Corentin Labbe wrote:
> > The DMA clock is handled by the DMA controller, so the crypto does not
> > have to touch it.
> > 
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/crypto/rockchip/rk3288_crypto.c | 16 +---------------
> >  drivers/crypto/rockchip/rk3288_crypto.h |  1 -
> >  2 files changed, 1 insertion(+), 16 deletions(-)
> > 
> > diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
> > index 94ef1283789f..645855d2651b 100644
> > --- a/drivers/crypto/rockchip/rk3288_crypto.c
> > +++ b/drivers/crypto/rockchip/rk3288_crypto.c
> > @@ -40,15 +40,8 @@ static int rk_crypto_enable_clk(struct rk_crypto_info *dev)
> >  			__func__, __LINE__);
> >  		goto err_hclk;
> >  	}
> > -	err = clk_prepare_enable(dev->dmaclk);
> > -	if (err) {
> > -		dev_err(dev->dev, "[%s:%d], Couldn't enable clock dmaclk\n",
> > -			__func__, __LINE__);
> > -		goto err_dmaclk;
> > -	}
> > +
> >  	return err;
> > -err_dmaclk:
> > -	clk_disable_unprepare(dev->hclk);
> >  err_hclk:
> >  	clk_disable_unprepare(dev->aclk);
> >  err_aclk:
> > @@ -59,7 +52,6 @@ static int rk_crypto_enable_clk(struct rk_crypto_info *dev)
> >  
> >  static void rk_crypto_disable_clk(struct rk_crypto_info *dev)
> >  {
> > -	clk_disable_unprepare(dev->dmaclk);
> >  	clk_disable_unprepare(dev->hclk);
> >  	clk_disable_unprepare(dev->aclk);
> >  	clk_disable_unprepare(dev->sclk);
> > @@ -199,12 +191,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
> >  		goto err_crypto;
> >  	}
> >  
> 
> > -	crypto_info->dmaclk = devm_clk_get(&pdev->dev, "apb_pclk");
> > -	if (IS_ERR(crypto_info->dmaclk)) {
> > -		err = PTR_ERR(crypto_info->dmaclk);
> > -		goto err_crypto;
> > -	}
> > -
> 
> rk3288:
>  		clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
> -			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
> -		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
> +			 <&cru SCLK_CRYPTO>;
> +		clock-names = "aclk", "hclk", "sclk";
> 
> 
> rk3328:
> +		clocks = <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
> +			 <&cru SCLK_CRYPTO>;
> +		clock-names = "aclk", "hclk", "sclk";
> 
> The HCLK_CRYPTO_MST not is related to ACLK_CRYPTO.
> You are reusing rk3288 names to not to change the driver.
> Give it an other name.

You are right, I will change them.


> 
> ===
> 
> The sclk goes through a crypto_div_con.
> Does that need a frequency set?
> Or does that come from nowhere?
> 
> From crypto_v1.c
> 	priv->frequency = dev_read_u32_default(dev, "clock-frequency",
> 					       CRYPTO_V1_DEFAULT_RATE);
> 
> 	ret = clk_set_rate(&priv->sclk, priv->frequency);
> 

The problem is that I dont see any hints for this in TRM, and their rockchips source are inconsistent, they do this in uboot not in linux....

> ===
> 
> Could you make this portable?
> Example:
> 
> 	int i;
> 
> 	priv->num_clks = devm_clk_bulk_get_all(dev, &priv->clks);
> 	if (priv->num_clks < 1)
> 		return -EINVAL;
> 
> 	priv->sclk = NULL;
> 	for (i = 0; i < priv->num_clks; i++) {
> 		if (!strncmp(priv->clks[i].id, "sclk", 3)) {
> 			priv->sclk = priv->clks[i].clk;
> 			break;
> 		}
> 	}
> 
> 	if (!priv->sclk) {
> 		dev_err(dev, "no sclk found\n");
> 		return -EINVAL;
> 	}
> 
> Also add optional "sclk1" clock for rk3399.
> Use "sclk" and not "sclk0" to be backwards compatible.
> 
> ===
> 
> Also make the resets portable for rk3399.
> Remove the requirement for "reset-names".
> 
> Example:
> 	priv->phy_rst = devm_reset_control_array_get_exclusive(dev);
> 	if (IS_ERR(priv->phy_rst))
> 		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy
> reset\n");
> 
> 
> 
> >  	crypto_info->irq = platform_get_irq(pdev, 0);
> >  	if (crypto_info->irq < 0) {
> >  		dev_err(&pdev->dev, "control Interrupt is not available.\n");
> > diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
> > index c741e97057dc..963fbfc4d14e 100644
> > --- a/drivers/crypto/rockchip/rk3288_crypto.h
> > +++ b/drivers/crypto/rockchip/rk3288_crypto.h
> > @@ -191,7 +191,6 @@ struct rk_crypto_info {
> 
> >  	struct clk			*aclk;
> >  	struct clk			*hclk;
> >  	struct clk			*sclk;
> > -	struct clk			*dmaclk;
> 
> 
> 	int num_clks;
> 	struct clk_bulk_data *clks;
> 	struct clk *sclk;
> 	struct clk *sclk1;
> 
> 
> >  	struct reset_control		*rst;
> >  	void __iomem			*reg;
> >  	int				irq;


For handling rk3399, I have no hardware so I cannot do anything for it easily.
I have asked on IRC for some tests, so let's see if it works.
Anyway we can always add support for it later, the priority is to fix the driver breakage.

Regards
