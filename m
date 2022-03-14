Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E24594D8F8E
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 23:28:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244288AbiCNW3i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 18:29:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242517AbiCNW3h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 18:29:37 -0400
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BC5F11A35
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 15:28:26 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id g5-20020a4ae885000000b003240bc9b2afso9688119ooe.10
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 15:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=nQWuqg+ddOw1oV88Ty6v00QRPKt0GAj8NU+qEDYWO1I=;
        b=DWIDuPdANPxggwyxysS41MKFKbgxS7fkRxBrxcq4WZhLsEOVoC/190qUjKO0WrcEz2
         HiK0siER3AD5sgCRTQNgQ8/N5EX2OLxSNRG5cZ0leQS9KUP9kapFMG+dof6VDruanClL
         hh8qFFy6AiVYFXWrs6N4xXfPTWx6g5ZU1zLrOgwulN+/ejxqi1Pv/GF3zKo/R1ZmghSX
         yPFU8OfhQva/95dcbXAVEdH9oDcVDxRUT02RDoqZa2FGx3TcjyjRG8U7wOki+KQLldGY
         XdcI2t/BkHas1esRbgo4ySE9bY98ZY1WelKEct+9PpPijyvyMOujB6o3CErj58wtXgEK
         C3Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=nQWuqg+ddOw1oV88Ty6v00QRPKt0GAj8NU+qEDYWO1I=;
        b=FGHZomCxY7LYio9X4pQbVZfojRpmQ51SvATikNBgSF9juqWifYrjbBEKLyPgb2Ieky
         b3XQ8+HukPfugzpDCG7ugNT+W4T/TwwN/W+VdA80jJM96a1Dr2ADbPEU4Gc7WO3yEeTE
         IIIGs8Uge2sOvfowrS8OXxCdpIHbIBQbmyRox94vk7GgvrWj/ICR8ZE4JtIwACgVwiFj
         poSmSBMznNdvRVDQv6/RPtzBwSUvDyOoXh7V8TTtKunRtDljuigmliNVegv45VF3Lho/
         UiFjJxGpjXpLu2IUKEi/0GnADdihZPLqbmSgRdtlm8GRw+7LPgooT8+wXYkomDqtI9Qs
         3ZsA==
X-Gm-Message-State: AOAM533d0uZd1ESmhPLxT1FcAPvHO+U12oNFykCIyCAAX4flzzjp1eSN
        TodxF8jO2EoRxFEnme8OKan2VQ==
X-Google-Smtp-Source: ABdhPJwfNTLqkeOQnK1jvXc3XDq+dTSGGjbe07ZUKsKBp7CCf9AnvWDHI5pE6GufZ1uel/pwlnBIow==
X-Received: by 2002:a05:6870:17a1:b0:da:b3f:3258 with SMTP id r33-20020a05687017a100b000da0b3f3258mr512703oae.264.1647296905949;
        Mon, 14 Mar 2022 15:28:25 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id n128-20020a4a4086000000b0032118eda64bsm7991304ooa.38.2022.03.14.15.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 15:28:25 -0700 (PDT)
Date:   Mon, 14 Mar 2022 17:28:23 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Alexandre Bailon <abailon@baylibre.com>
Cc:     ohad@wizery.com, mathieu.poirier@linaro.org, robh+dt@kernel.or,
        matthias.bgg@gmail.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        stephane.leprovost@mediatek.com, khilman@baylibre.com,
        Julien STEPHAN <jstephan@baylibre.com>
Subject: Re: [PATCH v4 6/7] remoteproc: mtk-apu: Add support of MT8365
Message-ID: <Yi/Bh8CsB2bnE9Ca@builder.lan>
References: <20220304161514.994128-1-abailon@baylibre.com>
 <20220304161514.994128-7-abailon@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220304161514.994128-7-abailon@baylibre.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 04 Mar 10:15 CST 2022, Alexandre Bailon wrote:

> From: Julien STEPHAN <jstephan@baylibre.com>
> 
> This adds support of APU available in the MT8365.
> 
> Signed-off-by: Julien STEPHAN <jstephan@baylibre.com>
> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
> ---
>  drivers/remoteproc/mtk_apu.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/remoteproc/mtk_apu.c b/drivers/remoteproc/mtk_apu.c
> index deec51b86ba5..57dd73c63d3f 100644
> --- a/drivers/remoteproc/mtk_apu.c
> +++ b/drivers/remoteproc/mtk_apu.c
> @@ -96,6 +96,24 @@ static const struct mtk_apu_conf mt8183_conf = {
>  	.clk_names = mt8183_clk_names
>  };
>  
> +static const char * const mt8365_clk_names[] = {
> +	"if_ck",
> +	"edma",
> +	"ahb",
> +	"axi",
> +	"ipu",
> +	"jtag",
> +	"smi_cam",
> +	"ifr_apu_axi",
> +};
> +
> +static const struct mtk_apu_conf mt8365_conf = {
> +	.core_default0 = BIT(26) | BIT(20),
> +	.core_default1 = BIT(3) | BIT(7),

Would it be possible to get some defines for these bits as well?

Thanks,
Bjorn

> +	.num_clks = ARRAY_SIZE(mt8365_clk_names),
> +	.clk_names = mt8365_clk_names
> +};
> +
>  static int mtk_apu_iommu_map(struct rproc *rproc, struct rproc_mem_entry *entry)
>  {
>  	struct mtk_apu_rproc *apu_rproc = rproc->priv;
> @@ -633,6 +651,7 @@ static int mtk_apu_rproc_remove(struct platform_device *pdev)
>  
>  static const struct of_device_id mtk_apu_rproc_of_match[] = {
>  	{ .compatible = "mediatek,mt8183-apu", .data = &mt8183_conf },
> +	{ .compatible = "mediatek,mt8365-apu", .data = &mt8365_conf },
>  	{ /* sentinel */ },
>  };
>  MODULE_DEVICE_TABLE(of, mtk_apu_rproc_of_match);
> -- 
> 2.34.1
> 
