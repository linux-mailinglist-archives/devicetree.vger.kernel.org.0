Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0726263F9C0
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 22:22:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230487AbiLAVW5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 16:22:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230483AbiLAVW4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 16:22:56 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C95A840908
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 13:22:52 -0800 (PST)
Received: from pendragon.ideasonboard.com (cpc89244-aztw30-2-0-cust3082.18-1.cable.virginm.net [86.31.172.11])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 54AF433F;
        Thu,  1 Dec 2022 22:22:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1669929770;
        bh=pDWhxoN/Md3mKSG+3r96ylw1SbXPZl82x+f8fxaD2kI=;
        h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
        b=iBIb/BPfYA3reSgOomq5YQfEfcUG7LiCjZKDtAZJp6v8TsSuXqlm+/zu+ZhLIs0o0
         xlfgZZn2eDrTZaImIDxPuqtVRcmt7C+XUp+5CXlZM1v+N71mr7WgzgkivUDLRqR1HV
         xTPBZtYe3ZR7fXoEDNnMcwiJokD4BYG37z1qjIDA=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <23e61494-5567-5701-3a90-3b8105b4c944@pengutronix.de>
References: <20221017151050.2321919-1-dan.scally@ideasonboard.com> <20221017151050.2321919-4-dan.scally@ideasonboard.com> <23e61494-5567-5701-3a90-3b8105b4c944@pengutronix.de>
Subject: Re: [PATCH v4 3/3] arm64: dts: Add device tree for the Debix Model A Board
From:   Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc:     s.hauer@pengutronix.de, debix-tech@polyhex.net, linux-imx@nxp.com,
        kernel@pengutronix.de, festevam@gmail.com,
        laurent.pinchart@ideasonboard.com
To:     Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Daniel Scally <dan.scally@ideasonboard.com>,
        devicetree@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
        marcel.ziswiler@toradex.com, robh@kernel.org, shawnguo@kernel.org
