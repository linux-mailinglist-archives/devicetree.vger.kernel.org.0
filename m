Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F58E538E73
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 12:03:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245627AbiEaKDP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 06:03:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245538AbiEaKDJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 06:03:09 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10A832AC57
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 03:01:58 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id b8so8829289edf.11
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 03:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wuXuqEFMaOM45MAweImWEmPgcsz8M071Y/adgguAcHs=;
        b=pE/W3vubH45QB4U57YiIZcydvn/9U9CMn92Z1D/Gq1zkOJXzGPIq7YrHLaeY3x/pRX
         EyfXFSY8HGId2irBD0zfCjXRTj1WywrVqHOXehsKwksiuqz9bxYkIMXN0aZAzuxWMe4g
         9YYTfiX/P+QeITomdIxZ1yBwZVslL7eoM6yu54GOqRxVQ9ZMOb1nHc+47hmah39JurXA
         RIobPqn+/DMO8riJ1AlROJgxWncli0O8Z3UFWl3rG7k/jb+e72VkRGME1dzaNxCP6Zdy
         MLhDdvMiKgiGOmeG2pHkoNP46EOuokyvkmePdMMqZH7z3dwIzKgS/Qwygegg37MY3EIX
         Tqxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wuXuqEFMaOM45MAweImWEmPgcsz8M071Y/adgguAcHs=;
        b=WOA0j3xFNLHiTY7J4FiOl7BlzZ1dtSrpGSTQD75SxR56OF36r8E9xhNLlzBsgf1ebA
         aFaRazwU1Oe8q4CGDvRZCu3Zo4MLlW5d6OIfKBVpelmDnJuPOBg6U07j3ZWEHsfO/ha9
         aZSAyTNwP+dPdd8/G+Hc2zSJZyLRjCZBvFLFRIbN5WWhxear7jMXT6Zpz+N/D4KHV1jl
         dfG3c+xc4r66tk9z3biwryikX+xpm2BG2KZGlf6MeMcEUzG1XjGJIbTd6rnjdQcPmBf4
         CM77p1cfydwfk9pv2zN5LQlzKBcLNRQEaU1pmoYYTjlPf0VdoKzSPKhuHDlO/xqlQWGg
         ABJw==
X-Gm-Message-State: AOAM530PG6oXUzVGu49iP8p9c1AWoFJ8T380AsD8x+cpWtZXRokkQKEC
        TyZnMqDrUoLBXYTPNQS881E1cuKtrRcfum6l
X-Google-Smtp-Source: ABdhPJwoXiymXBWrih0F32y/6OJ6LLk92Bui9PxiMJmu0glMtCsZ8SrdrCpE3Ia01wSsM1GhPQeHig==
X-Received: by 2002:a05:6402:26d4:b0:42b:6bc4:ce4f with SMTP id x20-20020a05640226d400b0042b6bc4ce4fmr44431111edd.242.1653991316803;
        Tue, 31 May 2022 03:01:56 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v9-20020a50c409000000b0042bcf1e0060sm7928488edf.65.2022.05.31.03.01.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 03:01:56 -0700 (PDT)
Message-ID: <1d8ced63-a43d-08fa-8fa4-6bf521c56bea@linaro.org>
Date:   Tue, 31 May 2022 12:01:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 5/6] ufs: host: ufs-exynos: add support for fsd ufs hci
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        avri.altman@wdc.com, bvanassche@acm.org,
        martin.petersen@oracle.com, chanho61.park@samsung.com,
        pankaj.dubey@samsung.com, linux-fsd@tesla.com,
        Bharat Uppal <bharat.uppal@samsung.com>
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
 <CGME20220531012356epcas5p3cd6638d4d3eccb28a28d064c9f585a4f@epcas5p3.samsung.com>
 <20220531012220.80563-6-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531012220.80563-6-alim.akhtar@samsung.com>
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

On 31/05/2022 03:22, Alim Akhtar wrote:
> Adds support of UFS HCI which is found in Tesla
> FSD SoC. FSD also have an addition bit for MPHY
> APB clock which was not there (was reserved) for
> previous exynos SoC.

Weird wrapping.

> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/ufs/host/ufs-exynos.c | 143 +++++++++++++++++++++++++++++++++-
>  1 file changed, 142 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
> index a81d8cbd542f..b3efdc4caca2 100644
> --- a/drivers/ufs/host/ufs-exynos.c
> +++ b/drivers/ufs/host/ufs-exynos.c
> @@ -52,11 +52,12 @@
>  #define HCI_ERR_EN_DME_LAYER	0x88
>  #define HCI_CLKSTOP_CTRL	0xB0
>  #define REFCLKOUT_STOP		BIT(4)
> +#define MPHY_APBCLK_STOP        BIT(3)

Inconsistent indentation.


Best regards,
Krzysztof
