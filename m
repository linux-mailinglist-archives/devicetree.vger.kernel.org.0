Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84B835391AA
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 15:19:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237966AbiEaNTk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 09:19:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344667AbiEaNTj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 09:19:39 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEA208CCC4
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 06:19:38 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id f21so26513360ejh.11
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 06:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wQgOJyR03vBhM6DapbC/rA4icxajpuUd8Doq6SLlA94=;
        b=sUVJ8pxaIDfsOu/9hCPz90A6L7XQJH5HcV47T0MkonvQO9e77CkgOlPTuBrztk8MY2
         uFjNv0DdfHoVNVp0Jsg+EWr3yjMz+oPvAfGUoqQx/UIyjEcseFx/t3QxNrivALnIOY3l
         85KDMXEOhjmppSWCmpiICFZOSWBMwkoY/QaoTJwoRX2/jzVccLj7gkOdM81rKYl3DnWH
         dzKUEyiNctddjiQyLNQ8YMS5UTXbGfukd27OOdGOG89Rtr9pgnThpYgu9CX29QpcfQam
         RjIWyWy+LcoVXWkd6KF2zjK6iEYo5n9HDKMzSw1zwc6+H4MwZr2XyBkvyDFhD2L5E06C
         M5Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wQgOJyR03vBhM6DapbC/rA4icxajpuUd8Doq6SLlA94=;
        b=mO2ZAQ5VA6zFmWiF+JdB6+l2laESydsg5PcayvcvBQ0TRWZP6nY5TQmDrzCA1T33Tr
         onJt2TwAmUv0iuaJgSZ1b6EzM9CPhsuvBfDweE3c96z7XLD21r7Td/H050PzFS2qpH60
         YagRQ7Nq9x6jzvalTtbksoLVmTHlrC9jKxuGtonVzkBwYHOHmmpBOrFqLD8SkU2WTRhF
         upoTNaxRIDkKBS7CFdh9eoW6lrEvnzH8dCQNuG5pkKjNG2050WneqH+gUz8na5lnlhnX
         +uMgvtMc+Qh4ZbZO0eumZzqLCqldyBY+wfZbA4uH1fgYITmKUdEBzpbJ40pxqneWJGMl
         CP0Q==
X-Gm-Message-State: AOAM530RxBQ6XrI6Ic8U/+3cO7X1SYJ3qA+CrJgvBn0FbhbZP+Zq6wZx
        +2mdeLv6xfPZkXZ1G9B3d9CnvA==
X-Google-Smtp-Source: ABdhPJybKpUc8z2wrpwIUL9Ubjp83WkzYjN7WdkhLrYnKTY6ffj95FyQpQLEJe+0Mf5AiaQ2azMvBg==
X-Received: by 2002:a17:906:600c:b0:6fe:9204:959b with SMTP id o12-20020a170906600c00b006fe9204959bmr52342461ejj.417.1654003177373;
        Tue, 31 May 2022 06:19:37 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id lz18-20020a170906fb1200b006f3ef214e62sm4941227ejb.200.2022.05.31.06.19.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 06:19:36 -0700 (PDT)
Message-ID: <45ef694a-472c-23d8-1514-f57efe5a35a1@linaro.org>
Date:   Tue, 31 May 2022 15:19:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/4] phy: samsung: ufs: support secondary ufs phy
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20220531121913.48722-1-chanho61.park@samsung.com>
 <CGME20220531121922epcas2p3c37a39cd28f56326c4f3980ac76f3b5c@epcas2p3.samsung.com>
 <20220531121913.48722-3-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531121913.48722-3-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2022 14:19, Chanho Park wrote:
> To support secondary ufs phy device, we need to get an offset for phy
> isolation from the syscon DT node. If the first index argument of the
> node is existing, we can read the offset value and set it as isol->offset.
> To allow this, we should drop the const qualifier of struct pmu_isol.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  drivers/phy/samsung/phy-samsung-ufs.c | 7 ++++++-
>  drivers/phy/samsung/phy-samsung-ufs.h | 2 +-
>  2 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
> index 602ddef259eb..bb0f8e481a4b 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.c
> +++ b/drivers/phy/samsung/phy-samsung-ufs.c
> @@ -288,6 +288,7 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
>  	struct phy *gen_phy;
>  	struct phy_provider *phy_provider;
>  	const struct samsung_ufs_phy_drvdata *drvdata;
> +	u32 isol_offset;
>  	int err = 0;
>  
>  	match = of_match_node(samsung_ufs_phy_match, dev->of_node);
> @@ -328,7 +329,11 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
>  	phy->dev = dev;
>  	phy->drvdata = drvdata;
>  	phy->cfg = (struct samsung_ufs_phy_cfg **)drvdata->cfg;
> -	phy->isol = &drvdata->isol;
> +	phy->isol = (struct pmu_isol *)&drvdata->isol;

No casts are needed for proper code. If you need it - code is not proper.

> +	if (!of_property_read_u32_index(dev->of_node, "samsung,pmu-syscon", 1,
> +					&isol_offset))
> +		phy->isol->offset = isol_offset;

drvdata is const.

> +
>  	phy->lane_cnt = PHY_DEF_LANE_CNT;
>  
>  	phy_set_drvdata(gen_phy, phy);
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
> index 91a0e9f94f98..75dc533273f9 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.h
> +++ b/drivers/phy/samsung/phy-samsung-ufs.h
> @@ -122,7 +122,7 @@ struct samsung_ufs_phy {
>  	struct clk *rx1_symbol_clk;
>  	const struct samsung_ufs_phy_drvdata *drvdata;
>  	struct samsung_ufs_phy_cfg **cfg;
> -	const struct pmu_isol *isol;
> +	struct pmu_isol *isol;
>  	u8 lane_cnt;
>  	int ufs_phy_state;
>  	enum phy_mode mode;


Best regards,
Krzysztof
