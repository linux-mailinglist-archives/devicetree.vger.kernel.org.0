Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACF83535E43
	for <lists+devicetree@lfdr.de>; Fri, 27 May 2022 12:28:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351001AbiE0K2o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 May 2022 06:28:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234298AbiE0K22 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 May 2022 06:28:28 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E42D6129EE7
        for <devicetree@vger.kernel.org>; Fri, 27 May 2022 03:28:24 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id m20so7813561ejj.10
        for <devicetree@vger.kernel.org>; Fri, 27 May 2022 03:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ndP/m+5H1JvMzkVwLM22/7dPF6mVDOz8cWityZisy7w=;
        b=N4qtUMw9eCH3aQwUwzVpgULVDpbYOtyXKlxVKlm+9SyP3Zn/8tudautlVEzJ8elE8n
         O6t6Wyau10+u5zSdHFf9W+3I4lygLpWfU2oKbPUS8J4jnZAGSxCmGSRSS0tPYKwSpr/b
         nhmSDr5Hn4Dm25mV9gX2muV/sLwh1FH/5bug8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ndP/m+5H1JvMzkVwLM22/7dPF6mVDOz8cWityZisy7w=;
        b=PxuBMBlCtXnCGfcynOk5AHcmb9zmAVYIiOIgUqvfLM7tcZQotA3g5Y2Y5GlipWaejl
         01HIEILr71V+10qW7DX6rcR9m5l8ow/hIx/c0H9WUnYclt9HuHg6nxVQL33UsMh7+4lp
         pI/qSwzB+DyDMenNI3F8l1sZIpPW47IXKsRZbDEvRWbG135i+d0haNdRGKUOLKz9Xbws
         xscA2OfTA/g3WtrfBnbvWS1SKu7kHjCW1A4bZs7CIqe6e/IRYVextxdVIvCFWELM2pjg
         6/a6jis6JjwqJiB4y0Bymgm58QfzT7+n4jn36knadvj+meFoxuTDZBezm86/5fu0pRgr
         akmA==
X-Gm-Message-State: AOAM532s/FrqmaaiJ4JQzW4CXvLlL0dqpCG+M80tEkIsvjUslXYkG1om
        vwmKcU/1HJ7IUNSzkJtc4CAJfw==
X-Google-Smtp-Source: ABdhPJwXDgDGE4kurypuQtW9+QL63Zj67ft6S/4YUjUrlUoeNcCHVQAQ3fujXqJ35JUeLd3io/WDlg==
X-Received: by 2002:a17:907:971a:b0:6fe:bdf6:b67e with SMTP id jg26-20020a170907971a00b006febdf6b67emr26024672ejc.312.1653647303477;
        Fri, 27 May 2022 03:28:23 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i (net-188-217-53-154.cust.vodafonedsl.it. [188.217.53.154])
        by smtp.gmail.com with ESMTPSA id cf8-20020a170907158800b006fe9e717143sm1312225ejc.94.2022.05.27.03.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 May 2022 03:28:23 -0700 (PDT)
Date:   Fri, 27 May 2022 12:28:20 +0200
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To:     Ming Qian <ming.qian@nxp.com>
Cc:     mchehab@kernel.org, mirela.rabulea@oss.nxp.com,
        hverkuil-cisco@xs4all.nl, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, linux-media@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] media: imx-jpeg: Leave a blank space before the
 configuration data
Message-ID: <20220527102820.GB24226@tom-ThinkPad-T14s-Gen-2i>
References: <20220527102444.19683-1-ming.qian@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220527102444.19683-1-ming.qian@nxp.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 27, 2022 at 06:24:44PM +0800, Ming Qian wrote:
> There is a hardware bug that it will load
> the first 128 bytes of configuration data twice,
> it will led to some configure error.
> so shift the configuration data 128 bytes,
> and make the first 128 bytes all zero,
> then hardware will load the 128 zero twice,
> and ignore them as garbage.
> then the configuration data can be loaded correctly
> 
> Signed-off-by: Ming Qian <ming.qian@nxp.com>
> Reviewed-by: Mirela Rabulea <mirela.rabulea@nxp.com>
> Reviewed-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
> ---
> v2
> - add some comments about why the 0x80 offset is needed
>  drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c b/drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c
> index 734e1b65fbc7..c0fd030d0f19 100644
> --- a/drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c
> +++ b/drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c
> @@ -519,6 +519,7 @@ static bool mxc_jpeg_alloc_slot_data(struct mxc_jpeg_dev *jpeg,
>  				     GFP_ATOMIC);
>  	if (!cfg_stm)
>  		goto err;
> +	memset(cfg_stm, 0, MXC_JPEG_MAX_CFG_STREAM);
>  	jpeg->slot_data[slot].cfg_stream_vaddr = cfg_stm;
>  
>  skip_alloc:
> @@ -755,7 +756,13 @@ static unsigned int mxc_jpeg_setup_cfg_stream(void *cfg_stream_vaddr,
>  					      u32 fourcc,
>  					      u16 w, u16 h)
>  {
> -	unsigned int offset = 0;
> +	/*
> +	 * There is a hardware issue that first 128 bytes of configuration data
> +	 * can't be loaded correctly.
> +	 * To avoid this issue, we need to write the configuration from
> +	 * an offset which should be no less than 0x80 (128 bytes).
> +	 */
> +	unsigned int offset = 0x80;
>  	u8 *cfg = (u8 *)cfg_stream_vaddr;
>  	struct mxc_jpeg_sof *sof;
>  	struct mxc_jpeg_sos *sos;
> -- 
> 2.36.1
> 

Looks good to me!

Thanks,
Tommaso

-- 
Tommaso Merciai
Embedded Linux Engineer
tommaso.merciai@amarulasolutions.com
__________________________________

Amarula Solutions SRL
Via Le Canevare 30, 31100 Treviso, Veneto, IT
T. +39 042 243 5310
info@amarulasolutions.com
www.amarulasolutions.com
