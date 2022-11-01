Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D35DB6144D2
	for <lists+devicetree@lfdr.de>; Tue,  1 Nov 2022 07:50:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbiKAGuN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Nov 2022 02:50:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229795AbiKAGuM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Nov 2022 02:50:12 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4444A454
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 23:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667285410; x=1698821410;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Wrtbw4bfmmQeTFu8GcQUuP3Xca/ScNSUlmFojB7Mf3A=;
  b=fnxK94SIpfVeja76L/aOgtN11IrMMc37Oz6+5lD0r7aV6hRdvmLREtrp
   1d3egNY5YoayrO5KVBKnup9/CorwE6Jkv2WgrcCsfLirLaIAGjSZE6B43
   f80pURKD8WCRf7qt4udZp2JrSHCAKN9D20fLpzjt/GQlcjhRladop/0h2
   RfmZq7BtXQqOY/lVDl6YunnF4Q9rwUovegaMXf/sgQyD/QiO9SKU7SRDM
   ZTW08/geCBDK4xXOsKDN08C478VIvMNRIkVs1pHT/lnPHl19Jh8OnzopZ
   SP6CNchP+qc7FzqYEKueUZ7cjGf7KYTl/neECoJoRUgHECXznblGjiuBc
   A==;
X-IronPort-AV: E=Sophos;i="5.95,230,1661810400"; 
   d="scan'208";a="27081796"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 01 Nov 2022 07:50:08 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 01 Nov 2022 07:50:08 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 01 Nov 2022 07:50:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667285408; x=1698821408;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Wrtbw4bfmmQeTFu8GcQUuP3Xca/ScNSUlmFojB7Mf3A=;
  b=nk3n42AivnXvlgAaIbDqrX9LZ1g1tmOIPEIlbITQ3SdB6maJef3EVSsY
   0FENgbU1DJobzROH4qUVC7d8p1K82TQaNznq/gkrrYW1c/ac0mfGRJDhe
   woqYaghCh48woKhylga6S88HV+UympoX6bx5JtJYgP3SEOzPnhywpXcVg
   r6+62x2wsy5izBmiJ2G6vx37/awxYHfF7q8/ylTXtRVqS+CktZzvML02J
   FwjVqT4xaf7JowgwKJBDtxCHKqdts+3IIERGhbnrV4OGLEbiMw9tkXu71
   PQ1yazepqDWrtp0q06Ni1nsjR716a4wA8KAWQOZ9s+LuzKjHW+vH3CYcJ
   w==;
X-IronPort-AV: E=Sophos;i="5.95,230,1661810400"; 
   d="scan'208";a="27081795"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 01 Nov 2022 07:50:08 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E0148280056;
        Tue,  1 Nov 2022 07:50:07 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: freescale: Add PWM fan support
Date:   Tue, 01 Nov 2022 07:50:04 +0100
Message-ID: <12085940.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20221029040153.GM125525@dragon>
References: <20221018093341.2581862-1-alexander.stein@ew.tq-group.com> <20221029040153.GM125525@dragon>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Samstag, 29. Oktober 2022, 06:01:53 CET schrieb Shawn Guo:
> On Tue, Oct 18, 2022 at 11:33:41AM +0200, Alexander Stein wrote:
> > This adds the support for optional PWM fan 422J/2HP.
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> 
> Board name should be specified in the patch subject to tell this is a
> board specific change, maybe something like `arm64: dts: mba8mpxl: ...`?

Yes, you are right. Will fix that. Thanks
Alexander

