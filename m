Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE09B619547
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 12:19:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbiKDLTl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 07:19:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230047AbiKDLTk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 07:19:40 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A66CFF70
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 04:19:37 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id a13so7188206edj.0
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 04:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=70wqO+pJXSBq7kgq1BvRCuGjfKO9gFjmDUNdKxj0crA=;
        b=BKEDjKpMkeieRzw+uepL+Efc1MxH4LNg6aMa7Rh8khn/XxR9eNEKfAGaoJ7nt3SXST
         CYegd0P5i4FNkvgZxmP+D0sClvE0fXMWQZ5CEj2nR+8Y4VGJtp1WALhND8hWxvR1iIOF
         gLBeYxOIxpV4ZXtWOHmrWtofDFlv3pvnSTdRS0qE4WYFW5kLpQHL8ER+igrwuNjSOZk4
         QikMgnxIEf9lUA5pJhqn8Pdi4/MTwXDTMf7CseZawMmZVNW3UAsiN10gbiWxcbA8/Baw
         EmR5b3FqAqyTSLC01hD/E9WNMPFOG2FsFWc8dIN6fNMAUbZo8xV1FuIurqIIQ6vEBvh4
         6/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=70wqO+pJXSBq7kgq1BvRCuGjfKO9gFjmDUNdKxj0crA=;
        b=sDEZDOLO9xdxLONEYClYgRtQitqf0c09r/1I9metL9JCa72Pd/gyFDwUjgPSJwgLkV
         zBC3SV+Z4NhBjCrLA8080MERY8hPYKSs3vNEGy9T9m51jVH4+qfhV3FkKT4+nU/11oxg
         6T1NF6sSCYd+0tNbhi+LHV9Pj48fevBST9BMV9huJmgLCFPAsWxEFvth1f3h7BDA/Abu
         KJqzCjuhx6nUzeHLTe1Hm/ghLRljHoVbhdXnGnWBXPhy8VOf+eCd/Ridn0O9x/rWSRFd
         0lf9yn4Exh3mWS/4+9LRb9yQs+FdLJoVqn9TIzyaIZdaa8yVWxHjU7vhAcHPfmJ8yBtN
         nh7A==
X-Gm-Message-State: ACrzQf2F7yYG+6kcV0StXYXXsddCLm2pAHACKP6td7Z185cWvqFP7tt1
        bQSRAUvUeIYpiHwbpiCghMo=
X-Google-Smtp-Source: AMsMyM5BE5wXcGNBuQQuD0wT9t8/AvrG3Fs+l+Vw0pxo6/x3LgYG2y53TXxklM6nrZ4/jiZOneSPMA==
X-Received: by 2002:a05:6402:501b:b0:459:df91:983 with SMTP id p27-20020a056402501b00b00459df910983mr33996190eda.85.1667560776027;
        Fri, 04 Nov 2022 04:19:36 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ky6-20020a170907778600b00782ee6b34f2sm1652996ejc.183.2022.11.04.04.19.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 04:19:35 -0700 (PDT)
Message-ID: <72cfc412-1bd6-25b8-eae2-5eb92784134f@gmail.com>
Date:   Fri, 4 Nov 2022 12:19:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v6 5/6] ARM: dts: rockchip: rv1126: Add Edgeble Neural
 Compute Module 2(Neu2)
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
References: <20221102124607.297083-1-jagan@edgeble.ai>
 <20221102124607.297083-5-jagan@edgeble.ai>
Content-Language: en-US
From:   Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20221102124607.297083-5-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan,

