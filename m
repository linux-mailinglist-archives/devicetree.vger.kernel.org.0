Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7EEF70DB58
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 13:17:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235288AbjEWLRn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 07:17:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbjEWLRm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 07:17:42 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 741C5FF
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 04:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684840658; x=1716376658;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=mzrgwDtBMRPABCx8Q3NOOg2pacgX8DKWBcqrXhShyDc=;
  b=G/WAM4FGAnvzfjrHTJELzOAqJu+cXu09peg03TzCvPZWBpq8557NNnYi
   n20fhExowu6g8nK9X0JrEEhkG2OoPDqBkSzmJWfJ0XUAvI3AJtqNSG3fw
   T6IDqnPuo0/CFjzC6WK5n7cVUgNK3miyra1oZASPjXdI8D+ObKYwDIzaD
   FNV4lf4Qhxl0KsV+y1yR8i8mCC9ypHZhSERRMaVBea/79hh5M7tgEPtiY
   xt3nujWAiJl0JxNGmUw8Fwv1M2bWfwKI1AvbjvTyoOZkwmCDyA9oqeHRz
   J6+RWKUBQ8OvL2MIykK92s89E+v4dvaCPfyDBSh6zBPH3YXw3eT8lZDdh
   g==;
X-IronPort-AV: E=Sophos;i="6.00,186,1681164000"; 
   d="scan'208";a="31045277"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 23 May 2023 13:17:35 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 23 May 2023 13:17:35 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 23 May 2023 13:17:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684840655; x=1716376655;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=mzrgwDtBMRPABCx8Q3NOOg2pacgX8DKWBcqrXhShyDc=;
  b=cEzeK0Ubnsj0oZL4fsRqPHBjQNYJJAUjIIl3sFjODYDcs68d44X+lRQX
   iS3CcKeZpoZhoYOQV3qT5aQaJ8vUr5VJGw3YT3hBHcGJ7lFHy4sLXt5o+
   I/i+E3Oa3/bdN1L7x4zZ+fdDuBXCaTfMGBLA3RHV1xIXztPs3ohtblkAn
   GpsltqHxLXjIVk4IO8l8Cxof0x8yWgKBX3V7is2LP1mVCQPF/G+xhAQfo
   O4kVb6E7oTCZh7vMlmzQx1y+5lnwWLeDpHkkV0WF/QrtbM/3N/ShwpH2H
   G7iZN0qiYDEFDVcZEqVSQqT2x7phsw1n5hNRFlyWfkQzsqjGNE05r15RP
   w==;
X-IronPort-AV: E=Sophos;i="6.00,186,1681164000"; 
   d="scan'208";a="31045276"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 23 May 2023 13:17:35 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 137D5280082;
        Tue, 23 May 2023 13:17:35 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] arm64: dts: imx8mp: Add TC9595 bridge on DH electronics i.MX8M Plus DHCOM
Date:   Tue, 23 May 2023 13:17:34 +0200
Message-ID: <2684415.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230515162424.67597-1-marex@denx.de>
References: <20230515162424.67597-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Marek,

Am Montag, 15. Mai 2023, 18:24:24 CEST schrieb Marek Vasut:
> Add TC9595 DSI-to-DPI and DSI-to-(e)DP bridge to
> DH electronics i.MX8M Plus DHCOM SoM . The bridge
> is populated on the SoM, but disabled by default
> unless used for display output.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>

Were you actually able to access the display? E.g. reading DPCD via AUX=20
channel?

Best regards,
Alexander

> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  .../boot/dts/freescale/imx8mp-dhcom-som.dtsi  | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi index
> 98a11c31d7d45..9c0cb75386e36 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> @@ -240,6 +240,36 @@ &i2c3 {
>  	sda-gpios =3D <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status =3D "okay";
>=20
> +	tc_bridge: bridge@f {
> +		compatible =3D "toshiba,tc9595", "toshiba,tc358767";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_tc9595>;
> +		reg =3D <0xf>;
> +		clock-names =3D "ref";
> +		clocks =3D <&clk IMX8MP_CLK_CLKOUT2>;
> +		assigned-clocks =3D <&clk IMX8MP_CLK_CLKOUT2_SEL>,
> +				  <&clk IMX8MP_CLK_CLKOUT2>,
> +				  <&clk IMX8MP_AUDIO_PLL2_OUT>;
> +		assigned-clock-parents =3D <&clk IMX8MP_AUDIO_PLL2_OUT>;
> +		assigned-clock-rates =3D <13000000>, <13000000>,=20
<156000000>;
> +		reset-gpios =3D <&gpio3 21 GPIO_ACTIVE_HIGH>;
> +		status =3D "disabled";
> +
> +		ports {
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +
> +			port@0 {
> +				reg =3D <0>;
> +
> +				tc_bridge_in: endpoint {
> +					data-lanes =3D <1 2 3 4>;
> +					remote-endpoint =3D=20
<&dsi_out>;
> +				};
> +			};
> +		};
> +	};
> +
>  	pmic: pmic@25 {
>  		compatible =3D "nxp,pca9450c";
>  		reg =3D <0x25>;
> @@ -406,6 +436,22 @@ &i2c5 {	/* HDMI EDID bus */
>  	status =3D "okay";
>  };
>=20
> +&mipi_dsi {
> +	samsung,burst-clock-frequency =3D <160000000>;
> +	samsung,esc-clock-frequency =3D <10000000>;
> +
> +	ports {
> +		port@1 {
> +			reg =3D <1>;
> +
> +			dsi_out: endpoint {
> +				data-lanes =3D <1 2 3 4>;
> +				remote-endpoint =3D <&tc_bridge_in>;
> +			};
> +		};
> +	};
> +};
> +
>  &pwm1 {
>  	pinctrl-0 =3D <&pinctrl_pwm1>;
>  	pinctrl-names =3D "default";
> @@ -880,6 +926,15 @@ MX8MP_IOMUXC_SAI3_TXD__AUDIOMIX_SAI3_TX_DATA00	0xd6
>=20
>  		>;
>=20
>  	};
>=20
> +	pinctrl_tc9595: dhcom-tc9595-grp {
> +		fsl,pins =3D <
> +			/* RESET_DSIBRIDGE */
> +			MX8MP_IOMUXC_SAI1_RXC__GPIO4_IO01	=09
0x40000146
> +			/* DSI-CONV_INT Interrupt */
> +			MX8MP_IOMUXC_SAI5_RXD0__GPIO3_IO21	=09
0x141
> +		>;
> +	};
> +
>  	pinctrl_touch: dhcom-touch-grp {
>  		fsl,pins =3D <
>  			/* #TOUCH_INT */


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