> Shawn
> 
> > ---
> > Now with inverted polarity support for pwm-fan in place, add PWM fan DT
> > nodes for TQMa8MPQL + MBa8MPxL. As this is optional, it's disabled by
> > default. This is based on next-20221018.
> > 
> > Note: This device needs 'pwm1_enable' set to 3. E.g. using udev rule:
> > SUBSYSTEM=="hwmon", DRIVERS=="pwm-fan", ATTR{pwm1_enable}="3"
> > 
> >  .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 76 +++++++++++++++++++
> >  1 file changed, 76 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> > b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts index
> > 7a32379cd006..ffd117f17bbe 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> > @@ -55,6 +55,21 @@ clk_xtal25: clk-xtal25 {
> > 
> >  		clock-frequency = <25000000>;
> >  	
> >  	};
> > 
> > +	fan0: pwm-fan {
> > +		compatible = "pwm-fan";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_pwmfan>;
> > +		fan-supply = <&reg_pwm_fan>;
> > +		#cooling-cells = <2>;
> > +		/* typical 25 kHz -> 40.000 nsec */
> > +		pwms = <&pwm3 0 40000 PWM_POLARITY_INVERTED>;
> > +		cooling-levels = <0 32 64 128 196 240>;
> > +		pulses-per-revolution = <2>;
> > +		interrupt-parent = <&gpio5>;
> > +		interrupts = <18 IRQ_TYPE_EDGE_FALLING>;
> > +		status = "disabled";
> > +	};
> > +
> > 
> >  	gpio-keys {
> >  	
> >  		compatible = "gpio-keys";
> >  		pinctrl-names = "default";
> > 
> > @@ -115,6 +130,18 @@ display: display {
> > 
> >  		status = "disabled";
> >  	
> >  	};
> > 
> > +	reg_pwm_fan: regulator-pwm-fan {
> > +		compatible = "regulator-fixed";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_regpwmfan>;
> > +		regulator-name = "FAN_PWR";
> > +		regulator-min-microvolt = <12000000>;
> > +		regulator-max-microvolt = <12000000>;
> > +		gpio = <&gpio4 27 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +		vin-supply = <&reg_vcc_12v0>;
> > +	};
> > +
> > 
> >  	reg_usdhc2_vmmc: regulator-usdhc2 {
> >  	
> >  		compatible = "regulator-fixed";
> >  		pinctrl-names = "default";
> > 
> > @@ -172,6 +199,47 @@ linux,cma {
> > 
> >  			linux,cma-default;
> >  		
> >  		};
> >  	
> >  	};
> > 
> > +
> > +	thermal-zones {
> > +		soc-thermal {
> > +			trips {
> > +				soc_active0: trip-active0 {
> > +					temperature = <40000>;
> > +					hysteresis = <5000>;
> > +					type = "active";
> > +				};
> > +
> > +				soc_active1: trip-active1 {
> > +					temperature = <48000>;
> > +					hysteresis = <3000>;
> > +					type = "active";
> > +				};
> > +
> > +				soc_active2: trip-active2 {
> > +					temperature = <60000>;
> > +					hysteresis = <10000>;
> > +					type = "active";
> > +				};
> > +			};
> > +
> > +			cooling-maps {
> > +				map1 {
> > +					trip = <&soc_active0>;
> > +					cooling-device = <&fan0 1 
1>;
> > +				};
> > +
> > +				map2 {
> > +					trip = <&soc_active1>;
> > +					cooling-device = <&fan0 2 
2>;
> > +				};
> > +
> > +				map3 {
> > +					trip = <&soc_active2>;
> > +					cooling-device = <&fan0 3 
3>;
> > +				};
> > +			};
> > +		};
> > +	};
> > 
> >  };
> >  
> >  &ecspi1 {
> > 
> > @@ -725,10 +793,18 @@ pinctrl_pwm3: pwm3grp {
> > 
> >  		fsl,pins = <MX8MP_IOMUXC_I2C3_SDA__PWM3_OUT		
0x14>;
> >  	
> >  	};
> > 
> > +	pinctrl_pwmfan: pwmfangrp {
> > +		fsl,pins = <MX8MP_IOMUXC_I2C3_SCL__GPIO5_IO18		
0x80>; /* FAN RPM */
> > +	};
> > +
> > 
> >  	pinctrl_reg12v0: reg12v0grp {
> >  	
> >  		fsl,pins = <MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06		
0x140>; /* VCC12V
> >  		enable */
> >  	
> >  	};
> > 
> > +	pinctrl_regpwmfan: regpwmfangrp {
> > +		fsl,pins = <MX8MP_IOMUXC_SAI2_MCLK__GPIO4_IO27		
0x80>;
> > +	};
> > +
> > 
> >  	/* X61 */
> >  	pinctrl_uart1: uart1grp {
> >  	
> >  		fsl,pins = <MX8MP_IOMUXC_SD1_CLK__UART1_DCE_TX		
0x140>,




