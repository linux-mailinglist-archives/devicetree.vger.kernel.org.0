Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3FD2609211
	for <lists+devicetree@lfdr.de>; Sun, 23 Oct 2022 11:47:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230031AbiJWJrC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 05:47:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229707AbiJWJrA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 05:47:00 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 121365B7AD
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 02:46:57 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1omXZA-0002uP-4D; Sun, 23 Oct 2022 11:46:48 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        michael.riesch@wolfvision.net, s.hauer@pengutronix.de,
        pgwipeout@gmail.com, frattaroli.nicolas@gmail.com,
        frank-w@public-files.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Shengyu Qu <wiagn233@outlook.com>
Cc:     Shengyu Qu <wiagn233@outlook.com>
Subject: Re: [RESEND PATCH v3] arm64: dts: rockchip: Add support for RADXA SDIO Wifi/BT M.2 ekey module for rock 3a
Date:   Sun, 23 Oct 2022 11:46:47 +0200
Message-ID: <6001384.lOV4Wx5bFT@diego>
In-Reply-To: <TY3P286MB26114252F957314C95381349982C9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
References: <TY3P286MB26114252F957314C95381349982C9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shengyu Qu,

Am Samstag, 22. Oktober 2022, 21:34:12 CEST schrieb Shengyu Qu:
> Tested with RADXA A6 module, which uses AP6275S (BCM43752A2)
> 
> Changes in v2:
> - Fix SDMMC2 vmmc/vqmmc supply configuration
> 
> Changes in v3:
> - Fix UART1 vbat/vddio supply configuration
> 
> Signed-off-by: Shengyu Qu <wiagn233@outlook.com>

the patch below contains a number of unlerated changes that want to be split
into multiple ones. So you want 3 separate patches in total.

- add the i2s controller to rk356x.dtso
- add the i2s enablement to the rock3a
  (also please specify where it leads to as in the patch below only enables
   the i2s2_2ch without anything using it)
- add the wifi controller with its nodes,


Regards
Heiko



> ---
>  .../boot/dts/rockchip/rk3568-rock-3a.dts      | 80 +++++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 22 +++++
>  2 files changed, 102 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 6b5093a1a6cf..37676e8a258c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -60,6 +60,23 @@ simple-audio-card,codec {
>  		};
>  	};
>  
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk809 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable>;
> +		post-power-on-delay-ms = <100>;
> +		power-off-delay-us = <5000000>;
> +
> +		/* On the module itself this is one of these (depending on the actual
> +		 * card populated):
> +		 * - SDIO_RESET_L_WL_REG_ON
> +		 * - PDN (power down when low)
> +		 */
> +		reset-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
> +	};
> +
>  	vcc12v_dcin: vcc12v-dcin {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc12v_dcin";
> @@ -449,6 +466,11 @@ &i2s1_8ch {
>  	status = "okay";
>  };
>  
> +&i2s2_2ch {
> +	rockchip,trcm-sync-tx-only;
> +	status = "okay";
> +};
> +
>  &mdio1 {
>  	rgmii_phy1: ethernet-phy@0 {
>  		compatible = "ethernet-phy-ieee802.3-c22";
> @@ -492,6 +514,26 @@ vcc5v0_usb_otg_en: vcc5v0_usb_otg_en {
>  			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> +
> +	bt {
> +		bt_enable: bt_enable {
> +			rockchip,pins = <4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		bt_host_wake: bt_host_wake {
> +			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		bt_wake: bt_wake {
> +			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	sdio-pwrseq {
> +		wifi_enable: wifi_enable {
> +			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
>  };
>  
>  &pmu_io_domains {
> @@ -536,12 +578,50 @@ &sdmmc0 {
>  	status = "okay";
>  };
>  
> +&sdmmc2 {
> +	supports-sdio;
> +	bus-width = <4>;
> +	disable-wp;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
> +	sd-uhs-sdr104;
> +	vmmc-supply = <&vcc3v3_sys>;
> +	vqmmc-supply = <&vcc_1v8>;
> +	status = "okay";
> +};
> +
>  &tsadc {
>  	rockchip,hw-tshut-mode = <1>;
>  	rockchip,hw-tshut-polarity = <0>;
>  	status = "okay";
>  };
>  
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
> +	uart-has-rtscts;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm43438-bt";
> +		clocks = <&rk809 1>;
> +		clock-names = "lpo";
> +		device-wakeup-gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
> +		shutdown-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_host_wake &bt_wake &bt_enable>;
> +		vbat-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vcc_1v8>;
> +		/* vddio comes from regulator inside module, use IO voltage instead */
> +	};
> +};
> +
>  &uart2 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 319981c3e9f7..73df56107db4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -1009,6 +1009,28 @@ &i2s1m0_sdo0   &i2s1m0_sdo1
>  		status = "disabled";
>  	};
>  
> +	i2s2_2ch: i2s@fe420000 {
> +		compatible = "rockchip,rk3568-i2s-tdm";
> +		reg = <0x0 0xfe420000 0x0 0x1000>;
> +		interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> +		assigned-clocks = <&cru CLK_I2S2_2CH_SRC>;
> +		assigned-clock-rates = <1188000000>;
> +		clocks = <&cru MCLK_I2S2_2CH>, <&cru MCLK_I2S2_2CH>, <&cru HCLK_I2S2_2CH>;
> +		clock-names = "mclk_tx", "mclk_rx", "hclk";
> +		dmas = <&dmac1 4>, <&dmac1 5>;
> +		dma-names = "tx", "rx";
> +		resets = <&cru SRST_M_I2S2_2CH>;
> +		reset-names = "m";
> +		rockchip,grf = <&grf>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2s2m0_sclktx
> +				&i2s2m0_lrcktx
> +				&i2s2m0_sdi
> +				&i2s2m0_sdo>;
> +		#sound-dai-cells = <0>;
> +		status = "disabled";
> +	};
> +
>  	i2s3_2ch: i2s@fe430000 {
>  		compatible = "rockchip,rk3568-i2s-tdm";
>  		reg = <0x0 0xfe430000 0x0 0x1000>;
> 




