Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 275245FC9C1
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 19:13:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229671AbiJLRNu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 13:13:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbiJLRNs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 13:13:48 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CED85CE9AF
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 10:13:46 -0700 (PDT)
Received: from pendragon.ideasonboard.com (cpc89244-aztw30-2-0-cust3082.18-1.cable.virginm.net [86.31.172.11])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7A56B4D3;
        Wed, 12 Oct 2022 19:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665594823;
        bh=JzMcnNxuklzUG576ve+QqdnY9wB+4GYQvMft7MhJ6eQ=;
        h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
        b=ukuW2ZM2YGPJe9fJMsvQwtLfFuA1TWqpTiFCrG8+banYHxPLLwHEgVsowae6T0iTc
         5/slusL+K7zYSQCtDN78H+7VOxqfjWt2TtL21hbtaP7ywPrBBLPI1LUDntv4IS/e6m
         KlCdpk4Qrx/87tFqWVs6wt9KMyQUALN+cLenQsu0=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20221012102121.1747491-4-dan.scally@ideasonboard.com>
References: <20221012102121.1747491-1-dan.scally@ideasonboard.com> <20221012102121.1747491-4-dan.scally@ideasonboard.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: Add device tree for the Debix Model A Board
From:   Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        debix-tech@polyhex.net, Daniel Scally <dan.scally@ideasonboard.com>
To:     Daniel Scally <dan.scally@ideasonboard.com>,
        devicetree@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
        marcel.ziswiler@toradex.com, robh@kernel.org, shawnguo@kernel.org
Date:   Wed, 12 Oct 2022 18:13:40 +0100
Message-ID: <166559482023.3760285.5607377959816649676@Monstersaurus>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Daniel Scally (2022-10-12 11:21:21)
> Add a device tree file describing the Debix Model A board from
> Polyhex Technology Co.
>=20
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>

I've just applied this series to a vanilla tree, built and booted the
debix board with it.

I have working ethernet, and a console, so that's enough for me to say
this here:

Tested-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

