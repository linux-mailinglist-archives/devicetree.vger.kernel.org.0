Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 456093F4A09
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 13:47:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235525AbhHWLsY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 07:48:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235337AbhHWLsX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 07:48:23 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FD48C061575
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 04:47:41 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id u3so36446331ejz.1
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 04:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ezqz/YZ4v8agvdP2PNXV+lxyv+cSGxnn3vahduKVN5I=;
        b=ma5wPmkW+UOi21JMekl171tsI69re5OcW3KT0PqfQX8VI1chCRdA1a4PevkFQiOEov
         km6dvOezAaD0VIx64Qn/zfzCONvOWdn2WCkxWRT418HmV2yrrlGuo2E3Wdk91etXrafY
         mULXlswPb3tej3kLGdsahRbj5pBckifBiOa+86nHlEfvKOUln1A+JNEGlnW0N1FOL92B
         t6Stz97hGL3OQc8rtU0aeZVP305/D1WyUwQodDu3Xy/pFVDVXM5feA5ZevqUUGId/Fdk
         vI6gSl22db0PbWLwrKSViOG7yKfutx3Vzu2CET5aBOKUc0yTI8pG/1qplhTJE8y1k//z
         jbYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ezqz/YZ4v8agvdP2PNXV+lxyv+cSGxnn3vahduKVN5I=;
        b=V/QXogD3p/4GCOZgH8S0LObsENOXPO44dVaExAWQaCqqblEi+ZcOzh8yG8OfoV1kUI
         8ajGje+JjVAGGoDXHgxcFZz19EvSDN5IeSM8ZV4A4501XY5lAJBDf/mlVdSLr6dKmXrt
         X0jFGwed4H/H5qiyPBvU+eSw2juiHHWF5q7B5zXSh0cCN3s7cFpnExHtro4Sw1fvhW0G
         ImK0ciHNdOmcyI0Fvfo8Rx2Wyu4RK4F4wpyV1yiCtobgm2eYTQnKb83mh6hP3egr27Me
         MHK78+vFOD3bIw76elePENmNSdSrsZ+Y7Ec2wE1mHsrLeQ/naz07Nb4swosN9KPnCnjO
         ysEg==
X-Gm-Message-State: AOAM532HlBVsfTCCwtpo8PPUEsW17HF2fNTnO7AWSpgkQCPczEPNVaPz
        hZvzkaUSYLT01eO5gOnl9Fw=
X-Google-Smtp-Source: ABdhPJx+r7o0HYhdpeTJUZ2wMD3P2agjqveaY94HicMnPc+KFZZP53o3fcYc0CwMCu4H/H/WE7gxXw==
X-Received: by 2002:a17:906:3fd7:: with SMTP id k23mr35128685ejj.176.1629719259693;
        Mon, 23 Aug 2021 04:47:39 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id cb4sm7192143ejb.72.2021.08.23.04.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 04:47:39 -0700 (PDT)
From:   Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To:     broonie@kernel.org, heiko@sntech.de,
        linux-rockchip@lists.infradead.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Xing Zheng <zhengxing@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH 14/15] ASoC: rockchip: i2s: Add support for 'rockchip, clk-trcm' property