Date:   Thu, 01 Dec 2022 21:22:47 +0000
Message-ID: <166992976772.1079859.10476322048669145302@Monstersaurus>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Ahmad Fatoum (2022-12-01 17:10:20)
> Hello Daniel,
>=20
> On 17.10.22 17:10, Daniel Scally wrote:
> > Add a device tree file describing the Debix Model A board from
> > Polyhex Technology Co.
>=20
> Thanks for your patch. Some minor comments below.
>=20
> > Changes in v3 (Laurent):
> >=20
> >     - Added IOB copyright notice
> >     - Removed the eth node for the connector that's on the separate I/O
> >     board
>=20
> I'd have left the FEC node in and described the PHY, but left the FEC dis=
abled.
> Only the magnetics are on the expansion board, while the PHY is on the
> base board.
>=20
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright 2019 NXP
> > + * Copyright 2022 Ideas on Board Oy
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/usb/pd.h>
> > +
> > +#include "imx8mp.dtsi"
> > +
> > +/ {
> > +     model =3D "Polyhex Debix Model A i.MX8MPlus board";
> > +     compatible =3D "polyhex,imx8mp-debix-model-a", "fsl,imx8mp";
>=20
> I see that Model A and Model B share the same SoC and PCB. Could you
> add polyhex,imx8mp-debix as a second compatible? That way, bootloader
> may match against that compatible when they support both.
> You'll need to adjust the binding accordingly.

Polyhex also make a SOM with the brand DEBIX.
- https://debix.io/hardware/debix-som-a-io-board.html

But perhaps it will be fine, as that will be
"polyhex,imx8mp-debix-som" (and perhaps they'll do an A/B variant too?)

--
Kieran


>=20
> > +
> > +     chosen {
> > +             stdout-path =3D &uart2;
> > +     };
> > +
> > +     gpio-leds {
> > +             compatible =3D "gpio-leds";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&pinctrl_gpio_led>;
> > +
> > +             status-led {
> > +                     function =3D LED_FUNCTION_POWER;
> > +                     color =3D <LED_COLOR_ID_RED>;
> > +                     gpios =3D <&gpio3 16 GPIO_ACTIVE_HIGH>;
> > +                     default-state =3D "on";
> > +             };
> > +     };
> > +
> > +     reg_usdhc2_vmmc: regulator-usdhc2 {
> > +             compatible =3D "regulator-fixed";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&pinctrl_reg_usdhc2_vmmc>;
> > +             regulator-name =3D "VSD_3V3";
> > +             regulator-min-microvolt =3D <3300000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             gpio =3D <&gpio2 19 GPIO_ACTIVE_HIGH>;
> > +             enable-active-high;
> > +     };
> > +};
> > +
> > +&A53_0 {
> > +     cpu-supply =3D <&buck2>;
> > +};
> > +
> > +&A53_1 {
> > +     cpu-supply =3D <&buck2>;
> > +};
> > +
> > +&A53_2 {
> > +     cpu-supply =3D <&buck2>;
> > +};
> > +
> > +&A53_3 {
> > +     cpu-supply =3D <&buck2>;
> > +};
> > +
> > +&eqos {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_eqos>;
> > +     phy-connection-type =3D "rgmii-id";
> > +     phy-handle =3D <&ethphy0>;
> > +     status =3D "okay";
> > +
> > +     mdio {
> > +             compatible =3D "snps,dwmac-mdio";
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +
> > +             ethphy0: ethernet-phy@0 {
>=20
> Could you append a /* RTL8211E */ comment here? This can be very useful f=
or others
> who need to bring up the same chip in the future.
>=20
> > +                     compatible =3D "ethernet-phy-ieee802.3-c22";
> > +                     reg =3D <0>;
>=20
> Is the PHY really at address 0 or does it just answer at this address
> because it's the broadcast address?
>=20
>=20
> > +&iomuxc {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_hog>;
> > +
> > +     pinctrl_hog: hoggrp {
> > +             fsl,pins =3D <
> > +                     MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL      =
               0x400001c3
> > +                     MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA      =
               0x400001c3
> > +                     MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD          =
               0x40000019
> > +                     MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC          =
               0x40000019
>=20
> Why do you hog these?
>=20
> > +     pinctrl_usb1_vbus: usb1grp {
>=20
> This is unused.
>=20
> > +     pinctrl_usdhc2: usdhc2grp {
> > +             fsl,pins =3D <
> > +                     MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK                 =
               0x190
> > +                     MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD                 =
               0x1d0
> > +                     MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0             =
               0x1d0
> > +                     MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1             =
               0x1d0
> > +                     MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2             =
               0x1d0
> > +                     MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3             =
               0x1d0
> > +                     MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT          =
               0xc1
>=20
> Just to make sure this doesn't fry SD-Cards by mistake: VSELECT is indeed
> connected to a 1.8V/3.3V switch powering vqmmc?
>=20
> > +/* SD Card */
> > +&usdhc2 {
> > +     assigned-clocks =3D <&clk IMX8MP_CLK_USDHC2>;
> > +     assigned-clock-rates =3D <400000000>;
>=20
> I wonder why this is necessary. Do you see a difference
> in /sys/kernel/debug/mmcX/ios between having this and leaving
> it out?
>=20
> > +     status =3D "okay";
> > +};
> > +
> > +/* eMMc */
>=20
> eMMC
>=20
> > +&usdhc3 {
> > +     assigned-clocks =3D <&clk IMX8MP_CLK_USDHC3>;
> > +     assigned-clock-rates =3D <400000000>;
> > +     pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> > +     pinctrl-0 =3D <&pinctrl_usdhc3>;
> > +     pinctrl-1 =3D <&pinctrl_usdhc3_100mhz>;
> > +     pinctrl-2 =3D <&pinctrl_usdhc3_200mhz>;
> > +     bus-width =3D <8>;
> > +     non-removable;
> > +     status =3D "okay";
> > +};
> > +
> > +&wdog1 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_wdog>;
> > +     fsl,ext-reset-output;
> > +     status =3D "okay";
> > +};
>=20
>=20
> Cheers,
> Ahmad
>=20
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