On 11/2/22 13:46, Jagan Teki wrote:
> Neural Compute Module 2(Neu2) is a 96boards SoM-CB compute module
> based on Rockchip RV1126 from Edgeble AI.
> 
> General features:
> - Rockchip RV1126
> - 2/4GB LPDDR4
> - 8/16/32GB eMMC
> - 2x MIPI CSI2 FPC connector
> - Fn-link 8223A-SR WiFi/BT
> 
> Industrial grade (-40 °C to +85 °C) version of the same class of module
> called Neu2k powered with Rockchip RV1126K.
> 
> Neu2 needs to mount on top of Edgeble IO boards for creating complete
> platform solutions.
> 
> Add support for it.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v6:
> - updated the SOM name
> 
>  arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi | 353 +++++++++++++++++++++
>  1 file changed, 353 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi
> 
> diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi b/arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi
> new file mode 100644
> index 000000000000..6425ba5714ea
> --- /dev/null
> +++ b/arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi
> @@ -0,0 +1,353 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
> + */
> +
> +/ {
> +	compatible = "edgeble,neural-compute-module-2", "rockchip,rv1126";
> +
> +	aliases {
> +		mmc0 = &emmc;
> +	};
> +

> +	vcc5v0_sys: vccsys {

Comment by Krzysztof:
Generic node names, so at least regulator prefix or suffix.

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +

> +	vccio_flash: vccio-flash {

same

> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&flash_vol_sel>;
> +		regulator-name = "vccio_flash";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc_3v3>;
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk809 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;
> +		reset-gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&emmc {
> +	bus-width = <8>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&emmc_bus8 &emmc_cmd &emmc_clk &emmc_rstnout>;
> +	vmmc-supply = <&vcc_3v3>;
> +	vqmmc-supply = <&vccio_flash>
> +	rockchip,default-sample-phase = <90>;

sort

> +	status = "okay";
> +};
> +
> +&i2c0 {

> +	status = "okay";

status below other properties

> +	clock-frequency = <400000>;
> +
> +	rk809: pmic@20 {
> +		compatible = "rockchip,rk809";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PB1 IRQ_TYPE_LEVEL_LOW>;
> +		#clock-cells = <1>;
> +		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l>;
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc5v0_sys>;
> +		vcc2-supply = <&vcc5v0_sys>;
> +		vcc3-supply = <&vcc5v0_sys>;
> +		vcc4-supply = <&vcc5v0_sys>;
> +		vcc5-supply = <&vcc_buck5>;
> +		vcc6-supply = <&vcc_buck5>;
> +		vcc7-supply = <&vcc5v0_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc5v0_sys>;
> +
> +		regulators {
> +			vdd_npu_vepu: DCDC_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <650000>;
> +				regulator-max-microvolt = <950000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-initial-mode = <0x2>;

> +				regulator-name = "vdd_npu_vepu";

Exception to the Heiko's sort rules:
regulator-name above all other properties that start with 'regulator-'.

> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_arm: DCDC_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <725000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vdd_arm";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vcc_ddr";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_sys: DCDC_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vcc3v3_sys";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_buck5: DCDC_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <2200000>;
> +				regulator-max-microvolt = <2200000>;
> +				regulator-name = "vcc_buck5";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <2200000>;
> +				};
> +			};
> +
> +			vcc_0v8: LDO_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <800000>;
> +				regulator-name = "vcc_0v8";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc1v8_pmu: LDO_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc1v8_pmu";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vdd0v8_pmu: LDO_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <800000>;
> +				regulator-name = "vcc0v8_pmu";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <800000>;
> +				};
> +			};
> +
> +			vcc_1v8: LDO_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc_1v8";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc_dovdd: LDO_REG5 {
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc_dovdd";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_dvdd: LDO_REG6 {
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-name = "vcc_dvdd";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_avdd: LDO_REG7 {
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-name = "vcc_avdd";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vccio_sd: LDO_REG8 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vccio_sd";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_sd: LDO_REG9 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc3v3_sd";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_5v0: SWITCH_REG1 {
> +				regulator-name = "vcc_5v0";
> +			};
> +
> +			vcc_3v3: SWITCH_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc_3v3";
> +			};
> +		};
> +	};
> +};
> +
> +&pinctrl {
> +	bt {
> +		bt_enable: bt-enable {
> +			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	flash {
> +		flash_vol_sel: flash-vol-sel {
> +			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int_l: pmic-int-l {
> +			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	wifi {
> +		wifi_enable_h: wifi-enable-h {
> +			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> +
> +&pmu_io_domains {
> +	pmuio0-supply = <&vcc1v8_pmu>;
> +	pmuio1-supply = <&vcc3v3_sys>;
> +	vccio1-supply = <&vccio_flash>;
> +	vccio2-supply = <&vccio_sd>;
> +	vccio3-supply = <&vcc_1v8>;
> +	vccio4-supply = <&vcc_dovdd>;
> +	vccio5-supply = <&vcc_1v8>;
> +	vccio6-supply = <&vcc_1v8>;
> +	vccio7-supply = <&vcc_dovdd>;
> +	status = "okay";
> +};
> +
> +&saradc {
> +	vref-supply = <&vcc_1v8>;
> +	status = "okay";
> +};
> +
> +&sdio {

> +	#address-cells = <1>;
> +	#size-cells = <0>;

Properties that start with '#' down the list as possible, but above status.
Only needed for the interpretation of the DT.

> +	max-frequency = <100000000>;

sort

> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
> +	vmmc-supply = <&vcc3v3_sys>;
> +	vqmmc-supply = <&vcc_1v8>;

> +	rockchip,default-sample-phase = <90>;

sort

> +	sd-uhs-sdr104;
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_xfer &uart0_ctsn &uart0_rtsn>;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "qcom,qca9377-bt";

> +		clocks = <&rk809 1>;
> +		clock-names = "lpo";

arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: bluetooth: 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'

> +		enable-gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>; /* BT_RST */
> +		max-speed = <2000000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_enable>;
> +		vddxo-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vcc_1v8>;
> +	};
> +};
