Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9CDC67DF8D
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 09:54:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231649AbjA0IyY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 03:54:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230289AbjA0IyX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 03:54:23 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01652619B
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 00:54:20 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso2895825wms.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 00:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=0Aq47BtuyFAjUm0GhCtLi/DfxLNu4Y6gfIRbj17cxck=;
        b=l9WEgyRR6YO39w+xZb/tVykmNrcx9QGGxsKHsAFdDcwKEvPukOAFBbJ/JqXO2/HJub
         8XKidXklL2aI+ZH5RubFofG8J+ik+cvREZmvR97+fkiOSJHXB/OaM7BwcKl2Usnp9/qQ
         6dXcBU3e7KhG/qQtUdz+JdKe+AMJ0IY6VDE6aVbUqcz/exrhrEdL8m0ddL4BHtqz/Ij1
         T9e0VOS1H/gn0M4b4KSEgLxdPq3Ze9Ey7HXkxLJOptJfjPCSk7L2AgsATJO3dayfQL95
         eVYFPzmrJW2hUtP3E+AzO3+vWuRVEdIQymYrOalD9ofB07zUPjaHc+mgsYTLZFlLIG6g
         FZAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Aq47BtuyFAjUm0GhCtLi/DfxLNu4Y6gfIRbj17cxck=;
        b=VXeMQSdAvfMwjhzyuFhzLnVQp4H4TtAVcDYoocD9sLc66UK810ma6qOxMTnuQsbTs4
         jHv14A87FSdQY7mk0HXFUR0tIp3zFOpvzWl+wjs2rDRF0NMhiOWKzf00dS7B1BsBhIUS
         4WX25foSln3nmqvLs0KVHMiHt7ofPcazrNs3EQ8FK3UmVthnFs49SvN/wA0akjhJpEQh
         A7W17NS8yst6WJofLaPa/+EoCJ2KD/LsSG8PTh84451uA8+wXjB0GXaVBgD++5kUPcq7
         EqcuLtbEAr5obu3dXOBGpj9YY7A5jax/7suQnZi2yn0sfgPiRNbdUPMS4F+t1dH1lv1y
         oLHg==
X-Gm-Message-State: AFqh2koIlTKY8mRbtMt3DjxLI3vk6XRhQbmRItl/R3vSSYBONyNVbqHS
        HgcqbvIiWcihq2lT27WPMz2HCn+vT9Ep/Qer
X-Google-Smtp-Source: AMrXdXuOEr4KHQE3WeLlWm0Ta83MDcHUBbweeDfYT9AuvvAUrdZUN2EynQr+nxewUbAJTYXZp0WAfA==
X-Received: by 2002:a05:600c:3583:b0:3d2:2d2a:d581 with SMTP id p3-20020a05600c358300b003d22d2ad581mr39628189wmq.30.1674809659374;
        Fri, 27 Jan 2023 00:54:19 -0800 (PST)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600c2ccb00b003cf71b1f66csm4176708wmc.0.2023.01.27.00.54.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 00:54:18 -0800 (PST)
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
User-agent: mu4e 1.8.10; emacs 28.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
Date:   Fri, 27 Jan 2023 09:52:34 +0100
In-reply-to: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
Message-ID: <1jlelo73yd.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu 26 Jan 2023 at 15:03, Heiner Kallweit <hkallweit1@gmail.com> wrote:

> The usage of edge-triggered interrupts lead to lost interrupts under load,
> see [0]. This was confirmed to be fixed by using level-triggered
> interrupts.
> The report was about SDIO. However, as the host controller is the same
> for SD and MMC, apply the change to all mmc controller instances.
>
> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
>
> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
> Reported-by: Peter Suti <peter.suti@streamunlimited.com>
> Tested-by: Peter Suti <peter.suti@streamunlimited.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

On the vim3:
Tested-by: Jerome Brunet <jbrunet@baylibre.com>

Thanks a lot for this !

