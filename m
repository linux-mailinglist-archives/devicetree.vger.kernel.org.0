Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74F7A54F694
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 13:21:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236185AbiFQLVV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 07:21:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230307AbiFQLVV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 07:21:21 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B93D16C569
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 04:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655464880; x=1687000880;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SqqORt2lC2LxvXhiT1YfIXmlGzsUQNc9P3IGQGRKcSU=;
  b=Wyl01Lbx3oiSfBfa9Ufw+/mM8DhLpQ0yvI+uFhqBpOwaO2SnKTsOa2W0
   FhYeEAyj5f/2lj73ivnLE5/+WBIHoJTJy+9XRV3etVLRWH8vS+OKS1GyH
   WyDJdVSDsxTaX4KmRE5/Ql7j2R9GAgLJ9gadrJOGhFmhPouQdm54Ljkom
   WBMBD7TErkMLxjX51KVYAtwc/LuIpMPNv3aPi/g60PWSKKy2j3ZuY/8cw
   yKIwZ62MXHhZi5jhmJOaqPIFn6fwywE7UaWuMQTvqIq5F8wClxuMRu6vF
   Gdpn7odjoxeAqLf+8f3vSihq3qdfjxSKOnSp+Sb54X705zhgYHu/rINtg
   g==;
X-IronPort-AV: E=Sophos;i="5.92,306,1650924000"; 
   d="scan'208";a="24515801"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 17 Jun 2022 13:21:17 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 17 Jun 2022 13:21:18 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 17 Jun 2022 13:21:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655464877; x=1687000877;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SqqORt2lC2LxvXhiT1YfIXmlGzsUQNc9P3IGQGRKcSU=;
  b=pVuCw2CGrXOVMq1DP8ykyFopD62W7Ef2CL8YnP6cBo3WYrH3ManKL85f
   sQKuv1MGSMN0pKXRpgC1MfaJNniPKdJQex88dIuYriZ7qXbha4+KdajEv
   r8SvjL9HIqNsJrus+HaJYldP+ycHR7QDzAg/MFR/daG0DvtftewqJW+0s
   JV/Mo1ya1w6eS56CP22Lzrbfnez/zdaRacGfgdQEQMnaYue+SqAjPKMUN
   8qCCE3tQjWRsSO+z7YTv7Vp2+4yH3B+XhQM/6mJNJ2xSIpdpgnaMid8Ai
   5DasWjhyeGAg/Tfnwb0jaIeVHfYDteadMQSA9Wrphd1A4Llv0fvmO1W+e
   A==;
X-IronPort-AV: E=Sophos;i="5.92,306,1650924000"; 
   d="scan'208";a="24515800"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 17 Jun 2022 13:21:17 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 999BC280072;
        Fri, 17 Jun 2022 13:21:17 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@tq-group.com>
Subject: Re: (EXT) Re: [PATCH 2/2] arm64: dts: freescale: add initial device tree for TQMa8MPQL with i.MX8MP
Date:   Fri, 17 Jun 2022 13:21:17 +0200
Message-ID: <5819581.iIbC2pHGDl@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <e039bef3-3fc4-e11e-9dcd-fe3a764edf3b@linaro.org>
References: <20220616142221.3986670-1-alexander.stein@ew.tq-group.com> <20220616142221.3986670-3-alexander.stein@ew.tq-group.com> <e039bef3-3fc4-e11e-9dcd-fe3a764edf3b@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Krzysztof,

thanks for the fast feedback.

