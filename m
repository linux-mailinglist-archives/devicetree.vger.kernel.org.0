Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6382C66BD0F
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 12:42:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229905AbjAPLmb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 06:42:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbjAPLm3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 06:42:29 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 564C244B1
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 03:42:28 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id bf43so42326862lfb.6
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 03:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8alpE84haBpAlGC5fv3YsfVfBsM7ld5gaS/vHx9laZg=;
        b=FnFBBdw1o080vlBaMuU+1YINSH4p9MFeiEdh31cxMrfLEQpi6T3HPp5KN0iqvs4v6x
         JixjWLdWi9I0A6lwJisDwO0RYBbIlJYP1PPQHm0uBpT0SLP2lnKk1SAzU6GlGucU8LRH
         6FohXZpXyvAGSrdt8RvOih8iqU+IuSaxqjBYGmjbnSyIbk3HQMLfguSpVEIbWDVp8rLD
         rNWp9Qvk8+2ty+/dUHGSuRtW/G8yW5pZ3dHgMx0KPJVMKCQ+UI6m+w7b2Si8EHLDKcLh
         OiM/3thsEdYuYprNNH3M+uQB6ii2EPWgpYsTwzn2ZDCErDWPdPG0rPYbT2vMkkoqrT6C
         1yXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8alpE84haBpAlGC5fv3YsfVfBsM7ld5gaS/vHx9laZg=;
        b=oZO63bMqprT3vqirlCPZXbtPTaojs3vpXjpbi2KGnvfuwBWmqLegOoU7HYV6V66Zm+
         VWgur2Y3YtLEWsR+5oNlhsac7TPQlW7Drk+9FmaK5W7K8+EfzDEy4NvtduJZ0BceZXBO
         VKPI3muQZ0hzo9a5Nndp/s937cYAFWmXu966D/5xrsLTfoencLwDoMGqcepRV8TZRF8K
         J9Ui4ZzDjjAlZ1aJ+OL7jHSfCw1fP20F5YAGqRI54lVTV78FBiyUqyQUx1KOCOjvoMsp
         k9DXlg1n05+c4Jg1BQZ+Hz8GMm251KYhLlSdEbPH/CBbsOZjHmqhsNoCfvaNGeTMmOHv
         uswg==
X-Gm-Message-State: AFqh2kpCdC1m9pyRonLbM8OTevcHRQYM61Ijo7ew+GCqUAeNf7YnJ4/Y
        2L5kr8XTRujU6dEVkE4C4N8SzQ==
X-Google-Smtp-Source: AMrXdXtZ1YSP0FnloGa8eNhbLOm/AaBOt9AoW3ogXFDuQXfP0b1/BxttdWyJN1ZDwNnwsmnzbpk8RQ==
X-Received: by 2002:a05:6512:3f26:b0:4a4:68b9:66bf with SMTP id y38-20020a0565123f2600b004a468b966bfmr32081641lfa.10.1673869346720;
        Mon, 16 Jan 2023 03:42:26 -0800 (PST)
Received: from [192.168.1.101] (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id i22-20020a056512225600b004cc9edb0f99sm2242220lfu.44.2023.01.16.03.42.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 03:42:26 -0800 (PST)
Message-ID: <3b4e5183-25c4-ab04-6b0c-74a57540d00e@linaro.org>
Date:   Mon, 16 Jan 2023 12:42:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/2] drm/msm/dsi: Add phy configuration for SM6375
Content-Language: en-US
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Marek <jonathan@marek.ca>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Douglas Anderson <dianders@chromium.org>,
        sunliming <sunliming@kylinos.cn>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        =?UTF-8?B?Sm9zw6kgRXhww7NzaXRv?= <jose.exposito89@gmail.com>,
        Rajeev Nandan <quic_rajeevny@quicinc.com>,
        Loic Poulain <loic.poulain@linaro.org>
References: <20230116114059.346327-1-konrad.dybcio@linaro.org>
 <20230116114059.346327-2-konrad.dybcio@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230116114059.346327-2-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 16.01.2023 12:40, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@somainline.org>
> 
> SM6375 uses a boring standard 7nm PHY. Add a configuration entry for it.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Sorry, bit messy revisiting old patches before the email change..

Konrad
> Depends on [1] to work properly, but won't hurt for it to land
> separately..
> 
> [1] https://patchwork.kernel.org/project/linux-arm-msm/patch/1642586079-12472-1-git-send-email-loic.poulain@linaro.org/
> 
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c     |  2 ++
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h     |  1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 20 ++++++++++++++++++++
>  3 files changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> index cbe669fca26d..57445a5dc816 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> @@ -569,6 +569,8 @@ static const struct of_device_id dsi_phy_dt_match[] = {
>  	  .data = &dsi_phy_7nm_8150_cfgs },
>  	{ .compatible = "qcom,sc7280-dsi-phy-7nm",
>  	  .data = &dsi_phy_7nm_7280_cfgs },
> +	{ .compatible = "qcom,sm6375-dsi-phy-7nm",
> +	  .data = &dsi_phy_7nm_6375_cfgs },
>  	{ .compatible = "qcom,sm8350-dsi-phy-5nm",
>  	  .data = &dsi_phy_5nm_8350_cfgs },
>  	{ .compatible = "qcom,sm8450-dsi-phy-5nm",
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> index 5f0b1c9b09ef..c849bfd7494e 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> @@ -55,6 +55,7 @@ extern const struct msm_dsi_phy_cfg dsi_phy_14nm_8953_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_10nm_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_10nm_8998_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_7nm_cfgs;
> +extern const struct msm_dsi_phy_cfg dsi_phy_7nm_6375_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_7nm_8150_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_7nm_7280_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_5nm_8350_cfgs;
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> index af5c952c6ad0..3b1ed02f644d 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> @@ -1152,6 +1152,26 @@ const struct msm_dsi_phy_cfg dsi_phy_7nm_cfgs = {
>  	.quirks = DSI_PHY_7NM_QUIRK_V4_1,
>  };
>  
> +const struct msm_dsi_phy_cfg dsi_phy_7nm_6375_cfgs = {
> +	.has_phy_lane = true,
> +	.ops = {
> +		.enable = dsi_7nm_phy_enable,
> +		.disable = dsi_7nm_phy_disable,
> +		.pll_init = dsi_pll_7nm_init,
> +		.save_pll_state = dsi_7nm_pll_save_state,
> +		.restore_pll_state = dsi_7nm_pll_restore_state,
> +	},
> +	.min_pll_rate = 600000000UL,
> +#ifdef CONFIG_64BIT
> +	.max_pll_rate = 5000000000ULL,
> +#else
> +	.max_pll_rate = ULONG_MAX,
> +#endif
> +	.io_start = { 0x5e94400 },
> +	.num_dsi_phy = 1,
> +	.quirks = DSI_PHY_7NM_QUIRK_V4_1,
> +};
> +
>  const struct msm_dsi_phy_cfg dsi_phy_7nm_8150_cfgs = {
>  	.has_phy_lane = true,
>  	.regulator_data = dsi_phy_7nm_36mA_regulators,
