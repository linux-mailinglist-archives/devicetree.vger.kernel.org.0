Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4D88D7A39F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 11:04:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729464AbfG3JE3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 05:04:29 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:53151 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726557AbfG3JE3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jul 2019 05:04:29 -0400
Received: by mail-wm1-f67.google.com with SMTP id s3so56340614wms.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2019 02:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=5G29QbB83YiXlS3ExY1vb4rgH3ehmgGSy8rpPGRoRUI=;
        b=QQuz+tr3jxms4vmjzbDBu2LjnsfmujJedbSA3a+s2hDtimOuwp1FYRMgvPHHrNRFxC
         Vgxd8P9SS1vtxjd0zFVpzwfuM6LzriTnz4D16vpN0wEWN74amtRgwOGYdBHYPOMsf+iV
         klK71KI6dcGzjeovnUOQDduTkv41veYXGyMKcOyTQAKE1S1rSh64H4H0TjI7IizbFQ2V
         x6wTcjr15VKhOlQ/QVkZEtnMzA1Y7y3alPQ3PVnehVyosmStD6JJzZCK6iRklahNgalj
         j86IdYVk624rJKW2HK8+uVczMzSmBEIm7v1voPRqmK4AMm2IFWOhxDB7QvhwYTw3Qf4s
         zOdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=5G29QbB83YiXlS3ExY1vb4rgH3ehmgGSy8rpPGRoRUI=;
        b=Igo1JKTV9bivzCpiIJr89UOfTPMMN8/7nAQniTvoAOpeOGEVqtuTWwyCPUxGZ/ynvX
         8Qy0hOTZORk9lLaLpBdZ9w/Clz4WDUtkfToAiXKy24BSiKzZxuyKBqveaTqeZDmr7dXT
         x8ctQZmTPBWyMhyYdmE6txusrDvcVIARb1yKsPWXiv5Gbym27vafqv5wFd2osqAqG+ZV
         6tNsYsWtOoIrlUmfuEF4/nG7mOytSirKT9g3yuETbS/qgxZ9YlbgEpIvX5TxRxSs9xu8
         74e4AZ2NmEcdM+M5Xhaihn4Bm5gAgpFDJCpBYDJ8t/zOshIxCr0a2WzcKf+Cg+64UxAD
         YTlg==
X-Gm-Message-State: APjAAAUCifC3z1lQGStkivx7/Wu0L1bQq6aRG8nFNik4PTkzaZ17viOq
        Dp1KuYMpbe2aU4FRWDoeX+/y5Q==
X-Google-Smtp-Source: APXvYqzQ/1TapVb4uI4LpAERm0Xdmc4Cox/XEe9lQXPCwZOksx+WTviajzEB7qo6NwQjWNA+UMlaBg==
X-Received: by 2002:a1c:be11:: with SMTP id o17mr103534133wmf.115.1564477466755;
        Tue, 30 Jul 2019 02:04:26 -0700 (PDT)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
        by smtp.gmail.com with ESMTPSA id y16sm64493567wrw.33.2019.07.30.02.04.25
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 30 Jul 2019 02:04:26 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Carlo Caione <ccaione@baylibre.com>,
        srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: Re: [PATCH 1/5] nvmem: meson-efuse: Move data to a container struct
In-Reply-To: <20190729183941.18164-2-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com> <20190729183941.18164-2-ccaione@baylibre.com>
Date:   Tue, 30 Jul 2019 11:04:24 +0200
Message-ID: <1jy30f28rr.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 29 Jul 2019 at 19:39, Carlo Caione <ccaione@baylibre.com> wrote:

> No functional changes, just a cleanup commit to tidy up a bit. Move the
> nvmem_* and clk structures in a container struct.
>
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
> ---
>  drivers/nvmem/meson-efuse.c | 47 ++++++++++++++++++++-----------------
>  1 file changed, 26 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/nvmem/meson-efuse.c b/drivers/nvmem/meson-efuse.c
> index 39bd76306033..9924b98db772 100644
> --- a/drivers/nvmem/meson-efuse.c
> +++ b/drivers/nvmem/meson-efuse.c
> @@ -14,6 +14,12 @@
>  
>  #include <linux/firmware/meson/meson_sm.h>
>  
> +struct meson_efuse {
> +	struct nvmem_device *nvmem;
> +	struct nvmem_config config;
> +	struct clk *clk;

since this driver uses devm_add_action_or_reset, I don't think you need
to keep the clk pointer around, unless you plan to do something with it
later on ?

It is kind of the same the other structure members, do we need to keep
them around ? We could just let devm deal with it ?

If you have a plan, could you share it ?

> +};
> +
>  static int meson_efuse_read(void *context, unsigned int offset,
>  			    void *val, size_t bytes)
>  {
> @@ -37,21 +43,23 @@ MODULE_DEVICE_TABLE(of, meson_efuse_match);
>  static int meson_efuse_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> -	struct nvmem_device *nvmem;
> -	struct nvmem_config *econfig;
> -	struct clk *clk;
> +	struct meson_efuse *efuse;
>  	unsigned int size;
>  	int ret;
>  
> -	clk = devm_clk_get(dev, NULL);
> -	if (IS_ERR(clk)) {
> -		ret = PTR_ERR(clk);
> +	efuse = devm_kzalloc(&pdev->dev, sizeof(*efuse), GFP_KERNEL);
> +	if (!efuse)
> +		return -ENOMEM;
> +
> +	efuse->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(efuse->clk)) {
> +		ret = PTR_ERR(efuse->clk);
>  		if (ret != -EPROBE_DEFER)
>  			dev_err(dev, "failed to get efuse gate");
>  		return ret;
>  	}
>  
> -	ret = clk_prepare_enable(clk);
> +	ret = clk_prepare_enable(efuse->clk);
>  	if (ret) {
>  		dev_err(dev, "failed to enable gate");
>  		return ret;
> @@ -59,7 +67,7 @@ static int meson_efuse_probe(struct platform_device *pdev)
>  
>  	ret = devm_add_action_or_reset(dev,
>  				       (void(*)(void *))clk_disable_unprepare,
> -				       clk);
> +				       efuse->clk);
>  	if (ret) {
>  		dev_err(dev, "failed to add disable callback");
>  		return ret;
> @@ -70,21 +78,18 @@ static int meson_efuse_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> -	econfig = devm_kzalloc(dev, sizeof(*econfig), GFP_KERNEL);
> -	if (!econfig)
> -		return -ENOMEM;
> -
> -	econfig->dev = dev;
> -	econfig->name = dev_name(dev);
> -	econfig->stride = 1;
> -	econfig->word_size = 1;
> -	econfig->reg_read = meson_efuse_read;
> -	econfig->reg_write = meson_efuse_write;
> -	econfig->size = size;
> +	efuse->config.dev = dev;
> +	efuse->config.name = dev_name(dev);
> +	efuse->config.stride = 1;
> +	efuse->config.word_size = 1;
> +	efuse->config.reg_read = meson_efuse_read;
> +	efuse->config.reg_write = meson_efuse_write;
> +	efuse->config.size = size;
> +	efuse->config.priv = efuse;
>  
> -	nvmem = devm_nvmem_register(&pdev->dev, econfig);
> +	efuse->nvmem = devm_nvmem_register(&pdev->dev, &efuse->config);
>  
> -	return PTR_ERR_OR_ZERO(nvmem);
> +	return PTR_ERR_OR_ZERO(efuse->nvmem);
>  }
>  
>  static struct platform_driver meson_efuse_driver = {
> -- 
> 2.20.1
