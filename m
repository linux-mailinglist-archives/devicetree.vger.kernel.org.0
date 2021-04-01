Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01D163520B3
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 22:43:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234601AbhDAUnz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 16:43:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234276AbhDAUnz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 16:43:55 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 404E0C061788
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 13:43:55 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id j34so313134pgj.12
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 13:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TnAGkom8Le/1tSh1IELvZ1Rrn3to1YCHlf+sinRlIwM=;
        b=Ldyj+5xxbV9Etk8DHCPhNAyEYkdcYT7rLxLCzKHU0qIBBuySi6gyDEXOai8sD8f2wp
         aY5Tah5rIF9eOnQsVa9s4r2zKoVZtrYDoZOxcSJTNQjsKd2quyCyFjXiF829WO+3ppmQ
         7AEQM2SAaeYHSoVlbQ6AEylgvXYACvboHzJiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TnAGkom8Le/1tSh1IELvZ1Rrn3to1YCHlf+sinRlIwM=;
        b=Q+6e1P8501TuBP5o/wmTTTLREPvIQlJttDGQqGfosKqBGX0ACs3mT8zppq47LQLXhc
         ePWWrADZUbr6tVZfpWQ5G/q9Jrpn5rn5m4EbEgM8V3AZWJ8I5vUrbXO8qckLPW//1wKB
         QjyBiO+pcEgT3gbmL8UzjyCl71tKPeLXYi/mXhMMD9vy3qcLx/CeNzQUJROLinnTFVUr
         gDxhcY+s2fw/7j6P4kTU/viE16lFhpD3jEjOLMV+G1TzX6LTVwbGK09Ylbu9NrCA20Q2
         xVvJnLJahpSHcW4PQ7sSWjidBZkHqNshhAAxvUJOstOxXJtStPsl9+vb6zhPXlzUssjY
         9qwQ==
X-Gm-Message-State: AOAM531uqI0cW1n+HWK+KtTfIXQWYPG5ppK1qYiMinhMmCIxLlnDwrKE
        7NgPMSsDkBa+7zAGcZcAIxZKKw==
X-Google-Smtp-Source: ABdhPJzWYMInelb3OBb+GquXH+zlhP1gaOEP+g2jJ2fJflUKlb7bxDr5oaLogs1O3v7DD1Zfe9fG1w==
X-Received: by 2002:a63:3008:: with SMTP id w8mr9117215pgw.342.1617309834858;
        Thu, 01 Apr 2021 13:43:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x4sm5925350pfn.134.2021.04.01.13.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 13:43:54 -0700 (PDT)
Date:   Thu, 1 Apr 2021 13:43:53 -0700
From:   Kees Cook <keescook@chromium.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     vkoul@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] soundwire: qcom: handle return correctly in
 qcom_swrm_transport_params
Message-ID: <202104011343.B1944F3@keescook>
References: <20210401091502.15825-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210401091502.15825-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 01, 2021 at 10:15:02AM +0100, Srinivas Kandagatla wrote:
> Looks like return from reg_write is set but not checked.
> Fix this by adding error return path.
> 
> Reported-by: coverity-bot <keescook+coverity-bot@chromium.org>
> Addresses-Coverity-ID: 1503591 ("UNUSED_VALUE")
> Fixes: 128eaf937adb ("soundwire: qcom: add support to missing transport params")
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Thanks for fixing this!

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  drivers/soundwire/qcom.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
> index 5fd4a99cc8ac..348d9a46f850 100644
> --- a/drivers/soundwire/qcom.c
> +++ b/drivers/soundwire/qcom.c
> @@ -731,17 +731,23 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
>  	value |= pcfg->si;
>  
>  	ret = ctrl->reg_write(ctrl, reg, value);
> +	if (ret)
> +		goto err;
>  
>  	if (pcfg->lane_control != SWR_INVALID_PARAM) {
>  		reg = SWRM_DP_PORT_CTRL_2_BANK(params->port_num, bank);
>  		value = pcfg->lane_control;
>  		ret = ctrl->reg_write(ctrl, reg, value);
> +		if (ret)
> +			goto err;
>  	}
>  
>  	if (pcfg->blk_group_count != SWR_INVALID_PARAM) {
>  		reg = SWRM_DP_BLOCK_CTRL2_BANK(params->port_num, bank);
>  		value = pcfg->blk_group_count;
>  		ret = ctrl->reg_write(ctrl, reg, value);
> +		if (ret)
> +			goto err;
>  	}
>  
>  	if (pcfg->hstart != SWR_INVALID_PARAM
> @@ -755,11 +761,15 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
>  		ret = ctrl->reg_write(ctrl, reg, value);
>  	}
>  
> +	if (ret)
> +		goto err;
> +
>  	if (pcfg->bp_mode != SWR_INVALID_PARAM) {
>  		reg = SWRM_DP_BLOCK_CTRL3_BANK(params->port_num, bank);
>  		ret = ctrl->reg_write(ctrl, reg, pcfg->bp_mode);
>  	}
>  
> +err:
>  	return ret;
>  }
>  
> -- 
> 2.21.0
> 

-- 
Kees Cook
