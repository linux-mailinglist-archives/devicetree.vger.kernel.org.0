Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04F673DBCB6
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 17:58:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231757AbhG3P6R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 11:58:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230195AbhG3P6P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 11:58:15 -0400
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39C47C061765
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 08:58:10 -0700 (PDT)
Received: by mail-oo1-xc2e.google.com with SMTP id s21-20020a4ae5550000b02902667598672bso2560254oot.12
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 08:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=xXNqWSr/rOC4EQDcPG5tueBmU/blNavYsUX/3Rklcr8=;
        b=TDxHet75+KJYPXBOyj4Qpsipf04ggYz4gNIiL7z5WeCaNCEbDWbw1ludfUUdIAwnWl
         QELftxDKswIa8A3hXuESnq0jCFZVthL2BR0JI6HaeD3lRv42W+9LVTO//VJ4T1NM853T
         ORYy1yyDaJHLj0a20bBy2HOXSkLPGzewxTAU7JEbvpQzabOxTg7cDCNVVXV6kiXVtewj
         d0m2Aax3ksfa5nt2bjLkkU6+oWaj8MC0vGZMHyB3cVsUbh8mrvU0HV8YRVBkXsOamJ6Q
         sm5hNuAcWgRt99OxxHE6bWTzukgLVRxjqOLPgz+9zzWfR3s3s9V0XZOn9GTY+p4uAM/D
         OhiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xXNqWSr/rOC4EQDcPG5tueBmU/blNavYsUX/3Rklcr8=;
        b=PRItvqtQOaFAE8An3eaBAqUbK78Qa3tgNb7k/V8IAU1VEIwPA/630YY2B4N/kIA59s
         oWKQN/3H3Mu2rlytxyParUtSiiQFHUzI2v8F/z6dumnEfnAitdogHVgmSZfBW8Uy5036
         buOX5suCffPtsGyKr0VV6uy+V2g8+OcefG+FwPfoOJoA/zuUj63FB9adWtJWAlsNzzbZ
         u4ZhUN9Ycl7oSFmQWt6a1T9rcx7W/rMaKrU6tE7+iYb9X+XPNVREVwtyfhljcWnxA4YM
         Y7ngyjK5G+PxKDvE97u9fVjZ1Q+beabuLPnaNBT7wEhYANAcPqtMB2/x6rKm9ETYgmYB
         +v/w==
X-Gm-Message-State: AOAM5315eitb44q868DLZFA2u59Sh6uAfAVwzF3s/ptNHZwWE80Z/8KJ
        wrXYfjPftiBCUtnHnqaETGRAug==
X-Google-Smtp-Source: ABdhPJxNj8jj5sY4NGuc2RO8NVr4KbyZYhV+2uDrbtcKs+ITXyvoyO/r+/cURV1f+got7YHENp8UZg==
X-Received: by 2002:a4a:6042:: with SMTP id t2mr2154509oof.31.1627660688308;
        Fri, 30 Jul 2021 08:58:08 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id z22sm282294ooz.20.2021.07.30.08.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 08:58:07 -0700 (PDT)
Date:   Fri, 30 Jul 2021 10:58:06 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Tinghan Shen <tinghan.shen@mediatek.com>
Cc:     ohad@wizery.com, mathieu.poirier@linaro.org, robh+dt@kernel.org,
        matthias.bgg@gmail.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        srv_heupstream@mediatek.com, tzungbi@google.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v4 4/4] remoteproc: mediatek: Support mt8195 scp
Message-ID: <YQQhjuqAaT1xaIWM@builder.lan>
References: <20210728035859.5405-1-tinghan.shen@mediatek.com>
 <20210728035859.5405-5-tinghan.shen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210728035859.5405-5-tinghan.shen@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 27 Jul 22:58 CDT 2021, Tinghan Shen wrote:

> The SCP clock design is changed on mt8195 that doesn't need to control
> SCP clock on kernel side.
> 
> Signed-off-by: Tinghan Shen <tinghan.shen@mediatek.com>
> ---
>  drivers/remoteproc/mtk_scp.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
> index 9679cc26895e..250cb946ea37 100644
> --- a/drivers/remoteproc/mtk_scp.c
> +++ b/drivers/remoteproc/mtk_scp.c
> @@ -785,7 +785,7 @@ static int scp_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto destroy_mutex;
>  
> -	scp->clk = devm_clk_get(dev, "main");
> +	scp->clk = devm_clk_get_optional(dev, "main");

This makes the clock optional for mt8183 and mt8192 as well.

How about using mtk_scp_of_data to denote if the clock should be
acquired?

Regards,
Bjorn

>  	if (IS_ERR(scp->clk)) {
>  		dev_err(dev, "Failed to get clock\n");
>  		ret = PTR_ERR(scp->clk);
> @@ -877,6 +877,7 @@ static const struct mtk_scp_of_data mt8192_of_data = {
>  static const struct of_device_id mtk_scp_of_match[] = {
>  	{ .compatible = "mediatek,mt8183-scp", .data = &mt8183_of_data },
>  	{ .compatible = "mediatek,mt8192-scp", .data = &mt8192_of_data },
> +	{ .compatible = "mediatek,mt8195-scp", .data = &mt8192_of_data },
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, mtk_scp_of_match);
> -- 
> 2.18.0
> 
