Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C735C4C4243
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 11:26:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235039AbiBYK0t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 05:26:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231214AbiBYK0t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 05:26:49 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B07F41DEAA6
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 02:26:17 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id bn33so6746282ljb.6
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 02:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wWkiKPp0yU51YIZBOYra9GP4j4G9QYqwO5yPBvcytuI=;
        b=OTdlbCcloAhlN/v+ZbSF/fydVTwpPRXxMmlE+7+s30HFgGm03WAAt8twDvEuaEJfn9
         Zv6QWe9jnaaCK0tnQef0t4rf8BQfUIM0jFQOEWN23hi79xzUW5zyO7IEyv2jn2QkD+9V
         AEMNKmVJYNXZU9Hwxha2va+GuXP/qBuuDksEhhg+oih08RmH/MPZ2WU6GEsoaX2gBLsR
         bLKlYfAj2TcDpg4HHOZwROkP1jIk2TsrsD2VyvMQmr/YYMg/MvEFeKtRs69uqthR+n+/
         vjnq3+21i1tAq8irdoG045HCbslBM2GlsbPy57MPZi2LpCEgEiUIXrSq3U1QmlsBUVqZ
         94Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wWkiKPp0yU51YIZBOYra9GP4j4G9QYqwO5yPBvcytuI=;
        b=fTSzLPB3CkBpFsiq88t5erOqeueVSfsV0FFIiESrIjtsajpsSxOvU/gTKeS0s8G/7S
         wVMHAURzUPMNsW1aKJyQmFKNr4rATLEFeRdJUlT+z4F2cdNBzT/0gJ5g/BlKog8FP8Xf
         5Pc2bfVz2ihGzTneg5ajWrSGZwcm70uiNS6Gg4/gI74P+3+U8jGTS9YfmdeLSUvM0YaZ
         94cna5XAfg86JyUJXuTMUtGmetLz4gECHesuVaeqcsiRb0fRQN5w76vHPnMeM54clkxc
         v0ttI97pbkvdWmHqMRB7tx7G4B1TzhyjGpR7iTtvjxqkZ9r9bk0Ubezo3o6e7xjHjXCv
         yWuQ==
X-Gm-Message-State: AOAM5305Z9nAgaRi8M7JirJCr7tx9jGVKcGTcsAwF8XjaPYF2M1LjXkQ
        Dnzz5DqI7E852vS3FwQTxO0=
X-Google-Smtp-Source: ABdhPJxS32kW61bz2PV5TVfzLTeGimkAktcHo9OysUKyXqkNxifBz36DVjPV0ZnKaOzpknqaSHhfXA==
X-Received: by 2002:a2e:9f02:0:b0:244:8e4b:5aaa with SMTP id u2-20020a2e9f02000000b002448e4b5aaamr4993707ljk.249.1645784775907;
        Fri, 25 Feb 2022 02:26:15 -0800 (PST)
Received: from [192.168.2.145] (109-252-137-194.dynamic.spd-mgts.ru. [109.252.137.194])
        by smtp.googlemail.com with ESMTPSA id w9-20020a05651203c900b0044399c17e58sm163232lfp.224.2022.02.25.02.26.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Feb 2022 02:26:15 -0800 (PST)
Message-ID: <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
Date:   Fri, 25 Feb 2022 13:26:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <digetx@gmail.com>
In-Reply-To: <20220225075150.2729401-11-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

25.02.2022 10:51, Sascha Hauer пишет:
> The rk3568 HDMI has an additional clock that needs to be enabled for the
> HDMI controller to work. The purpose of that clock is not clear. It is
> named "hclk" in the downstream driver, so use the same name.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v5:
>     - Use devm_clk_get_optional rather than devm_clk_get
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index fe4f9556239ac..c6c00e8779ab5 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -76,6 +76,7 @@ struct rockchip_hdmi {
>  	const struct rockchip_hdmi_chip_data *chip_data;
>  	struct clk *ref_clk;
>  	struct clk *grf_clk;
> +	struct clk *hclk_clk;
>  	struct dw_hdmi *hdmi;
>  	struct regulator *avdd_0v9;
>  	struct regulator *avdd_1v8;
> @@ -229,6 +230,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
>  		return PTR_ERR(hdmi->grf_clk);
>  	}
>  
> +	hdmi->hclk_clk = devm_clk_get_optional(hdmi->dev, "hclk");
> +	if (PTR_ERR(hdmi->hclk_clk) == -EPROBE_DEFER) {

Have you tried to investigate the hclk? I'm still thinking that's not
only HDMI that needs this clock and then the hardware description
doesn't look correct.