> ---
> Changes in v3 (Laurent):
>=20
>     - Added IOB copyright notice
>     - Removed the eth node for the connector that's on the separate I/O
>     board
>     - Re-ordered some pinctrl groups so they're alphabetical
>=20
> Changes in v2:
>=20
>     - Fixed the interrupt flag for i2c1/pmic@25
>     - Fixed the node name for i2c4/rtc@51 (was "hym8563@51")
>     - Fixed a group control name that didn't match the bindings pattern
>     - Re-compared the rest of the DT with the EVK's .dts file to try to
>     make sure it complies with the way things should be, hopefully without
>     missing anything...
>=20
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../dts/freescale/imx8mp-debix-model-a.dts    | 529 ++++++++++++++++++
>  2 files changed, 530 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
>=20
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts=
/freescale/Makefile
> index 8bf7f7ecebaa..6a33a08946ac 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -80,6 +80,7 @@ dtb-$(CONFIG_ARCH_MXC) +=3D imx8mn-ddr4-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mn-tqma8mqnl-mba8mx.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mn-var-som-symphony.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mn-venice-gw7902.dtb
> +dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-debix-model-a.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-dhcom-pdk2.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-icore-mx8mp-edimm2.2.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arc=
h/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> new file mode 100644
> index 000000000000..5549ceea3af6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> @@ -0,0 +1,529 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2019 NXP
> + * Copyright 2022 Ideas on Board Oy
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/usb/pd.h>
> +
> +#include "imx8mp.dtsi"
> +
> +/ {
> +       model =3D "Polyhex Debix Model A i.MX8MPlus board";
> +       compatible =3D "polyhex,imx8mp-debix-model-a", "fsl,imx8mp";
> +
> +       chosen {
> +               stdout-path =3D &uart2;
> +       };
> +
> +       gpio-leds {
> +               compatible =3D "gpio-leds";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&pinctrl_gpio_led>;
> +
> +               status-led {
> +                       function =3D LED_FUNCTION_POWER;
> +                       color =3D <LED_COLOR_ID_RED>;
> +                       gpios =3D <&gpio3 16 GPIO_ACTIVE_HIGH>;
> +                       default-state =3D "on";
> +               };
> +       };
> +
> +       reg_usdhc2_vmmc: regulator-usdhc2 {
> +               compatible =3D "regulator-fixed";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&pinctrl_reg_usdhc2_vmmc>;
> +               regulator-name =3D "VSD_3V3";
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <3300000>;
> +               gpio =3D <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +       };
> +};
> +
> +&A53_0 {
> +       cpu-supply =3D <&buck2>;
> +};
> +
> +&A53_1 {
> +       cpu-supply =3D <&buck2>;
> +};
> +
> +&A53_2 {
> +       cpu-supply =3D <&buck2>;
> +};
> +
> +&A53_3 {
> +       cpu-supply =3D <&buck2>;
> +};
> +
> +&eqos {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_eqos>;
> +       phy-connection-type =3D "rgmii-id";
> +       phy-handle =3D <&ethphy0>;
> +       status =3D "okay";
> +
> +       mdio {
> +               compatible =3D "snps,dwmac-mdio";
> +               #address-cells =3D <1>;
> +               #size-cells =3D <0>;
> +
> +               ethphy0: ethernet-phy@0 {
> +                       compatible =3D "ethernet-phy-ieee802.3-c22";
> +                       reg =3D <0>;
> +                       reset-gpios =3D <&gpio4 18 GPIO_ACTIVE_LOW>;
> +                       reset-assert-us =3D <20>;
> +                       reset-deassert-us =3D <200000>;
> +               };
> +       };
> +};
> +
> +&i2c1 {
> +       clock-frequency =3D <400000>;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_i2c1>;
> +       status =3D "okay";
> +
> +       pmic@25 {
> +               reg =3D <0x25>;
> +               compatible =3D "nxp,pca9450c";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&pinctrl_pmic>;
> +               interrupt-parent =3D <&gpio1>;
> +               interrupts =3D <3 IRQ_TYPE_EDGE_RISING>;
> +
> +               regulators {
> +                       buck1: BUCK1 {
> +                               regulator-name =3D "BUCK1";
> +                               regulator-min-microvolt =3D <600000>;
> +                               regulator-max-microvolt =3D <2187500>;
> +                               regulator-boot-on;
> +                               regulator-always-on;
> +                               regulator-ramp-delay =3D <3125>;
> +                       };
> +
> +                       buck2: BUCK2 {
> +                               regulator-name =3D "BUCK2";
> +                               regulator-min-microvolt =3D <600000>;
> +                               regulator-max-microvolt =3D <2187500>;
> +                               regulator-boot-on;
> +                               regulator-always-on;
> +                               regulator-ramp-delay =3D <3125>;
> +                               nxp,dvs-run-voltage =3D <950000>;
> +                               nxp,dvs-standby-voltage =3D <850000>;
> +                       };
> +
> +                       buck4: BUCK4{
> +                               regulator-name =3D "BUCK4";
> +                               regulator-min-microvolt =3D <600000>;
> +                               regulator-max-microvolt =3D <3400000>;
> +                               regulator-boot-on;
> +                               regulator-always-on;
> +                       };
> +
> +                       buck5: BUCK5{
> +                               regulator-name =3D "BUCK5";
> +                               regulator-min-microvolt =3D <600000>;
> +                               regulator-max-microvolt =3D <3400000>;
> +                               regulator-boot-on;
> +                               regulator-always-on;
> +                       };
> +
> +                       buck6: BUCK6 {
> +                               regulator-name =3D "BUCK6";
> +                               regulator-min-microvolt =3D <600000>;
> +                               regulator-max-microvolt =3D <3400000>;
> +                               regulator-boot-on;
> +                               regulator-always-on;
> +                       };
> +
> +                       ldo1: LDO1 {
> +                               regulator-name =3D "LDO1";
> +                               regulator-min-microvolt =3D <1600000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-boot-on;
> +                               regulator-always-on;
> +                       };
> +
> +                       ldo2: LDO2 {
> +                               regulator-name =3D "LDO2";
> +                               regulator-min-microvolt =3D <800000>;
> +                               regulator-max-microvolt =3D <1150000>;
> +                               regulator-boot-on;
> +                               regulator-always-on;
> +                       };
> +
> +                       ldo3: LDO3 {
> +                               regulator-name =3D "LDO3";
> +                               regulator-min-microvolt =3D <800000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-boot-on;
> +                               regulator-always-on;
> +                       };
> +
> +                       ldo4: LDO4 {
> +                               regulator-name =3D "LDO4";
> +                               regulator-min-microvolt =3D <800000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-boot-on;
> +                               regulator-always-on;
> +                       };
> +
> +                       ldo5: LDO5 {
> +                               regulator-name =3D "LDO5";
> +                               regulator-min-microvolt =3D <1800000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-boot-on;
> +                               regulator-always-on;
> +                       };
> +               };
> +       };
> +};
> +
> +&i2c2 {
> +       clock-frequency =3D <100000>;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_i2c2>;
> +       status =3D "okay";
> +};
> +
> +&i2c3 {
> +       clock-frequency =3D <400000>;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_i2c3>;
> +       status =3D "okay";
> +};
> +
> +&i2c4 {
> +       clock-frequency =3D <100000>;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_i2c4>;
> +       status =3D "okay";
> +
> +       eeprom@50 {
> +               compatible =3D "atmel,24c02";
> +               reg =3D <0x50>;
> +               pagesize =3D <16>;
> +       };
> +
> +       rtc@51 {
> +               compatible =3D "haoyu,hym8563";
> +               reg =3D <0x51>;
> +               #clock-cells =3D <0>;
> +               clock-frequency =3D <32768>;
> +               clock-output-names =3D "xin32k";
> +               interrupt-parent =3D <&gpio2>;
> +               interrupts =3D <11 IRQ_TYPE_EDGE_FALLING>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&pinctrl_rtc_int>;
> +       };
> +};
> +
> +&i2c6 {
> +       clock-frequency =3D <400000>;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_i2c6>;
> +       status =3D "okay";
> +};
> +
> +&iomuxc {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_hog>;
> +
> +       pinctrl_eqos: eqosgrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC              =
                                       0x3
> +                       MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO            =
                               0x3
> +                       MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0        =
                               0x91
> +                       MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1        =
                               0x91
> +                       MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2        =
                               0x91
> +                       MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3        =
                               0x91
> +                       MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERAT=
E_RX_CLK       0x91
> +                       MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL  =
                       0x91
> +                       MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0        =
                               0x1f
> +                       MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1        =
                               0x1f
> +                       MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2        =
                               0x1f
> +                       MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3        =
                               0x1f
> +                       MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL  =
                       0x1f
> +                       MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERAT=
E_TX_CLK       0x1f
> +                       MX8MP_IOMUXC_SAI1_RXFS__ENET1_1588_EVENT0_IN     =
                       0x1f
> +                       MX8MP_IOMUXC_SAI1_RXC__ENET1_1588_EVENT0_OUT     =
                       0x1f
> +                       MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18               =
                                       0x19
> +               >;
> +       };
> +
> +       pinctrl_fec: fecgrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC                =
                                       0x3
