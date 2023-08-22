Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7D937839CC
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 08:16:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232973AbjHVGQV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 02:16:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232971AbjHVGQP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 02:16:15 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 369E31AD
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 23:16:05 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-99de884ad25so544165066b.3
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 23:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692684964; x=1693289764;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jfa3Yw3ooCU7fAbOhKPwacCM6+4uGpRDOWuX0Th/Jr4=;
        b=qQID4e2/gfGH0C3gtO1eEx/v4fW1O/fUM/PKFJMgw9iYt/ELiDTiLauxadahljD1tP
         hkfXtsw+n6C/em3PHQXGFhy3TZxAIKd1JccICBl9wPLkMJyYa1m3JOUAa+SJvCK5Vlr4
         EBHg6/e0XHLf1gypoQcTyoydOQrlW0kmeJ6Ek3czv12+IaS6w5cWkN2GsMnRsmyeroJa
         lTvjtkdHFAVxL/DgMIhYUdBFajJt7icWc7iwBxjOLbR0rWn8UI4L7C+nXRoo8g9wD5WH
         zOjH4SILrePSLpW5ap692m/v2gdQnjmnOKzbltqsxwmampK4DudCrGK8UBt3OkTJCIvJ
         rKsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692684964; x=1693289764;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jfa3Yw3ooCU7fAbOhKPwacCM6+4uGpRDOWuX0Th/Jr4=;
        b=PbCi6p+XLk6YjKu2ZRuc7+/5S1rQqo+6jvX+85i2JRuWCkAbBHqcQVGYHz5nrjt1DF
         ZBB3VDbgpGmXXwOvdQao3IeLwyPKm0iCpzaYOfns6+llxcLSkmz4YXQ6hhJFiHvMT8C9
         dnfLmsD7iZY/dLaRqalySKCGRj2PfVgMD0rfinJtzHhWFtwXjFN2v57IaXkT44ASPwhR
         n9IWUb22BDKrcNA8VY9gZPAck/+6ezaAykN8G/acx6uYMdGsO+5cRhTBy85/WnKiseob
         U3iPQLr18RI7WZPz5wMt5aKrYjmq+0cl28xrKZF1FEi/ayngYtbdn6pIBqhz3x5vWdwx
         GiWA==
X-Gm-Message-State: AOJu0YzFlLxQ4cdpwW4pw8CRYt6POQS8CCsTltlxt6t2yJ3hAikdxydo
        aF6Tozf95nEALdZMfyf4yWKI0g==
X-Google-Smtp-Source: AGHT+IGRB5cpWSilLjIhdyZF5nBSfzueHd+iMu7+KFL643cMMYZ98jb7lHKbrKSh2r3ccTAMLOm2vw==
X-Received: by 2002:a17:906:2250:b0:99b:bdff:b0ac with SMTP id 16-20020a170906225000b0099bbdffb0acmr7006756ejr.16.1692684963731;
        Mon, 21 Aug 2023 23:16:03 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id pv21-20020a170907209500b009829dc0f2a0sm7572587ejb.111.2023.08.21.23.16.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 23:16:03 -0700 (PDT)
Message-ID: <33481b01-6c22-5045-d2e3-a85dd47241bd@linaro.org>
Date:   Tue, 22 Aug 2023 08:16:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/3] arm64: dts: imx8mm-tqma8mqml-mba8mx: Add DSI-LVDS
 bridge node
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux@ew.tq-group.com,
        linux-arm-kernel@lists.infradead.org
References: <20230821134026.385752-1-alexander.stein@ew.tq-group.com>
 <20230821134026.385752-2-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230821134026.385752-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/08/2023 15:40, Alexander Stein wrote:
> This adds the DSI-LVDS bridge including the regulator, backlight and
> an unspecified panel. It is expected to set the compatible when the
> display chain is enabled.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../dts/freescale/imx8mm-tqma8mqml-mba8mx.dts | 29 ++++++++
>  .../boot/dts/freescale/imx8mm-tqma8mqml.dtsi  |  5 ++
>  arch/arm64/boot/dts/freescale/mba8mx.dtsi     | 68 +++++++++++++++++++
>  3 files changed, 102 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> index 156d793a0c972..b2b825d990a62 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> @@ -56,6 +56,19 @@ usb_dr_connector: endpoint {
>  	};
>  };
>  
> +&dsi_lvds_bridge {
> +	ports {
> +		port@0 {
> +			reg = <0>;
> +
> +			lvds_bridge_in: endpoint {
> +				data-lanes = <1 2 3 4>;
> +				remote-endpoint = <&mipi_dsi_out>;
> +			};
> +		};
> +	};
> +};
> +
>  &i2c1 {
>  	expander2: gpio@27 {
>  		compatible = "nxp,pca9555";
> @@ -72,6 +85,22 @@ expander2: gpio@27 {
>  	};
>  };
>  
> +&mipi_dsi {
> +	samsung,burst-clock-frequency = <891000000>;
> +	samsung,esc-clock-frequency = <20000000>;
> +
> +	ports {
> +		port@1 {
> +			reg = <1>;
> +
> +			mipi_dsi_out: endpoint {
> +				data-lanes = <1 2 3 4>;
> +				remote-endpoint = <&lvds_bridge_in>;
> +			};
> +		};
> +	};
> +};
> +
>  &pcie_phy {
>  	clocks = <&pcie0_refclk>;
>  	status = "okay";
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
> index b4466a26d838a..8c0c6e7159247 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
> @@ -230,6 +230,11 @@ eeprom0: eeprom@57 {
>  	};
>  };
>  
> +&mipi_dsi {
> +	vddcore-supply = <&ldo4_reg>;
> +	vddio-supply = <&ldo3_reg>;
> +};
> +
>  &pcie_phy {
>  	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
>  	fsl,clkreq-unsupported;
> diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
> index 8a9fe5cdcc98a..269e604cb1574 100644
> --- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
> +++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
> @@ -8,6 +8,16 @@
>  /* TQ-Systems GmbH MBa8Mx baseboard */
>  
>  / {
> +	backlight_lvds0: backlight0 {

Why 0?

> +		compatible = "pwm-backlight";
> +		pwms = <&pwm3 0 5000000 0>;
> +		brightness-levels = <0 4 8 16 32 64 128 255>;
> +		default-brightness-level = <7>;
> +		power-supply = <&reg_12v>;
> +		enable-gpios = <&expander2 2 GPIO_ACTIVE_HIGH>;
> +		status = "disabled";
> +	};
> +
>  	beeper {
>  		compatible = "pwm-beeper";
>  		pwms = <&pwm4 0 250000 0>;
> @@ -65,12 +75,45 @@ led2: led2 {
>  		};
>  	};
>  
> +	gpio_delays: gpio-delays {
> +		compatible = "gpio-delay";
> +		#gpio-cells = <3>;
> +		gpio-controller;
> +		gpios = <&expander0 6 GPIO_ACTIVE_HIGH>;
> +		gpio-line-names = "LVDS_BRIDGE_EN_1V8";
> +	};
> +
> +	panel0: panel_lvds0 {

No underscores in node names. Why 0?



Best regards,
Krzysztof