Am Donnerstag, 16. Juni 2022, 16:26:42 CEST schrieb Krzysztof Kozlowski:
> On 16/06/2022 07:22, Alexander Stein wrote:
> > This adds support for TQMa8MPQL module on MBa8MPxL board.
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > 
> >  arch/arm64/boot/dts/freescale/Makefile        |   1 +
> >  .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 689 ++++++++++++++++++
> >  .../boot/dts/freescale/imx8mp-tqma8mpql.dtsi  | 284 ++++++++
> >  3 files changed, 974 insertions(+)
> >  create mode 100644
> >  arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts create mode
> >  100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi> 
> > diff --git a/arch/arm64/boot/dts/freescale/Makefile
> > b/arch/arm64/boot/dts/freescale/Makefile index c288bda8aa36..ab8e61d4dd7c
> > 100644
> > --- a/arch/arm64/boot/dts/freescale/Makefile
> > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > @@ -82,6 +82,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
> > 
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
> > 
> > +dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mpxl.dtb
> > 
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw74xx.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dahlia.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dev.dtb
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> > b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts new file
> > mode 100644
> > index 000000000000..e9755bd7619c
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> > @@ -0,0 +1,689 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> > +/*
> > + * Copyright 2021-2022 TQ-Systems GmbH
> > + * Author: Alexander Stein <alexander.stein@tq-group.com>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/net/ti-dp83867.h>
> > +#include <dt-bindings/pwm/pwm.h>
> > +#include "imx8mp-tqma8mpql.dtsi"
> > +
> > +/ {
> > +	model = "TQ-Systems i.MX8MPlus TQMa8MPxL on MBa8MPxL";
> > +	compatible = "tq,imx8mp-tqma8mpql-mba8mpxl", "tq,imx8mp-tqma8mpql",
> > "fsl,imx8mp"; +
> > +	chosen {
> > +		stdout-path = &uart4;
> > +	};
> > +
> > +	iio-hwmon {
> > +		compatible = "iio-hwmon";
> > +		io-channels = <&adc 0>, <&adc 1>;
> > +	};
> > +
> > +	aliases {
> > +		mmc0 = &usdhc3;
> > +		mmc1 = &usdhc2;
> > +		mmc2 = &usdhc1;
> > +		rtc0 = &pcf85063;
> > +		rtc1 = &snvs_rtc;
> > +		spi0 = &flexspi;
> > +		spi1 = &ecspi1;
> > +		spi2 = &ecspi2;
> > +		spi3 = &ecspi3;
> > +	};
> > +
> > +	backlight_lvds: backlight-lvds {
> > +		compatible = "pwm-backlight";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_bllvds>;
> > +		pwms = <&pwm2 0 5000000 0>;
> > +		power-supply = <&reg_vcc_12v0>;
> > +		enable-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
> > +		status = "disabled";
> > +	};
> > +
> > +	gpio-keys {
> > +		compatible = "gpio-keys";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_gpiobutton>;
> > +		autorepeat;
> > +
> > +		switch1 {
> 
> swtich-1

Thanks, will change this.

> > +			label = "S12";
> > +			linux,code = <BTN_0>;
> > +			gpios = <&gpio5 26 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		switch2 {
> 
> switch-2

Dito.

> 
> > +			label = "S13";
> > +			linux,code = <BTN_1>;
> > +			gpios = <&gpio5 27 GPIO_ACTIVE_LOW>;
> > +		};
> > +	};
> > +
> > +	gpio-leds {
> > +		compatible = "gpio-leds";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_gpioled>;
> > +
> > +		led0 {
> 
> led-0

Will change this.

> > +			label = "led0";
> 
> Your label should be more useful... or just replace it with function and
> color.

I wasn't aware that function and color is preferred to label nowadays. I will 
use that instead.

> > +			gpios = <&gpio5 5 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger = "default-on";
> > +		};
> > +
> > +		led1 {
> 
> led-1

Will change this.

> > +			label = "led1";
> > +			gpios = <&gpio5 4 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger = "heartbeat";
> > +		};
> > +
> > +		led2 {
> 
> led-2

Will change this.

> > +			label = "led2";
> > +			gpios = <&gpio5 3 GPIO_ACTIVE_HIGH>;
> > +		};
> > +	};
> > +
> > +	lvds_panel: display {
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_lvdspanel>;
> > +		enable-gpios = <&gpio3 20 GPIO_ACTIVE_HIGH>;
> > +		backlight = <&backlight_lvds>;
> > +		status = "disabled";
> 
> What's this node about? There is no compatible.

As mentioned in the cover letter, some nodes are not used yet. In this case 
the intention is to apply an overlay for enabling the display later on. As the 
MBa8MPxL is a starter kit mainboard there is no fixed display attached. So a 
user might use our supported display or chose his own. But the backlight and 
display are fixed, so anything related to that can be part of the general 
mainboad DTS.
The display specific overlay will then have (among other things) the following 
snippet:

> &display0 {
> 	compatible = "tianma,tm070jvhg33";
> 	status = "okay";
> };

Power supply and enable GPIO are fixed, so there the can be part of the 
mainboard DTS while the actual compatible for the display might change.

I hope this makes this approach a bit more clear and this approach is 
acceptable.

Best regards,
Alexander



