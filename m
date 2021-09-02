Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77A8F3FF707
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 00:18:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239006AbhIBWTw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Sep 2021 18:19:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232947AbhIBWTu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Sep 2021 18:19:50 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A09DC061757
        for <devicetree@vger.kernel.org>; Thu,  2 Sep 2021 15:18:51 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id s10so7555096lfr.11
        for <devicetree@vger.kernel.org>; Thu, 02 Sep 2021 15:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=I80/njeEuIl/GJzCkVNPmxV3BIOQ6IK40gpDFUmpFPE=;
        b=tLstc1tkclrh6VOyGN9XpBl8QeZOtuFjU0HMW1kDqb2Ro3mZk9hu2ykmGSK5LV9IO0
         cnD0qj8qJXnnQGJSjxUeWU9eK5WUXuA/q4LmwChkV3jY/PY+JvPKsNGaH9bYiF6OZ2tZ
         e252aM2vQxImXCclXV/qCdELwWNFAB+2LfJKcDbC8H6ZQ2fkcbdRJWz2d7WNF3qxobyD
         cxHCZuA7LdbG6bsMMVrQ93rq/sqzxXo+uiOCkRAW94unqvdYhZVK1FBaV7585PRI59dA
         Qg4lLcdre8f9qfQYqgBP4/A4VwpdqjwkLUePQVbBmWk1N2xKomIrBd0bI5osbXD0j/xn
         Ls4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=I80/njeEuIl/GJzCkVNPmxV3BIOQ6IK40gpDFUmpFPE=;
        b=ZjdcfC3r9Lpeb6vdGexv4ta6mDTF17VkfTDxB27Se5olnWYpj3yaRsmMxtbQafIJDR
         6rqSq9rDD6F9YTT4+50yx4rSvAzsyWMgKxEyd+kZ9wngpzwg9bK2VqVZPnx8KN6eDkM+
         cWUqq0IUmUR7Wkmn3XoIAyRTR17bRsScWQzb/gEDTZUUoI2VGMQew51+hT5EytDk4qAt
         qGb5KkQBcxjJY3etgK8kNTQLnUxvTZpNDs+1lwhBdXHq4+wWnekmM818nrv87Ps4QJsr
         bQbu0GSVfDOa5Tbome+uFCkoE9fRvwX57rINdSmqLUcItajMdD8qEqoRQIFw/ug4MWRL
         YpFg==
X-Gm-Message-State: AOAM531p6+UQsY7Xi8bJBs9/JEYaQWzBTj2Cjlv26Gtf5EpMv0+2Ocdc
        CyJXxYyTfbns0FThdjqQ+Uu38cfvwGGp+A==
X-Google-Smtp-Source: ABdhPJxKIbhDHEhz+WnPbtRExtRO7GyqAmUYcs+ViGPRRMFhDPW3GRnWUUrydse7XnAuWXqHyU6+jw==
X-Received: by 2002:a19:c3ca:: with SMTP id t193mr262222lff.21.1630621129639;
        Thu, 02 Sep 2021 15:18:49 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m5sm309732lfk.267.2021.09.02.15.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Sep 2021 15:18:49 -0700 (PDT)
Subject: Re: [PATCH 1/2] drm/msm/dsi: Add phy configuration for MSM8953
To:     Sireesh Kodali <sireeshkodali1@gmail.com>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        dri-devel@lists.freedesktop.org, airlied@linux.ie,
        robdclark@gmail.com, linux-arm-msm@vger.kernel.org,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Sean Paul <sean@poorly.run>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Rajeev Nandan <rajeevny@codeaurora.org>,
        Krishna Manikandan <mkrishn@codeaurora.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20210902155951.6672-1-sireeshkodali1@gmail.com>
 <20210902155951.6672-2-sireeshkodali1@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <70676288-731f-fc14-42bb-c955efc64c57@linaro.org>
