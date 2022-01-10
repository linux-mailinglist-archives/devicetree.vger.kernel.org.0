Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6E4D489B15
	for <lists+devicetree@lfdr.de>; Mon, 10 Jan 2022 15:12:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235312AbiAJOM3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jan 2022 09:12:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235309AbiAJOM3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jan 2022 09:12:29 -0500
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AC1BC06173F
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 06:12:29 -0800 (PST)
Received: by mail-qk1-x729.google.com with SMTP id b85so14933736qkc.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 06:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4DQvnQ3Cgyp1i2b8VzPQ4ffSeU79jX0QQNrlOvytV+k=;
        b=OUoKQA5Bq99RZPfc/HvGf3IC0D0ABjqCwC4nhlM5NAzpqqcuigYGd2HXdBYHHsC9sG
         iK9MHGCKPpDTicEzbuKas1BW+7NlK5CttyrOGXV2O9hE/9CmP780h/Qr8WZzGY6m29xf
         xBQjrx7OzvS/2SMa3KpRiXvuJ+eZlhfnwAKEcFGlBG1kdSJ/M4S/oqatBIdq9C6ufCfp
         OMhkMCm7mM5YPt2QFK0gXY6mfj9JU1atLPNdpibcHx75wcKvggfl2hj1u17ww/f7nXDG
         1ZfE/83az1RzrQI1DH4o5qquWTFw0CRNkEA2MjWyVMuliSpZ0Mtr3VyUjIiX7mrJhYUq
         ZXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4DQvnQ3Cgyp1i2b8VzPQ4ffSeU79jX0QQNrlOvytV+k=;
        b=XdqfL9bgADLL6KsvYN6Cc1taGQIMGc+h3EieRG2/WwF1S0acA9jj7Hx4j886CuxD80
         Qefs4OueghxPTGdKyIWu1VJ4wA6D8vlTVS5QHYTzV3zCpXmb1nsZivrgkx6ZksQ0YfLY
         NizaxeT8rOiKABqYvF1c6Ij93e6nNWybgdoeNOXg/CFa+8FEG0gsIQPN5pKlrrH1Ai2F
         /uK/fs8a1+4RN06OlhPjS4zSxMLJdtdHjAKS/N5x/YimduucD0VpvWxaDN3aH7ArVQnd
         nsmYtFQ2J+rUnYdfm9hfzk06zaepOc9ISXXGl4gM58O5mjBifJDP9kTzo06fL6HjWsKc
         u3Dg==
X-Gm-Message-State: AOAM532woAptQZbvYB18DB4pCpDV7SwDlOLYGb7rZUQmmftv07JwDVkd
        dzt0nvfUnWbCxxcSA27xc3qQhKxzzQdukyBHtyjdJg==
X-Google-Smtp-Source: ABdhPJwc8URm7uyLRQ1JKPTzT8ft0eFiJWdpt88+kIZ845z3s0s9BABfuWZHZDyFD3Yj2xexfrVnVs0bMA5zP14V0ow=
X-Received: by 2002:a05:620a:1e1:: with SMTP id x1mr11386078qkn.363.1641823948169;
 Mon, 10 Jan 2022 06:12:28 -0800 (PST)
MIME-Version: 1.0
References: <1641819337-17037-1-git-send-email-quic_rajeevny@quicinc.com> <1641819337-17037-3-git-send-email-quic_rajeevny@quicinc.com>
In-Reply-To: <1641819337-17037-3-git-send-email-quic_rajeevny@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 10 Jan 2022 17:12:17 +0300
Message-ID: <CAA8EJpr_iEvv3oM-KteT7or3HyMk45Z8mzWyKwZ=rnASm-hNXA@mail.gmail.com>
Subject: Re: [v2 2/3] drm/msm/dsi: Add dsi phy tuning configuration support
To:     Rajeev Nandan <quic_rajeevny@quicinc.com>
Cc:     dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sean@poorly.run, robdclark@gmail.com,
        robh+dt@kernel.org, robh@kernel.org, quic_abhinavk@quicinc.com,
        quic_kalyant@quicinc.com, quic_mkrishn@quicinc.com,
        jonathan@marek.ca, airlied@linux.ie, daniel@ffwll.ch,
        swboyd@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 Jan 2022 at 15:56, Rajeev Nandan <quic_rajeevny@quicinc.com> wrote:
>
> Add support for MSM DSI PHY tuning configuration. Current design is
> to support drive strength and drive level/amplitude tuning for
> 10nm PHY version, but this can be extended to other PHY versions.
>
> Signed-off-by: Rajeev Nandan <quic_rajeevny@quicinc.com>
> ---
>
> Changes in v2:
>  - New.
>  - Split into generic code and 10nm-specific part (Dmitry Baryshkov)
>
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c |  3 +++
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h | 16 ++++++++++++++++
>  2 files changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> index 8c65ef6..ee3739d 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> @@ -739,6 +739,9 @@ static int dsi_phy_driver_probe(struct platform_device *pdev)
>                 }
>         }
>
> +       if (phy->cfg->ops.tuning_cfg_init)
> +               phy->cfg->ops.tuning_cfg_init(phy);

Please rename to parse_dt_properties() or something like that.

> +
>         ret = dsi_phy_regulator_init(phy);
>         if (ret)
>                 goto fail;
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> index b91303a..b559a2b 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> @@ -25,6 +25,7 @@ struct msm_dsi_phy_ops {
>         void (*save_pll_state)(struct msm_dsi_phy *phy);
>         int (*restore_pll_state)(struct msm_dsi_phy *phy);
>         bool (*set_continuous_clock)(struct msm_dsi_phy *phy, bool enable);
> +       void (*tuning_cfg_init)(struct msm_dsi_phy *phy);
>  };
>
>  struct msm_dsi_phy_cfg {
> @@ -81,6 +82,20 @@ struct msm_dsi_dphy_timing {
>  #define DSI_PIXEL_PLL_CLK              1
>  #define NUM_PROVIDED_CLKS              2
>
> +#define DSI_LANE_MAX                   5
> +
> +/**
> + * struct msm_dsi_phy_tuning_cfg - Holds PHY tuning config parameters.
> + * @rescode_offset_top: Offset for pull-up legs rescode.
> + * @rescode_offset_bot: Offset for pull-down legs rescode.
> + * @vreg_ctrl: vreg ctrl to drive LDO level
> + */
> +struct msm_dsi_phy_tuning_cfg {
> +       u8 rescode_offset_top[DSI_LANE_MAX];
> +       u8 rescode_offset_bot[DSI_LANE_MAX];
> +       u8 vreg_ctrl;
> +};

How generic is this? In other words, you are adding a struct with the
generic name to the generic structure. I'd expect that it would be
common to several PHY generations.

> +
>  struct msm_dsi_phy {
>         struct platform_device *pdev;
>         void __iomem *base;
> @@ -98,6 +113,7 @@ struct msm_dsi_phy {
>
>         struct msm_dsi_dphy_timing timing;
>         const struct msm_dsi_phy_cfg *cfg;
> +       struct msm_dsi_phy_tuning_cfg tuning_cfg;
>
>         enum msm_dsi_phy_usecase usecase;
>         bool regulator_ldo_mode;
> --
> 2.7.4
>


-- 
With best wishes
Dmitry