> +                       MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO               =
                                       0x3
> +                       MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0          =
                               0x91
> +                       MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1          =
                               0x91
> +                       MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2          =
                               0x91
> +                       MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3          =
                               0x91
> +                       MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC           =
                               0x91
> +                       MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL       =
                               0x91
> +                       MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0          =
                               0x1f
> +                       MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1          =
                               0x1f
> +                       MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2          =
                               0x1f
> +                       MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3          =
                               0x1f
> +                       MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL       =
                               0x1f
> +                       MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC          =
                               0x1f
> +                       MX8MP_IOMUXC_SAI1_RXD1__ENET1_1588_EVENT1_OUT    =
                       0x1f
> +                       MX8MP_IOMUXC_SAI1_RXD0__ENET1_1588_EVENT1_IN     =
                       0x1f
> +                       MX8MP_IOMUXC_SAI1_TXD7__GPIO4_IO19               =
                                       0x19
> +               >;
> +       };
> +
> +       pinctrl_gpio_led: gpioledgrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16            =
                               0x19
> +               >;
> +       };
> +
> +       pinctrl_hog: hoggrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL      =
                               0x400001c3
> +                       MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA      =
                               0x400001c3
> +                       MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD          =
                               0x40000019
> +                       MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC          =
                               0x40000019
