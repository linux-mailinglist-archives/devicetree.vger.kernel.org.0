Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDB1F396782
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 19:57:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232045AbhEaR6w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 13:58:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231997AbhEaR6v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 13:58:51 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A60EC061574
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 10:57:10 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id f12so15976183ljp.2
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 10:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sjGZmsfFp/UOuSzQORD2nudXv9W+sFfiJPaPSogdWlM=;
        b=cBqc5YKm9oxk8wkGFtsy6bmh6Kzc1awzqSTVVxKgBAaJXzcshVY80xBr9QDXTbasz6
         bsR+mpQlkzNf05BAvtdR6YrS2l7cxdC1L/Y1u1ZEJsy+sEmUKQnrox1cH7mvhAEsyNHg
         r8CUY/VpsmZm9SumqUvO4tSTS4lsUnTbEVWWMXIJOiNaymRIus1ldGF35UnpBS9ADzL9
         x1w+ER/ZFHdGbwTfJNlVUeuDPNIFqCl91qmO4fHPzkIi+E+Ij1SqPjOVOlxLv/2Rsw9Q
         aLclZQcpP/dGYufPL7zUagcFnDJdx/dDHEKPzx395wI6P2b5OmvICf28kimOEk7/SD0q
         W09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sjGZmsfFp/UOuSzQORD2nudXv9W+sFfiJPaPSogdWlM=;
        b=boUH2J0SqMh9UccF7U/opB7yF01/8LXii6hVIAQ5+BPJ67Wl2H+3Y3qRMEgeqHWvoO
         jhLsIE6pE76o4VbEnQTopMX4/nzUJsqomDbTzIpAcOnqK4YZOAAoMf2kX+uHxG+eQLo8
         3jYAEQ4T00VFxW8tEmI9kn2NNS7RBcKVsYHIJdcL+BzoTw4vMlif7ZFfYebfvWKJra35
         n/XWSaZ2qLjG9CL8eaohnJ0pH4/Uvm+9xVAUAt80UmDY6GkpCgYNDfCAzHb4mvTLfJrb
         bNjhC9XlJm83xVaEBv+PBYq1TZP1qVDnGmfdDsD3qmk2e5TWZswsP0d5jq5Ll1F5N0qy
         e1Ow==
X-Gm-Message-State: AOAM532HxzdLRzNb1/rp3M9WzftwkGWE41uoTsk2ur5aIfqXhiTTnegZ
        2Oj5tPMye77QaMFtwPMowYxGWw==
X-Google-Smtp-Source: ABdhPJz0MIiGVgSvBAZS9tl8Pnpzl/E1hQI2wkn1dtJaP5RqncKnNMnUbbDm4atWwvJ7AscsHMdI5g==
X-Received: by 2002:a2e:681a:: with SMTP id c26mr9266477lja.306.1622483828860;
        Mon, 31 May 2021 10:57:08 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w24sm1408417lfa.143.2021.05.31.10.57.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 May 2021 10:57:08 -0700 (PDT)
Subject: Re: [v1 2/3] drm/msm/dsi: Add PHY configuration for SC7280
To:     Rajeev Nandan <rajeevny@codeaurora.org>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, sean@poorly.run, robdclark@gmail.com,
        robh+dt@kernel.org, abhinavk@codeaurora.org,
        kalyan_t@codeaurora.org, mkrishn@codeaurora.org, jonathan@marek.ca
References: <1622468035-8453-1-git-send-email-rajeevny@codeaurora.org>
 <1622468035-8453-3-git-send-email-rajeevny@codeaurora.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <7a3facb5-d118-f81b-65f8-381b0d56a23b@linaro.org>