Date:   Mon, 23 Aug 2021 13:47:28 +0200
Message-ID: <5017702.Vq9jUBFu5T@archbook>
In-Reply-To: <1629716076-21465-5-git-send-email-sugar.zhang@rock-chips.com>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com> <1629716076-21465-5-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Montag, 23. August 2021 12:54:35 CEST Sugar Zhang wrote:
> From: Xing Zheng <zhengxing@rock-chips.com>
> 
> If there is only one lrck (tx or rx) by hardware, we need to
> use 'rockchip,clk-trcm' to specify which lrck can be used.
> 
> Change-Id: I3bf8d87a6bc8c45e183040012d87d8be21a4c133
> Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
>  sound/soc/rockchip/rockchip_i2s.c | 22 +++++++++++++---------
>  1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/sound/soc/rockchip/rockchip_i2s.c
> b/sound/soc/rockchip/rockchip_i2s.c index 6ccb62e..b9d9c88 100644
> --- a/sound/soc/rockchip/rockchip_i2s.c
> +++ b/sound/soc/rockchip/rockchip_i2s.c
> @@ -54,6 +54,7 @@ struct rk_i2s_dev {
>  	bool is_master_mode;
>  	const struct rk_i2s_pins *pins;
>  	unsigned int bclk_ratio;
> +	unsigned int clk_trcm;
>  };
> 
>  /* tx/rx ctrl lock */
> @@ -321,7 +322,6 @@ static int rockchip_i2s_hw_params(struct
> snd_pcm_substream *substream, struct snd_soc_dai *dai)
>  {
>  	struct rk_i2s_dev *i2s = to_info(dai);
> -	struct snd_soc_pcm_runtime *rtd = asoc_substream_to_rtd(substream);
>  	unsigned int val = 0;
>  	unsigned int mclk_rate, bclk_rate, div_bclk, div_lrck;
> 
> @@ -421,13 +421,6 @@ static int rockchip_i2s_hw_params(struct
> snd_pcm_substream *substream, regmap_update_bits(i2s->regmap, I2S_DMACR,
> I2S_DMACR_RDL_MASK,
>  			   I2S_DMACR_RDL(16));
> 
> -	val = I2S_CKR_TRCM_TXRX;
> -	if (dai->driver->symmetric_rate && rtd->dai_link->symmetric_rate)
> -		val = I2S_CKR_TRCM_TXONLY;
> -
> -	regmap_update_bits(i2s->regmap, I2S_CKR,
> -			   I2S_CKR_TRCM_MASK,
> -			   val);
>  	return 0;
>  }
> 
> @@ -531,7 +524,6 @@ static struct snd_soc_dai_driver rockchip_i2s_dai = {
>  			    SNDRV_PCM_FMTBIT_S32_LE),
>  	},
>  	.ops = &rockchip_i2s_dai_ops,
> -	.symmetric_rate = 1,
>  };
> 
>  static const struct snd_soc_component_driver rockchip_i2s_component = {
> @@ -750,6 +742,18 @@ static int rockchip_i2s_probe(struct platform_device
> *pdev) else if (of_property_read_bool(node, "rockchip,capture-only"))
>  		soc_dai->playback.channels_min = 0;
> 
> +	i2s->clk_trcm = I2S_CKR_TRCM_TXRX;
> +	if (!of_property_read_u32(node, "rockchip,clk-trcm", &val)) {
> +		if (val >= 0 && val <= 2) {
> +			i2s->clk_trcm = val << I2S_CKR_TRCM_SHIFT;
> +			if (i2s->clk_trcm)
> +				soc_dai->symmetric_rate = 1;
> +		}
> +	}
> +
> +	regmap_update_bits(i2s->regmap, I2S_CKR,
> +			   I2S_CKR_TRCM_MASK, i2s->clk_trcm);
> +
>  	ret = devm_snd_soc_register_component(&pdev->dev,
>  					      &rockchip_i2s_component,
>  					      soc_dai, 1);

Hello,

I recommend doing the same thing with clk-trcm that I'm going to do in v3 of 
my i2s-tdm driver, as per Robin Murphy's suggestion:

Have tx-only and rx-only be two boolean properties. I named them
rockchip,trcm-sync-tx-only and rockchip,trcm-sync-rx-only.

I also recommend only shifting the value when writing it to registers, and
storing it in its unshifted state for debug reasons.

My probe function looks like this:

	i2s_tdm->clk_trcm = TRCM_TXRX;
	if (of_property_read_bool(node, "rockchip,trcm-sync-tx-only"))
		i2s_tdm->clk_trcm = TRCM_TX;
	if (of_property_read_bool(node, "rockchip,trcm-sync-rx-only")) {
		if (i2s_tdm->clk_trcm) {
			dev_err(i2s_tdm->dev, "invalid trcm-sync 
configuration\n");
			return -EINVAL;
		}
		i2s_tdm->clk_trcm = TRCM_RX;
	}
	if (i2s_tdm->clk_trcm != TRCM_TXRX)
		i2s_tdm_dai.symmetric_rate = 1;

When writing clk_trcm to a register, I then just do:

	regmap_update_bits(i2s_tdm->regmap, I2S_CKR, I2S_CKR_TRCM_MASK,
			   i2s_tdm->clk_trcm << I2S_CKR_TRCM_SHIFT);

This way if I need to add an error message or debug print somewhere, then 
clk_trcm is still either 0, 1 or 2.

In general, we should look into supporting both i2s and i2s-tdm controllers in 
the same driver if possible. This way we don't need to duplicate work like 
this. Do you think this is feasible to do? When I looked at the register maps 
I saw that the bits I2S/TDM uses were reserved in the I2S version of the 
controller, so I think it should work.

Regards,
Nicolas Frattaroli


