Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A36F7561304
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 09:14:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230428AbiF3HOT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 03:14:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230334AbiF3HOS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 03:14:18 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B60C3193FB
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 00:14:17 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id c13so25272930eds.10
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 00:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vWv1/RhTGmvZqzuMvWkm4r/5XuXugXwYoRBYDM790fY=;
        b=cObN1fokxp2C7e7xrkSLiKy9iXHOTpGXO14PwXc0MrrvXvZXBVsiDkTwWDwAnXGHs3
         g0f+q0G6RxIi4N+5HsjkzjVNpzV7GIED3PFWpuQN0O5xfx+TZ5OlE+WNz2hXQ/YRdlvi
         kqbvGkXtpCW9THkFL9HY6BZCAaw1mtOZQEir4UftOKfya+ZM2gAhkiXFtoOeuxo9IJpV
         MGvuYEzHAqKlnlVzYEm4v3+A0Q8eYeIrbI0+/bTm4WuzdlLU6oim0DXt7QBLW1rkm7r2
         7CQjLW1dmnZI89G7x25Eo6UM3m+l+a1uF+E1hjB/KXve2itjMOQEgmdcx1fCk9PQ0Aoy
         cNHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vWv1/RhTGmvZqzuMvWkm4r/5XuXugXwYoRBYDM790fY=;
        b=7Qhkgqsqb19BIqF492j25u/TGte2WK1qx+62TPCwRsaK11J2MOzYMXhETn6dyzRVhy
         bxWb/M7j7I69MyHu2DuErQewSJsBIGB0WKz9kFigWzYf0EHA/OtCtfm/GNbg03+bt8uW
         YaQYObPIT1fSLnwngjgcWLHTQBW4nVyUi2RlDQGhCrc9Ln9OI3H6/tryhv7mfqOElDjH
         Ehamz9K75mwFUAQODAFHwAMLzENVtJYejjRywDbBTwbg059CwmV1C7PFut+RxyY3wESv
         69gA0+GzIjcLj7m7G1syYopElZ7k3Z6fRcWoAbO2Ocy4a9e2WOg/2oW7nMNQGMmiuH18
         Ordw==
X-Gm-Message-State: AJIora9jYZichnGuUCSOqOO2GxsnHmbBGhdpM6GaaVvfCUrDBXC29rIe
        xoE9A1aAVxy/NW3vw8L9I+AW8Q==
X-Google-Smtp-Source: AGRyM1trzN2TrQB7LIcwceaTpUR2YVlegmf4frrzVDxVMr/6GlD0J4RjOqk1d4eE+U7uQ94qt3S9RQ==
X-Received: by 2002:aa7:d709:0:b0:435:6ae6:5fb8 with SMTP id t9-20020aa7d709000000b004356ae65fb8mr9337425edq.161.1656573256319;
        Thu, 30 Jun 2022 00:14:16 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id bk8-20020a170906b0c800b0071c6dc728b2sm8585804ejb.86.2022.06.30.00.14.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 00:14:15 -0700 (PDT)
Message-ID: <7e6ec956-b679-de68-1a4f-61105e3898cf@linaro.org>
Date:   Thu, 30 Jun 2022 09:14:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 4/4] arm64: dts: exynosautov9: add usi device tree
 nodes
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <cover.1656554759.git.chanho61.park@samsung.com>
 <CGME20220630021951epcas2p27f839eead168052d03039c2e3efa3460@epcas2p2.samsung.com>
 <0588d46af06f9d932f4a526c3b04601079b4fde1.1656554759.git.chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0588d46af06f9d932f4a526c3b04601079b4fde1.1656554759.git.chanho61.park@samsung.com>
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

On 30/06/2022 04:16, Chanho Park wrote:
> Universal Serial Interface (USI) supports three types of serial interface
> such as Universal Asynchronous Receiver and Transmitter (UART), Serial
> Peripheral Interface (SPI), and Inter-Integrated Circuit (I2C).
> Each protocols can be working independently and configured as one of
> those using external configuration inputs.
> Exynos Auto v9 SoC support 12 USIs. When a USI uses two pins such as i2c
> and 3 wire uarts(RX/TX only), we can use remain two pins as i2c mode.
> So, we can define one USI node that includes serial/spi and hsi2c.
> usi_i2c nodes can be used only for i2c mode.
> 
> We can have below combinations for one USI.
> 1) The usi node is used either 4 pin uart or 4 pin spi
>  -> No usi_i2c can be used
> 2) The usi node is used 2 pin uart(RX/TX) and i2c(SDA/SCL)
>  -> usi_i2c should be enabled to use the latter i2c
> 3) The usi node is used i2c(SDA/SCL) and i2c(SDA/SCL)
>  -> usi_i2c should be enabled to use the latter i2c
> 
> By default, all USIs are initially set to uart mode by below setting.
> samsung,mode = <USI_V2_UART>;
> You can change it either USI_V2_SPI or USI_V2_I2C.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../boot/dts/exynos/exynosautov9-sadk.dts     |    2 +
>  arch/arm64/boot/dts/exynos/exynosautov9.dtsi  | 1077 ++++++++++++++++-
>  2 files changed, 1074 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts b/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
> index 2b30a7458297..eec3192c0631 100644
> --- a/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
> +++ b/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
> @@ -50,6 +50,7 @@ ufs_1_fixed_vcc_reg: regulator-1 {
>  };
>  
>  &serial_0 {
> +	pinctrl-0 = <&uart0_bus_dual>;
>  	status = "okay";
>  };
>  
> @@ -74,6 +75,7 @@ &ufs_1 {
>  };
>  
>  &usi_0 {
> +	samsung,clkreq-on; /* needed for UART mode */
>  	status = "okay";
>  };
>  
> diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> index c4cfa93e4c2e..2013718532f3 100644
> --- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> @@ -351,12 +351,17 @@ syscon_peric0: syscon@10220000 {
>  			reg = <0x10220000 0x2000>;
>  		};
>  
> +		syscon_peric1: syscon@10820000 {
> +			compatible = "samsung,exynosautov9-sysreg", "syscon";
> +			reg = <0x10820000 0x2000>;
> +		};
> +
>  		usi_0: usi@103000c0 {
> -			compatible = "samsung,exynos850-usi";
> +			compatible = "samsung,exynosautov9-usi",
> +				     "samsung,exynos850-usi";

This change should be separate.

>  			reg = <0x103000c0 0x20>;
>  			samsung,sysreg = <&syscon_peric0 0x1000>;
>  			samsung,mode = <USI_V2_UART>;
> -			samsung,clkreq-on; /* needed for UART mode */
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -365,16 +370,1078 @@ usi_0: usi@103000c0 {
>  			clock-names = "pclk", "ipclk";
>  			status = "disabled";
>  
> -			/* USI: UART */
>  			serial_0: serial@10300000 {
> -				compatible = "samsung,exynos850-uart";
> +				compatible = "samsung,exynosautov9-uart",
> +					     "samsung,exynos850-uart";
>  				reg = <0x10300000 0xc0>;

As well.

Best regards,
Krzysztof