Date:   Fri, 3 Sep 2021 01:18:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210902155951.6672-2-sireeshkodali1@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/09/2021 18:59, Sireesh Kodali wrote:
> From: Vladimir Lypak <vladimir.lypak@gmail.com>
> 
> Add phy configuration for 14nm dsi phy found on MSM8953 SoC. Only
> difference from existing configurations are io_start addresses.
> 
> Signed-off-by: Vladimir Lypak <vladimir.lypak@gmail.com>
> Signed-off-by: Sireesh Kodali <sireeshkodali1@gmail.com>
> ---
>   .../bindings/display/msm/dsi-phy-14nm.yaml    |  1 +
>   drivers/gpu/drm/msm/dsi/phy/dsi_phy.c         |  2 ++
>   drivers/gpu/drm/msm/dsi/phy/dsi_phy.h         |  1 +
>   drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c    | 21 +++++++++++++++++++
>   4 files changed, 25 insertions(+)

Please split dt-bindings to a separate patch, to be acked by Rob Herring.

After that, the dsi/phy/* part is:
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> index 72a00cce0147..7527fb299caa 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> @@ -17,6 +17,7 @@ properties:
>       oneOf:
>         - const: qcom,dsi-phy-14nm
>         - const: qcom,dsi-phy-14nm-660
> +      - const: qcom,dsi-phy-14nm-8953
>   
>     reg:
>       items:
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> index 8c65ef6968ca..9842e04b5858 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> @@ -627,6 +627,8 @@ static const struct of_device_id dsi_phy_dt_match[] = {
>   	  .data = &dsi_phy_14nm_cfgs },
>   	{ .compatible = "qcom,dsi-phy-14nm-660",
>   	  .data = &dsi_phy_14nm_660_cfgs },
> +	{ .compatible = "qcom,dsi-phy-14nm-8953",
> +	  .data = &dsi_phy_14nm_8953_cfgs },
>   #endif
>   #ifdef CONFIG_DRM_MSM_DSI_10NM_PHY
>   	{ .compatible = "qcom,dsi-phy-10nm",
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> index b91303ada74f..4c8257581bfc 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> @@ -48,6 +48,7 @@ extern const struct msm_dsi_phy_cfg dsi_phy_20nm_cfgs;
>   extern const struct msm_dsi_phy_cfg dsi_phy_28nm_8960_cfgs;
>   extern const struct msm_dsi_phy_cfg dsi_phy_14nm_cfgs;
>   extern const struct msm_dsi_phy_cfg dsi_phy_14nm_660_cfgs;
> +extern const struct msm_dsi_phy_cfg dsi_phy_14nm_8953_cfgs;
>   extern const struct msm_dsi_phy_cfg dsi_phy_10nm_cfgs;
>   extern const struct msm_dsi_phy_cfg dsi_phy_10nm_8998_cfgs;
>   extern const struct msm_dsi_phy_cfg dsi_phy_7nm_cfgs;
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c
> index d13552b2213b..9a6b1f0cbbaf 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c
> @@ -1065,3 +1065,24 @@ const struct msm_dsi_phy_cfg dsi_phy_14nm_660_cfgs = {
>   	.io_start = { 0xc994400, 0xc996000 },
>   	.num_dsi_phy = 2,
>   };
> +
> +const struct msm_dsi_phy_cfg dsi_phy_14nm_8953_cfgs = {
> +	.has_phy_lane = true,
> +	.reg_cfg = {
> +		.num = 1,
> +		.regs = {
> +			{"vcca", 17000, 32},
> +		},
> +	},
> +	.ops = {
> +		.enable = dsi_14nm_phy_enable,
> +		.disable = dsi_14nm_phy_disable,
> +		.pll_init = dsi_pll_14nm_init,
> +		.save_pll_state = dsi_14nm_pll_save_state,
> +		.restore_pll_state = dsi_14nm_pll_restore_state,
> +	},
> +	.min_pll_rate = VCO_MIN_RATE,
> +	.max_pll_rate = VCO_MAX_RATE,
> +	.io_start = { 0x1a94400, 0x1a96400 },
> +	.num_dsi_phy = 2,
> +};
> 


-- 
With best wishes
Dmitry