> ---
> v2:
> - apply the fix also to meson-axg
> - apply the fix to all host controller instances
> ---
>  arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 4 ++--
>  arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 +++---
>  arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 6 +++---
>  3 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> index ed895fb32..a6a3095de 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> @@ -1886,7 +1886,7 @@ apb: bus@ffe00000 {
>  			sd_emmc_b: mmc@5000 {
>  				compatible = "amlogic,meson-axg-mmc";
>  				reg = <0x0 0x5000 0x0 0x800>;
> -				interrupts = <GIC_SPI 217 IRQ_TYPE_EDGE_RISING>;
> +				interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>;
>  				status = "disabled";
>  				clocks = <&clkc CLKID_SD_EMMC_B>,
>  					<&clkc CLKID_SD_EMMC_B_CLK0>,
> @@ -1898,7 +1898,7 @@ sd_emmc_b: mmc@5000 {
>  			sd_emmc_c: mmc@7000 {
>  				compatible = "amlogic,meson-axg-mmc";
>  				reg = <0x0 0x7000 0x0 0x800>;
> -				interrupts = <GIC_SPI 218 IRQ_TYPE_EDGE_RISING>;
> +				interrupts = <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>;
>  				status = "disabled";
>  				clocks = <&clkc CLKID_SD_EMMC_C>,
>  					<&clkc CLKID_SD_EMMC_C_CLK0>,
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 6d7272b2c..13fdaba21 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -2324,7 +2324,7 @@ uart_A: serial@24000 {
>  		sd_emmc_a: mmc@ffe03000 {
>  			compatible = "amlogic,meson-axg-mmc";
>  			reg = <0x0 0xffe03000 0x0 0x800>;
> -			interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
> +			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  			clocks = <&clkc CLKID_SD_EMMC_A>,
>  				 <&clkc CLKID_SD_EMMC_A_CLK0>,
> @@ -2336,7 +2336,7 @@ sd_emmc_a: mmc@ffe03000 {
>  		sd_emmc_b: mmc@ffe05000 {
>  			compatible = "amlogic,meson-axg-mmc";
>  			reg = <0x0 0xffe05000 0x0 0x800>;
> -			interrupts = <GIC_SPI 190 IRQ_TYPE_EDGE_RISING>;
> +			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  			clocks = <&clkc CLKID_SD_EMMC_B>,
>  				 <&clkc CLKID_SD_EMMC_B_CLK0>,
> @@ -2348,7 +2348,7 @@ sd_emmc_b: mmc@ffe05000 {
>  		sd_emmc_c: mmc@ffe07000 {
>  			compatible = "amlogic,meson-axg-mmc";
>  			reg = <0x0 0xffe07000 0x0 0x800>;
> -			interrupts = <GIC_SPI 191 IRQ_TYPE_EDGE_RISING>;
> +			interrupts = <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  			clocks = <&clkc CLKID_SD_EMMC_C>,
>  				 <&clkc CLKID_SD_EMMC_C_CLK0>,
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> index e3c12e0be..5eed15035 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> @@ -603,21 +603,21 @@ apb: apb@d0000000 {
>  			sd_emmc_a: mmc@70000 {
>  				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
>  				reg = <0x0 0x70000 0x0 0x800>;
> -				interrupts = <GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
> +				interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>;
>  				status = "disabled";
>  			};
>  
>  			sd_emmc_b: mmc@72000 {
>  				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
>  				reg = <0x0 0x72000 0x0 0x800>;
> -				interrupts = <GIC_SPI 217 IRQ_TYPE_EDGE_RISING>;
> +				interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>;
>  				status = "disabled";
>  			};
>  
>  			sd_emmc_c: mmc@74000 {
>  				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
>  				reg = <0x0 0x74000 0x0 0x800>;
> -				interrupts = <GIC_SPI 218 IRQ_TYPE_EDGE_RISING>;
> +				interrupts = <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>;
>  				status = "disabled";
>  			};
>  		};

