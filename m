Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBF7676E2FF
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 10:27:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234579AbjHCI1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 04:27:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234534AbjHCI07 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 04:26:59 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84CFE127
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 01:24:03 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4fe457ec6e7so1180524e87.3
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 01:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691051042; x=1691655842;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=BikPyTGH8XLj6oQEB7BPtvNK4WnLaRDN13nGKi1oJVE=;
        b=ywwTs5Kqvxv83Q7qPOkeqWFTGbjtrD1R6w3fe+5R7nOvTt/KYcZism+o9vzivegeB2
         WCDMZMyOkxNKKUDk7R5ERntZdCAXdVGm22EfBEKdQpVp7M/8VDsgTHQaf6J5Wdkz9I63
         PQweH5xtDxJ8pSo0SXQb8NFiM5VulxUAHc57jiui4Lf8MVBh6SXNtVTG91KUxnWnEr61
         9RXmAuhuBA6KUwsXiSJ5QSvPqxsm5pWo1qtsq4DRXNq4uxMPTp9t+QPGkA+DfQgNBLnL
         ceN7xdT+BfDjXQ4vaHezQpMcydzjO+XumDW+cL0KS8Y9gO+HOpclgDOKVxhAmifaw3Ab
         v4kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691051042; x=1691655842;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BikPyTGH8XLj6oQEB7BPtvNK4WnLaRDN13nGKi1oJVE=;
        b=SzHLk5EuiqQJR4CLoU3VaR6OXhj+Ah78Xior9lNtobHlkM3qEeKrVaVLU9xJviqgR2
         0tCI1//J+/J94ZqEaM06rGTxUnH+hKWcfHFktlDx6OyIJiNepw/nGpCXcSeU9PVtlwvR
         bljL9IYw/9Pjx9MIeRhPBrzqTHeOWqROjOik2aRgmsKXY0MaRapE435QQYAlRC3O217Z
         gapMb6HqgfAkjzZqCg4zQFMCKCWc+SetMftInOJFZwqEGvLNdIoEog3XPKEFTkar6u+Q
         bkYzN6I7pS+sK6+n9uWxPQS+50tpzH97TxWccFDbhGe8OMW4ygQdvk9zOO4qtg+ys5eu
         fgzA==
X-Gm-Message-State: ABy/qLb7B9TL+pSPpE0R4mW6m6VnkBSMNRN6niy1Cff60leCyJTNCpyP
        WTvv+/XM6VbVLIqgcneKjycmjQ==
X-Google-Smtp-Source: APBJJlHTwBcuPhSakdCRp9/vWlM5s5wrAYYWoVvWTE4OGDGvANTqN1xGPLxkVk74cmRbnARSxV70KQ==
X-Received: by 2002:a19:6908:0:b0:4f8:4512:c846 with SMTP id e8-20020a196908000000b004f84512c846mr5762501lfc.49.1691051041583;
        Thu, 03 Aug 2023 01:24:01 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:8656:583:d034:d966? ([2a01:e0a:982:cbb0:8656:583:d034:d966])
        by smtp.gmail.com with ESMTPSA id w12-20020a5d404c000000b0031411b7087dsm21247295wrp.20.2023.08.03.01.24.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Aug 2023 01:24:01 -0700 (PDT)
Message-ID: <89fafd52-32b3-76fb-c4de-53c721c2dc3d@linaro.org>
Date:   Thu, 3 Aug 2023 10:24:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] drm/panel-simple: Add Innolux G156HCE-L01 panel entry
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org
Cc:     Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
References: <20230731210258.256152-1-marex@denx.de>
 <20230731210258.256152-2-marex@denx.de>
Organization: Linaro Developer Services
In-Reply-To: <20230731210258.256152-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2023 23:02, Marek Vasut wrote:
> Add support for Innolux G156HCE-L01 15.6" 1920x1080 24bpp
> dual-link LVDS TFT panel. Documentation is available at [1].
> The middle frequency is tuned slightly upward from 70.93 MHz
> to 72 MHz, otherwise the panel shows slight flicker.
> 
> [1] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G156HCE-L01_Rev.C3_Datasheet.pdf
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 34 ++++++++++++++++++++++++++++
>   1 file changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 396a22177c674..417dd69054fc1 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2377,6 +2377,37 @@ static const struct panel_desc innolux_g121x1_l03 = {
>   	},
>   };
>   
> +static const struct display_timing innolux_g156hce_l01_timings = {
> +	.pixelclock = { 120000000, 144000000, 150000000 },
> +	.hactive = { 1920, 1920, 1920 },
> +	.hfront_porch = { 80, 90, 100 },
> +	.hback_porch = { 80, 90, 100 },
> +	.hsync_len = { 20, 30, 30 },
> +	.vactive = { 1080, 1080, 1080 },
> +	.vfront_porch = { 3, 10, 20 },
> +	.vback_porch = { 3, 10, 20 },
> +	.vsync_len = { 4, 10, 10 },
> +};
> +
> +static const struct panel_desc innolux_g156hce_l01 = {
> +	.timings = &innolux_g156hce_l01_timings,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 344,
> +		.height = 194,
> +	},
> +	.delay = {
> +		.prepare = 1,		/* T1+T2 */
> +		.enable = 450,		/* T5 */
> +		.disable = 200,		/* T6 */
> +		.unprepare = 10,	/* T3+T7 */
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct drm_display_mode innolux_n156bge_l21_mode = {
>   	.clock = 69300,
>   	.hdisplay = 1366,
> @@ -4243,6 +4274,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "innolux,g121x1-l03",
>   		.data = &innolux_g121x1_l03,
> +	}, {
> +		.compatible = "innolux,g156hce-l01",
> +		.data = &innolux_g156hce_l01,
>   	}, {
>   		.compatible = "innolux,n156bge-l21",
>   		.data = &innolux_n156bge_l21,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
