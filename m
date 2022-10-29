Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C542611FE3
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 06:02:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbiJ2ECE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Oct 2022 00:02:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiJ2ECD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Oct 2022 00:02:03 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8E981D3C7F
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 21:02:01 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 592F760E88
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 04:02:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C1E7C433D6;
        Sat, 29 Oct 2022 04:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667016120;
        bh=dHLI7VViNYscanQl9SvMuia8DO1jkd5HHzk1mdYw0DU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=AZgBQW3EH7RsIdxqdwRWf2NpFTEUffEIjPkdwzUHeCI6GigAJ0fFY2THiw/nF+uz4
         o35sQ7+VYudYOl13zw9OBKwrEvug2xlNH+UR2DbqqhbYp8CgPS9XXNOw282w2e+tzc
         C0qFdvpVOSOHT7nQSJAgdCGT3CfnObTBZelRV56dqkA9rJfGqBOU9Q/INkKffUAJ65
         matiZBmWSWp48gnUoeljk4yJBc/bJI+4zLUAxYwYYs5gOuE+7dbn4IB9WFvleLE01e
         gYCJYixIIfiTGiStpIpHaNYqX2EviFtqaF3cMB6RcweeyzsRl5c5SkCoq1+BQt/zU8
         DUHO2To8S+4Gw==
Date:   Sat, 29 Oct 2022 12:01:53 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: freescale: Add PWM fan support
Message-ID: <20221029040153.GM125525@dragon>
References: <20221018093341.2581862-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221018093341.2581862-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 18, 2022 at 11:33:41AM +0200, Alexander Stein wrote:
> This adds the support for optional PWM fan 422J/2HP.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Board name should be specified in the patch subject to tell this is a
board specific change, maybe something like `arm64: dts: mba8mpxl: ...`?

Shawn

> ---
> Now with inverted polarity support for pwm-fan in place, add PWM fan DT
> nodes for TQMa8MPQL + MBa8MPxL. As this is optional, it's disabled by
> default. This is based on next-20221018.
> 
> Note: This device needs 'pwm1_enable' set to 3. E.g. using udev rule:
> SUBSYSTEM=="hwmon", DRIVERS=="pwm-fan", ATTR{pwm1_enable}="3"
> 
>  .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 76 +++++++++++++++++++
>  1 file changed, 76 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> index 7a32379cd006..ffd117f17bbe 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> @@ -55,6 +55,21 @@ clk_xtal25: clk-xtal25 {
>  		clock-frequency = <25000000>;
>  	};
>  
> +	fan0: pwm-fan {
> +		compatible = "pwm-fan";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pwmfan>;
> +		fan-supply = <&reg_pwm_fan>;
> +		#cooling-cells = <2>;
> +		/* typical 25 kHz -> 40.000 nsec */
> +		pwms = <&pwm3 0 40000 PWM_POLARITY_INVERTED>;
> +		cooling-levels = <0 32 64 128 196 240>;
> +		pulses-per-revolution = <2>;
> +		interrupt-parent = <&gpio5>;
> +		interrupts = <18 IRQ_TYPE_EDGE_FALLING>;
> +		status = "disabled";
> +	};
> +
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  		pinctrl-names = "default";
> @@ -115,6 +130,18 @@ display: display {
>  		status = "disabled";
>  	};
>  
> +	reg_pwm_fan: regulator-pwm-fan {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_regpwmfan>;
> +		regulator-name = "FAN_PWR";
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +		gpio = <&gpio4 27 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		vin-supply = <&reg_vcc_12v0>;
> +	};
> +
>  	reg_usdhc2_vmmc: regulator-usdhc2 {
>  		compatible = "regulator-fixed";
>  		pinctrl-names = "default";
> @@ -172,6 +199,47 @@ linux,cma {
>  			linux,cma-default;
>  		};
>  	};
> +
> +	thermal-zones {
> +		soc-thermal {
> +			trips {
> +				soc_active0: trip-active0 {
> +					temperature = <40000>;
> +					hysteresis = <5000>;
> +					type = "active";
> +				};
> +
> +				soc_active1: trip-active1 {
> +					temperature = <48000>;
> +					hysteresis = <3000>;
> +					type = "active";
> +				};
> +
> +				soc_active2: trip-active2 {
> +					temperature = <60000>;
> +					hysteresis = <10000>;
> +					type = "active";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map1 {
> +					trip = <&soc_active0>;
> +					cooling-device = <&fan0 1 1>;
> +				};
> +
> +				map2 {
> +					trip = <&soc_active1>;
> +					cooling-device = <&fan0 2 2>;
> +				};
> +
> +				map3 {
> +					trip = <&soc_active2>;
> +					cooling-device = <&fan0 3 3>;
> +				};
> +			};
> +		};
> +	};
>  };
>  
>  &ecspi1 {
> @@ -725,10 +793,18 @@ pinctrl_pwm3: pwm3grp {
>  		fsl,pins = <MX8MP_IOMUXC_I2C3_SDA__PWM3_OUT		0x14>;
>  	};
>  
> +	pinctrl_pwmfan: pwmfangrp {
> +		fsl,pins = <MX8MP_IOMUXC_I2C3_SCL__GPIO5_IO18		0x80>; /* FAN RPM */
> +	};
> +
>  	pinctrl_reg12v0: reg12v0grp {
>  		fsl,pins = <MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06		0x140>; /* VCC12V enable */
>  	};
>  
> +	pinctrl_regpwmfan: regpwmfangrp {
> +		fsl,pins = <MX8MP_IOMUXC_SAI2_MCLK__GPIO4_IO27		0x80>;
> +	};
> +
>  	/* X61 */
>  	pinctrl_uart1: uart1grp {
>  		fsl,pins = <MX8MP_IOMUXC_SD1_CLK__UART1_DCE_TX		0x140>,
> -- 
> 2.25.1
> 