> +               >;
> +       };
> +
> +       pinctrl_i2c1: i2c1grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL                  =
                                       0x400001c2
> +                       MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA                  =
                                       0x400001c2
> +               >;
> +       };
> +
> +       pinctrl_i2c2: i2c2grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL                  =
                                       0x400001c2
> +                       MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA                  =
                                       0x400001c2
> +               >;
> +       };
> +
> +       pinctrl_i2c3: i2c3grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL                  =
                                       0x400001c2
> +                       MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA                  =
                                       0x400001c2
> +               >;
> +       };
> +       pinctrl_i2c4: i2c4grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL                  =
                                       0x400001c3
> +                       MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA                  =
                                       0x400001c3
> +               >;
> +       };
> +
> +       pinctrl_i2c6: i2c6grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_SAI5_RXFS__I2C6_SCL                 =
                                       0x400001c3
> +                       MX8MP_IOMUXC_SAI5_RXC__I2C6_SDA                  =
                                       0x400001c3
> +               >;
> +       };
> +
> +       pinctrl_pmic: pmicirqgrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03              =
                                       0x41
> +               >;
> +       };
> +
> +       pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19             =
                               0x41
> +               >;
> +       };
> +
> +       pinctrl_rtc_int: rtcintgrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11              =
                                       0x140
> +               >;
> +       };
> +
> +       pinctrl_uart2: uart2grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX             =
                               0x14f
> +                       MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX             =
                               0x14f
> +               >;
> +       };
> +
> +       pinctrl_uart3: uart3grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_UART3_RXD__UART3_DCE_RX             =
                               0x49
> +                       MX8MP_IOMUXC_UART3_TXD__UART3_DCE_TX             =
                               0x49
> +               >;
> +       };
> +
> +       pinctrl_uart4: uart4grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX             =
                               0x49
> +                       MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX             =
                               0x49
> +               >;
> +       };
> +
> +       pinctrl_usb1_vbus: usb1grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25                =
                                       0x19
> +                       MX8MP_IOMUXC_SAI2_TXD0__GPIO4_IO26               =
                                       0x19
> +               >;
> +       };
> +
> +       pinctrl_usdhc2: usdhc2grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK                 =
                                       0x190
> +                       MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD                 =
                                       0x1d0
> +                       MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0             =
                               0x1d0
> +                       MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1             =
                               0x1d0
> +                       MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2             =
                               0x1d0
> +                       MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3             =
                               0x1d0
> +                       MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT          =
                               0xc1
> +               >;
> +       };
> +
> +       pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK                 =
                                       0x194
> +                       MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD                 =
                                       0x1d4
> +                       MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0             =
                               0x1d4
> +                       MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1             =
                               0x1d4
> +                       MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2             =
                               0x1d4
> +                       MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3             =
                               0x1d4
> +                       MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT          =
                               0xc1
> +               >;
> +       };
> +
> +       pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK                 =
                                       0x196
> +                       MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD                 =
                                       0x1d6
> +                       MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0             =
                               0x1d6
> +                       MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1             =
                               0x1d6
> +                       MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2             =
                               0x1d6
> +                       MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3             =
                               0x1d6
> +                       MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT          =
                               0xc1
> +               >;
> +       };
> +
> +       pinctrl_usdhc2_gpio: usdhc2gpiogrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12                =
                                       0x1c4
> +               >;
> +       };
> +
> +       pinctrl_usdhc3: usdhc3grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK               =
                                       0x190
> +                       MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD               =
                                       0x1d0
> +                       MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0           =
                               0x1d0
> +                       MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1           =
                               0x1d0
> +                       MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2           =
                               0x1d0
> +                       MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3           =
                               0x1d0
> +                       MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4             =
                               0x1d0
> +                       MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5            =
                               0x1d0
> +                       MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6            =
                               0x1d0
> +                       MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7              =
                                       0x1d0
> +                       MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE           =
                               0x190
> +               >;
> +       };
> +
> +       pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK               =
                                       0x194
> +                       MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD               =
                                       0x1d4
> +                       MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0           =
                               0x1d4
> +                       MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1           =
                               0x1d4
> +                       MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2           =
                               0x1d4
> +                       MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3           =
                               0x1d4
> +                       MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4             =
                               0x1d4
> +                       MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5            =
                               0x1d4
> +                       MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6            =
                               0x1d4
> +                       MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7              =
                                       0x1d4
> +                       MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE           =
                               0x194
> +               >;
> +       };
> +
> +       pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK               =
                                       0x196
> +                       MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD               =
                                       0x1d6
> +                       MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0           =
                               0x1d6
> +                       MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1           =
                               0x1d6
> +                       MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2           =
                               0x1d6
> +                       MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3           =
                               0x1d6
> +                       MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4             =
                               0x1d6
> +                       MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5            =
                               0x1d6
> +                       MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6            =
                               0x1d6
> +                       MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7              =
                                       0x1d6
> +                       MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE           =
                               0x196
> +               >;
> +       };
> +
> +       pinctrl_wdog: wdoggrp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B            =
                               0xc6
> +               >;
> +       };
> +};
> +
> +&snvs_pwrkey {
> +       status =3D "okay";
> +};
> +
> +&uart2 {
> +       /* console */
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_uart2>;
> +       status =3D "okay";
> +};
> +
> +&uart3 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_uart3>;
> +       status =3D "okay";
> +};
> +
> +&uart4 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_uart4>;
> +       status =3D "okay";
> +};
> +
> +/* SD Card */
> +&usdhc2 {
> +       assigned-clocks =3D <&clk IMX8MP_CLK_USDHC2>;
> +       assigned-clock-rates =3D <400000000>;
> +       pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> +       pinctrl-0 =3D <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +       pinctrl-1 =3D <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +       pinctrl-2 =3D <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +       cd-gpios =3D <&gpio2 12 GPIO_ACTIVE_LOW>;
> +       vmmc-supply =3D <&reg_usdhc2_vmmc>;
> +       bus-width =3D <4>;
> +       status =3D "okay";
> +};
> +
> +/* eMMc */
> +&usdhc3 {
> +       assigned-clocks =3D <&clk IMX8MP_CLK_USDHC3>;
> +       assigned-clock-rates =3D <400000000>;
> +       pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> +       pinctrl-0 =3D <&pinctrl_usdhc3>;
> +       pinctrl-1 =3D <&pinctrl_usdhc3_100mhz>;
> +       pinctrl-2 =3D <&pinctrl_usdhc3_200mhz>;
> +       bus-width =3D <8>;
> +       non-removable;
> +       status =3D "okay";
> +};
> +
> +&wdog1 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_wdog>;
> +       fsl,ext-reset-output;
> +       status =3D "okay";
> +};
> --=20
> 2.34.1
>