Date:   Mon, 31 May 2021 20:57:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <1622468035-8453-3-git-send-email-rajeevny@codeaurora.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2021 16:33, Rajeev Nandan wrote:
> The SC7280 SoC uses the 7nm (V4.1) DSI PHY driver with
> different enable|disable regulator loads.
> 
> Signed-off-by: Rajeev Nandan <rajeevny@codeaurora.org>
> ---
>   drivers/gpu/drm/msm/Kconfig               |  6 +++---
>   drivers/gpu/drm/msm/dsi/phy/dsi_phy.c     |  2 ++
>   drivers/gpu/drm/msm/dsi/phy/dsi_phy.h     |  1 +
>   drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 22 ++++++++++++++++++++++
>   4 files changed, 28 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/Kconfig b/drivers/gpu/drm/msm/Kconfig
> index 10f693e..7c9d9f1 100644
> --- a/drivers/gpu/drm/msm/Kconfig
> +++ b/drivers/gpu/drm/msm/Kconfig
> @@ -114,9 +114,9 @@ config DRM_MSM_DSI_10NM_PHY
>   	  Choose this option if DSI PHY on SDM845 is used on the platform.
>   
>   config DRM_MSM_DSI_7NM_PHY
> -	bool "Enable DSI 7nm PHY driver in MSM DRM (used by SM8150/SM8250)"
> +	bool "Enable DSI 7nm PHY driver in MSM DRM"
>   	depends on DRM_MSM_DSI
>   	default y
>   	help
> -	  Choose this option if DSI PHY on SM8150/SM8250 is used on the
> -	  platform.
> +	  Choose this option if DSI PHY on SM8150/SM8250/SC7280 is used on
> +	  the platform.
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> index ff7f2ec..2770783 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> @@ -593,6 +593,8 @@ static const struct of_device_id dsi_phy_dt_match[] = {
>   	  .data = &dsi_phy_7nm_cfgs },
>   	{ .compatible = "qcom,dsi-phy-7nm-8150",
>   	  .data = &dsi_phy_7nm_8150_cfgs },
> +	{ .compatible = "qcom,dsi-phy-7nm-7280",
> +	  .data = &dsi_phy_7nm_7280_cfgs },
>   #endif
>   	{}
>   };
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> index 94a77ac..bc91dc8 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> @@ -51,6 +51,7 @@ extern const struct msm_dsi_phy_cfg dsi_phy_10nm_cfgs;
>   extern const struct msm_dsi_phy_cfg dsi_phy_10nm_8998_cfgs;
>   extern const struct msm_dsi_phy_cfg dsi_phy_7nm_cfgs;
>   extern const struct msm_dsi_phy_cfg dsi_phy_7nm_8150_cfgs;
> +extern const struct msm_dsi_phy_cfg dsi_phy_7nm_7280_cfgs;
>   
>   struct msm_dsi_dphy_timing {
>   	u32 clk_zero;
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> index e76ce40..6e30d21 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> @@ -998,3 +998,25 @@ const struct msm_dsi_phy_cfg dsi_phy_7nm_8150_cfgs = {
>   	.io_start = { 0xae94400, 0xae96400 },
>   	.num_dsi_phy = 2,
>   };
> +
> +const struct msm_dsi_phy_cfg dsi_phy_7nm_7280_cfgs = {
> +	.has_phy_lane = true,
> +	.reg_cfg = {
> +		.num = 1,
> +		.regs = {
> +			{"vdds", 37550, 0},
> +		},
> +	},
> +	.ops = {
> +		.enable = dsi_7nm_phy_enable,
> +		.disable = dsi_7nm_phy_disable,
> +		.pll_init = dsi_pll_7nm_init,
> +		.save_pll_state = dsi_7nm_pll_save_state,
> +		.restore_pll_state = dsi_7nm_pll_restore_state,
> +	},
> +	.min_pll_rate = 600000000UL,
> +	.max_pll_rate = (5000000000ULL < ULONG_MAX) ? 5000000000ULL : ULONG_MAX,

Could you please follow the patch by Arnd here? 
https://lore.kernel.org/linux-arm-msm/20210514213032.575161-1-arnd@kernel.org/



> +	.io_start = { 0xae94400, 0xae96400 },
> +	.num_dsi_phy = 2,

Judging from the next patch, you have one DSI host and one DSI PHY. 
Could you please correct io_start / num_dsi_phy here?

> +	.quirks = DSI_PHY_7NM_QUIRK_V4_1,
> +};


With these two issues fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry
