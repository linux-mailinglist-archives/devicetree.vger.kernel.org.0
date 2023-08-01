Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B7E276AF57
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 11:46:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233398AbjHAJqy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 05:46:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233407AbjHAJoz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 05:44:55 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D4E0173D
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 02:42:42 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3fb4146e8ceso50407865e9.0
        for <devicetree@vger.kernel.org>; Tue, 01 Aug 2023 02:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690882961; x=1691487761;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=B8htkPfQN7tDCTKzLvcKLdUtnIHD1CgSdgnE1gTJ9+A=;
        b=GOFohhf7EJlA6jrKUeTDGHDzyuW7gl2OJAwUqkqYQeM8p3uwkHQtamtSxytNvLo5ie
         3dtsNnrjYJpsfkpJJ3X1biDoOBEzJcRxLsCW3xw1089uR4gJrvQZe4T+JjzKKMMQtMJT
         c1h73M90WwJEXC/cA3GhxA3kyLlJUN38rJXBI/w+FzoZe65JH8TmyaxaHOfnQ0jUpfUJ
         IkMrcpxgXqGjFWzSJeGpYq2xNRJLIEK3UdOl2Wp6Wlr9O3KW+Y4m/hSPiBPdDt+0h2bV
         3TVSwqECd9JWHfOF8rJWy5jPGvCR3q8tLWBOB2P5MPPEau0rGh9eXch5VRRAKwpW8pHW
         TL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690882961; x=1691487761;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B8htkPfQN7tDCTKzLvcKLdUtnIHD1CgSdgnE1gTJ9+A=;
        b=CbGu7qEM1uLm7+0qfJsgGRN2bJSncbUq6uYJXlapOKXVOUOgHMx3CU9h4I5yHDCcKn
         /1YN7+K4PKzxnRnffkuryZ47m9ZXbYHSYKKRBqsZJj6DhbTAWAwb3daAWudf0TzTDkkd
         1ofhQSWAVBIqiyGbeh0nqJlJaqJ4yGxIJAfIR0oiRrwQzhUAO3njXuwEUtfCHFCHAK0X
         c1aHOIbGsP5kOrnQEsBiWnbq4bFB9Ps8j1Yn2OIKr1zOswtoudxDknOG1tRw6ZYCX5r2
         RhWMjufxFHlEzMF3XlUq7h17rrs1wEQ1+5do9UH1qaVfB1goPG9iZBkfpNLh82o8F1h7
         pFnw==
X-Gm-Message-State: ABy/qLY8CrQnJMlobr2I7wLOO94h0nAvxoOmdhTf9SFJPleOzNUzSi8s
        JJTWP3hWquJ4njdi1EVg2h9rxQ==
X-Google-Smtp-Source: APBJJlH8+vyOv7Y4rRY+pMDO1yXUEHYynaydqbSPnfpp1Dyw3Ic6Q3e5j6BfodNBBIcBgpdzjPUK5Q==
X-Received: by 2002:adf:f206:0:b0:313:e9f6:3378 with SMTP id p6-20020adff206000000b00313e9f63378mr1858599wro.4.1690882960821;
        Tue, 01 Aug 2023 02:42:40 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b92a:81a9:df6e:1e3? ([2a01:e0a:982:cbb0:b92a:81a9:df6e:1e3])
        by smtp.gmail.com with ESMTPSA id r5-20020a056000014500b0031751d7d8a6sm15609359wrx.18.2023.08.01.02.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Aug 2023 02:42:40 -0700 (PDT)
Message-ID: <285db5bc-f901-e09f-7f86-6638d260c283@linaro.org>
Date:   Tue, 1 Aug 2023 11:42:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 5/9] drm/bridge: synopsys: dw-mipi-dsi: Use pixel clock
 rate to calculate lbcc
Content-Language: en-US
To:     Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     andrzej.hajda@intel.com, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com
References: <20230717061831.1826878-1-victor.liu@nxp.com>
 <20230717061831.1826878-6-victor.liu@nxp.com>
Organization: Linaro Developer Services
In-Reply-To: <20230717061831.1826878-6-victor.liu@nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/07/2023 08:18, Liu Ying wrote:
> To get better accuration, use pixel clock rate to calculate lbcc instead of
> lane_mbps since the pixel clock rate is in KHz while lane_mbps is in MHz.
> Without this, distorted image can be seen on a HDMI monitor connected with
> i.MX93 11x11 EVK through ADV7535 DSI to HDMI bridge in 1920x1080p@60 video
> mode.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 10 +++++++++-
>   1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index c754d55f71d1..332388fd86da 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -12,6 +12,7 @@
>   #include <linux/component.h>
>   #include <linux/debugfs.h>
>   #include <linux/iopoll.h>
> +#include <linux/math64.h>
>   #include <linux/media-bus-format.h>
>   #include <linux/module.h>
>   #include <linux/of_device.h>
> @@ -762,8 +763,15 @@ static u32 dw_mipi_dsi_get_hcomponent_lbcc(struct dw_mipi_dsi *dsi,
>   					   u32 hcomponent)
>   {
>   	u32 frac, lbcc;
> +	int bpp;
>   
> -	lbcc = hcomponent * dsi->lane_mbps * MSEC_PER_SEC / 8;
> +	bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
> +	if (bpp < 0) {
> +		dev_err(dsi->dev, "failed to get bpp\n");
> +		return 0;
> +	}
> +
> +	lbcc = div_u64((u64)hcomponent * mode->clock * bpp, dsi->lanes * 8);
>   
>   	frac = lbcc % mode->clock;
>   	lbcc = lbcc / mode->clock;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
