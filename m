Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10ACC331C4E
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 02:33:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229694AbhCIBc4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 20:32:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbhCIBcX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 20:32:23 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B822C06175F
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 17:32:23 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id e7so24371448lft.2
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 17:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=Kc1AxQXj77r55g6VdZknww3+mM9WBnI7CATNENwXpj8=;
        b=TB6Dc61rmaeGxUu2sfLQMoTttDJQJpaaexFmrDUOGHJ0paW+6kHQnQXJnKOR5F91Et
         voPyAIPqFRNJSGQ7L9nk2XhpNClLcjQcuVo1upFwKKboZiVtiorIaiapZIj1j+Q73HuS
         RSYbUIPCAR8FG/FkmKQc10sSKGdgbnKZEIoN7T56IfiPeMvvFCL1mdrCTqlImLLTZifE
         02IbYhAYkLZbjyibeJZvKRvcwmdh0x1tOMnCT5fizHbHJw+dUYhXDJs8Ya7gSA/xlg0z
         aNAnVsbGVPbVfeGWxEDxJ6znm4R/ciPiWZQinFxAO13DPLBtgQXKcGMMIBHiTHgUn2VN
         QkXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Kc1AxQXj77r55g6VdZknww3+mM9WBnI7CATNENwXpj8=;
        b=ROg/u55W+JKhU1ImLSshdNo4JUn9yvDtkpVSnhnetaINqt39CTfB3TxYbbjj9MrROv
         rG9zMCn0VJgE8/jIT1X/w8/DTsg0Mmb9mElnLnXmo2O0+g1iaJcf+SfBqgd0cmo1mmJ/
         PSTpHit82Ei1DuoGpAUF/ALxii1OQgPPaOHme33Ba8jEsnxNupI6c24jBU38xTfyfNV8
         Lcl9dkd2CIRPDWlFbrNByxWOZ5VtfdIYN0TifOesUlT2Y4yJpxyWci076q1G0kvUiQZs
         1uh6XzMAr8DZKe3Am9Y5zfzOBGxm74PFqTSN+Gnu1KpCo59TxTXGUVvvYR4DHVQdgKWZ
         /Cuw==
X-Gm-Message-State: AOAM5327r3+f1q33+miWF038xn3TDx9gEoVxlijscLzJZtxZNmJCjzHP
        skVlCUByz3LRNy4FQPqxgDYmfA==
X-Google-Smtp-Source: ABdhPJzymG78Jv/XqJSRbbj/CwYFXn4pE+UlKZWFobMjYMXA1l1LDS6PVcleE+I3H4QsIwhOeKzLcQ==
X-Received: by 2002:a05:6512:3450:: with SMTP id j16mr15742321lfr.80.1615253541884;
        Mon, 08 Mar 2021 17:32:21 -0800 (PST)
Received: from [192.168.1.213] (81.5.99.6.dhcp.mipt-telecom.ru. [81.5.99.6])
        by smtp.googlemail.com with ESMTPSA id z13sm1048298lfh.144.2021.03.08.17.32.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Mar 2021 17:32:21 -0800 (PST)
Subject: Re: [PATCH v2 2/2] dts: r40: add second ethernet support
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
References: <20210309012116.2944-1-boger@wirenboard.com>
 <20210309012116.2944-3-boger@wirenboard.com>
From:   Evgeny Boger <boger@wirenboard.com>
Message-ID: <7b898566-58e6-1d53-e4b1-85d443a78b33@wirenboard.com>
Date:   Tue, 9 Mar 2021 04:32:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210309012116.2944-3-boger@wirenboard.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

3/9/21 4:21 AM, Evgeny Boger пишет:
> R40 (aka V40, A40i, T3) has two different Ethernet IP
> called EMAC and GMAC.
> EMAC only support 10/100 Mbit in MII mode,
> while GMAC support both 10/100 (MII) and 10/100/1000 (RGMII).
>
> In contrast to A10/A20 where GMAC and EMAC share the same pins
> making EMAC somewhat pointless, on R40 EMAC can be routed to port H.
> Both EMAC (on port H) and GMAC (on port A)
>   can be then enabled at the same time, allowing for two ethernet ports.
>
> Signed-off-by: Evgeny Boger <boger@wirenboard.com>
> ---
>   arch/arm/boot/dts/sun8i-r40.dtsi | 59 ++++++++++++++++++++++++++++++++
>   1 file changed, 59 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> index d5ad3b9efd12..c31386e421b1 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -217,6 +217,20 @@
>   			#size-cells = <1>;
>   			ranges;
>   
> +			sram_a: sram@0 {
> +				compatible = "mmio-sram";
> +				reg = <0x00000000 0xc000>;
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +				ranges = <0 0x00000000 0xc000>;
> +
> +				emac_sram: sram-section@8000 {
> +					compatible = "allwinner,sun4i-a10-sram-a3-a4";
> +					reg = <0x8000 0x4000>;
> +					status = "okay";
> +				};
> +			};
> +
>   			sram_c: sram@1d00000 {
>   				compatible = "mmio-sram";
>   				reg = <0x01d00000 0xd0000>;
> @@ -541,6 +555,33 @@
>   				drive-strength = <40>;
>   			};
>   
> +			emac_pa_pins: emac-pa-pins {
> +				pins = "PA0", "PA1", "PA2",
> +				       "PA3", "PA4", "PA5", "PA6",
> +				       "PA7", "PA8", "PA9", "PA10",
> +				       "PA11", "PA12", "PA13", "PA14",
> +				       "PA15", "PA16";
> +				function = "emac";
> +			};
> +
> +			emac_ph_pins: emac-ph-pins {
> +				pins = "PH8", "PH9", "PH10", "PH11",
> +				       "PH14", "PH15", "PH16", "PH17",
> +				       "PH18","PH19", "PH20", "PH21",
> +				       "PH22", "PH23", "PH24", "PH25",
> +				       "PH26", "PH27";
> +				function = "emac";
> +			};
> +
> +			emac_pa_pins: emac-pa-pins {
> +				pins = "PA0", "PA1", "PA2",
> +				       "PA3", "PA4", "PA5", "PA6",
> +				       "PA7", "PA8", "PA9", "PA10",
> +				       "PA11", "PA12", "PA13", "PA14",
> +				       "PA15", "PA16";
> +				function = "emac";
> +			};
> +

oh. a duplicate node name. I guess I've just got used to editing *after* 
submitting the pull request on github.

Sorry for the mess, will fix in v3.


>   			i2c0_pins: i2c0-pins {
>   				pins = "PB0", "PB1";
>   				function = "i2c0";
> @@ -885,6 +926,24 @@
>   			};
>   		};
>   
> +		emac: ethernet@1c0b000 {
> +			compatible = "allwinner,sun4i-r40-emac";
> +			reg = <0x01c0b000 0x1000>;
> +			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_EMAC>;
> +			resets = <&ccu RST_BUS_EMAC>;
> +			allwinner,sram = <&emac_sram 1>;
> +			status = "disabled";
> +		};
> +
> +		emac_mdio: mdio@1c0b080 {
> +			compatible = "allwinner,sun4i-a10-mdio";
> +			reg = <0x01c0b080 0x14>;
> +			status = "disabled";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
>   		mbus: dram-controller@1c62000 {
>   			compatible = "allwinner,sun8i-r40-mbus";
>   			reg = <0x01c62000 0x1000>;

