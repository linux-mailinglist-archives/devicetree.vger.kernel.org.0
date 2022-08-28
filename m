Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57EDB5A3E7C
	for <lists+devicetree@lfdr.de>; Sun, 28 Aug 2022 17:53:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbiH1PxP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Aug 2022 11:53:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbiH1PxO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Aug 2022 11:53:14 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C82C33E0E
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 08:53:13 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id q16so5910323ljp.8
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 08:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=2vVubfiehl1ApLt7cNy8nisNlRZz6ekOM68Mb/5KXzc=;
        b=SHQ2bibcwuURyIhvPZaLlaLSIwDPYX6IHyBbNqbD4hxbLeb6TTSurC7EL6DGgWXhfh
         Ma3lXQVL4rr6wA2L4pgMkDP9tp/3yRI49WHuOxassWtxf6UfkBR7MPALA4yJAU6Y9cjE
         dX6cslGrkrDrgVCbvr4BIi0jC6m1em+f3ia6WQ4ZVFtBqU9UFGwKAunJi6wKmNrFHrl8
         aYsWF1JzifXPG9hzo97kLMc2a7fN5KSbn22BA62kKZEiG+bITYd/CTBo2uVfAEKiBXZe
         koDZQ2yEhAMRpw+soTLH6CnjhnCJHmxQyE3O7jd6Sd35erSU10dYAm1PgJ/taDnsn38e
         8tQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=2vVubfiehl1ApLt7cNy8nisNlRZz6ekOM68Mb/5KXzc=;
        b=VtJM7TFN8pVU19R+Ms/sj99IXbCMW52WWcC7EGYyvBtUtkHlmUZgPGu3tLckoxYPcU
         ROyH/IKTQ0bBQDvyLL5DCwS0/kHcfb2korJnIR7kK0iISWM/arajiaUAkCrO2kaw9iwF
         eElsvhOj64A6DxToqAPcLEOmOIg5rk3fA1eSqxJM5nwkxUDRMHXoWckoOJMYfjjkPvvQ
         5HSvZYbYUGBnT8LW6qO/gVncJ0VU6pMCIAeFo5RBMXWMzHTe5WXdqlu5m8fMIkPgZfsk
         jR/Pa4/iZHoI3hwGL+au8uREdI0Z0hAL246myWoXP9ApFCvOLwEtIEUqyF7C1qefb5j1
         DLWg==
X-Gm-Message-State: ACgBeo3cbkfa1RKBzA8UAsr29EDk3D+dl3bqvjwjDSgF3Qd3NUSmJ9ko
        ttKt4py4XorGT+XIHsV2gJgWhw==
X-Google-Smtp-Source: AA6agR5/59JcnkwbAIdaJ6PHs/c0qiJt5sW5JIgc8Prl+IvS0aIwSNkTr5/Of2obDV+emz45Y4DJyw==
X-Received: by 2002:a2e:a58e:0:b0:25f:d8c5:3898 with SMTP id m14-20020a2ea58e000000b0025fd8c53898mr4295887ljp.302.1661701991503;
        Sun, 28 Aug 2022 08:53:11 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id d23-20020a0565123d1700b00492ea54beeasm970603lfv.306.2022.08.28.08.53.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Aug 2022 08:53:10 -0700 (PDT)
Message-ID: <b7dc7ba7-e646-b520-a065-8b47643c1c26@linaro.org>
Date:   Sun, 28 Aug 2022 18:53:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/2] phy: freescale: add Samsung HDMI PHY
Content-Language: en-US
To:     Lucas Stach <l.stach@pengutronix.de>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de, kernel@pengutronix.de,
        Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>
References: <20220826192023.3216389-1-l.stach@pengutronix.de>
 <20220826192023.3216389-2-l.stach@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220826192023.3216389-2-l.stach@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/08/2022 22:20, Lucas Stach wrote:
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/phy/freescale/Kconfig                |   6 +
>  drivers/phy/freescale/Makefile               |   1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 699 +++++++++++++++++++
>  3 files changed, 706 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> 
> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> index 853958fb2c06..5c2b73042dfc 100644
> --- a/drivers/phy/freescale/Kconfig
> +++ b/drivers/phy/freescale/Kconfig
> @@ -35,6 +35,12 @@ config PHY_FSL_IMX8M_PCIE
>  	  Enable this to add support for the PCIE PHY as found on
>  	  i.MX8M family of SOCs.
>  
> +config PHY_FSL_SAMSUNG_HDMI_PHY
> +	tristate "Samsung HDMI PHY support"
> +	depends on OF && HAS_IOMEM
> +	help
> +	  Enable this to add support for the Samsung HDMI PHY in i.MX8MP.

Your bindings do not mention that this IP block comes from Samsung, so
please extend the description there.

Also, since this came from blocks used by Samsung, probably it shares a
lot with Samsung Exynos SoC, so it would be nice to Cc maintainers of
DRM DRIVERS FOR EXYNOS for some feedback.

Although existing Samsung HDMI phy driver is tightly coupled with Exynos
DRM drivers, so not really re-usable without huge refactoring. I did not
check the register layout similarities.

Best regards,
Krzysztof
