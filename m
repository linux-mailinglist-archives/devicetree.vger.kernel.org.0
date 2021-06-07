Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DD2339E591
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 19:35:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230197AbhFGRhW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 13:37:22 -0400
Received: from egress-ip4a.ess.de.barracuda.com ([18.184.203.227]:41044 "EHLO
        egress-ip4a.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229997AbhFGRhW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 13:37:22 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71]) by mx-outbound44-136.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 07 Jun 2021 17:35:29 +0000
Received: by mail-lf1-f71.google.com with SMTP id o138-20020a1941900000b02902a5ff0b6936so6497163lfa.9
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 10:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=uqhaU0BixGMC6yg2WIWbD8RroUuRdTwTQYuyJdWv/9o=;
        b=g8t6yz3lSIE3zEppvq+8DAyatBqj5Ipcnxa7l9L1uO3MKyyStu19CS8RrVO6ZsMNaJ
         SXG54r7Bsavb1me/BY9UNC0d5Czviqn/yUBCe+3Y7dU3QPUZO6mhh7q7WaCYeB0qpwyU
         dOoxWVb7SMRDJqPaFSlILvEnaukXPO9CuhmtA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=uqhaU0BixGMC6yg2WIWbD8RroUuRdTwTQYuyJdWv/9o=;
        b=KD3YwN+1QN0Yiaircv5WdLWfB8SscDxI3rsah66LvY3vXFpQyx77BJJma+7QNDUmMI
         6iydw6+Gg+cHbutX9N5V7g6sgTzMjXe+dfwZPBMvCD/QgOa9lS+wDAR0tsqAwDw2uHaM
         AgeWyOiYtsl4zN7rtSCzhTMp4H4NWQBq0lFAabPab2Mxs9TGli1ldcTvFmSrhBPchqdV
         dtzuOlCJCqzd2kxXcxwoGW7WKA4UsxVlFa7GqJUFFGz+DYzsnFj7n07Quss9dMKj427V
         sDGWGefp1+uoKjLLpD5o5H4pMgdHZnQU7R3Z/s9oNvMpnLM34ZXEHWtz+NeX8P5KQdcX
         55Cw==
X-Gm-Message-State: AOAM5313ehv2sQP/IWNdFXZIx8eYg4w1ID1KpMgoiVkE5khXKHiSH9FN
        e83okMc0UGcAARhkH5R7hSrHDrQLKvMPmzp+bAlrSfjB6XbcMZXQyBthO+mFhJjEfTjzptM9viw
        8bsuDHAdvLoC2SURYvHpZwrZO4YJjcw71jYeVUcLBOHb7WTu2RpJ+kuwtZ3dEuqvY8jl+aDG6Ag
        ==
X-Received: by 2002:a5d:528d:: with SMTP id c13mr18334475wrv.343.1623085902796;
        Mon, 07 Jun 2021 10:11:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwoskZaAm4Alr5j1+LvHtFEl/8uJc1HJtaxzBZyveU+YpdDx4PGP3LdSRxG2AEgRPypt1dnYR4ZXn6jLD9XtWg=
X-Received: by 2002:a5d:528d:: with SMTP id c13mr18334462wrv.343.1623085902626;
 Mon, 07 Jun 2021 10:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210607093314.23909-1-sinthu.raja@ti.com> <20210607093314.23909-3-sinthu.raja@ti.com>
 <20210607133526.3rn3othabu4uo3lo@defender>
In-Reply-To: <20210607133526.3rn3othabu4uo3lo@defender>
From:   Sinthu Raja M <sinthu.raja@mistralsolutions.com>
Date:   Mon, 7 Jun 2021 22:41:30 +0530
Message-ID: <CAEd-yTSVOchafETh+3CthtZhE4e4_BbWodcXRxyJRdRBWQ_Csg@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] arm64: dts: ti: Add support for J721E EAIK
To:     Nishanth Menon <nm@ti.com>
Cc:     Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BESS-ID: 1623087329-311400-7865-5695-1
X-BESS-VER: 2019.1_20210603.1645
X-BESS-Apparent-Source-IP: 209.85.167.71
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.232779 [from 
        cloudscan16-205.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 7, 2021 at 7:05 PM Nishanth Menon <nm@ti.com> wrote:
>
> On 15:03-20210607, Sinthu Raja wrote:
> > From: Sinthu Raja <sinthu.raja@ti.com>
> >
> > J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
> > for TI=E2=80=99s J721E SoC. TI=E2=80=99s J721E SoC comprises of dual co=
re A72, high
> > performance vision accelerators, video codec accelerators, latest C71x
> > and C66x DSP, high bandwidth real-time IPs for capture and display, GPU=
,
> > dedicated safety island and security accelerators. The SoC is power
> > optimized to provide best in class performance for perception, sensor
> > fusion, localization, path planning tasks in robotics, industrial and
> > automotive applications.
> >
> > J721E EAIK supports the following interfaces:
> > * 4 GB LPDDR4 RAM
> > * x1 Gigabit Ethernet interface
> > * x1 USB 3.0 Type-C port
> > * x3 USB 3.0 Type-A ports
> > * x1 UHS-1 capable =C2=B5SD card slot
> > * x1 PCIe M.2 E Key with x1 USB2.0, x1 MCASP, x1 MMC, x1 UART
> > * x1 PCIe M.2 M Key
> > * 512 Mbit OSPI flash
> > * x4 UART through UART-USB bridge
> > * x4 CAN-FD interface
> > * x1 DP interface
> > * x1 HDMI interface
> > * x2 CSI2 Camera interface (RPi and TI Camera connector)
> > * 40-pin Raspberry Pi compatible GPIO header
> > * Compact TI 20-Pin connector for JTAG debug
> > * Interface for remote automation. Includes:
> >    * power measurement and reset control
> >    * boot mode change
>
> please reduce the description above, also add a url for the board.

Sure will reduce the description. The URL is not available until the
board launch.

> >
> > Add basic support for J721E-EAIK.
> >
> > Signed-off-by: Amarnath MB <amarnath.mb@ti.com>
> > Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> > ---
> >  arch/arm64/boot/dts/ti/Makefile          |   2 +
> >  arch/arm64/boot/dts/ti/k3-j721e-eaik.dts | 342 +++++++++++++++++++++++
> >  2 files changed, 344 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-eaik.dts
> >
> > diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/M=
akefile
> > index d56c742f5a10..00eb2077616e 100644
> > --- a/arch/arm64/boot/dts/ti/Makefile
> > +++ b/arch/arm64/boot/dts/ti/Makefile
> > @@ -12,6 +12,8 @@ dtb-$(CONFIG_ARCH_K3) +=3D k3-am6548-iot2050-advanced=
.dtb
> >
> >  dtb-$(CONFIG_ARCH_K3) +=3D k3-j721e-common-proc-board.dtb
> >
> > +dtb-$(CONFIG_ARCH_K3) +=3D k3-j721e-eaik.dtb
>
> Keep the above two together:
> dtb-$(CONFIG_ARCH_K3) +=3D k3-j721e-common-proc-board.dtb
> dtb-$(CONFIG_ARCH_K3) +=3D k3-j721e-eaik.dtb
>
>
> > +
> >  dtb-$(CONFIG_ARCH_K3) +=3D k3-j7200-common-proc-board.dtb
> >
> >  dtb-$(CONFIG_ARCH_K3) +=3D k3-am642-evm.dtb
> > diff --git a/arch/arm64/boot/dts/ti/k3-j721e-eaik.dts b/arch/arm64/boot=
/dts/ti/k3-j721e-eaik.dts
> > new file mode 100644
> > index 000000000000..decb16274333
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/ti/k3-j721e-eaik.dts
> > @@ -0,0 +1,342 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.=
com/
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "k3-j721e.dtsi"
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/net/ti-dp83867.h>
> > +
> > +/ {
> > +     compatible =3D "ti,j721e-eaik", "ti,j721e";
> > +     model =3D "Texas Instruments J721E EAIK";
> > +
> > +     chosen {
> > +             stdout-path =3D "serial2:115200n8";
> > +             bootargs =3D "console=3DttyS2,115200n8 earlycon=3Dns16550=
a,mmio32,0x02800000";
> > +     };
> > +
> > +     memory@80000000 {
> > +             device_type =3D "memory";
> > +             /* 4G RAM */
> > +             reg =3D <0x00000000 0x80000000 0x00000000 0x80000000>,
> > +                   <0x00000008 0x80000000 0x00000000 0x80000000>;
> > +     };
> > +
> > +     reserved_memory: reserved-memory {
> > +             #address-cells =3D <2>;
> > +             #size-cells =3D <2>;
> > +             ranges;
> > +
> > +             secure_ddr: optee@9e800000 {
> > +                     reg =3D <0x00 0x9e800000 0x00 0x01800000>;
> > +                     alignment =3D <0x1000>;
> > +                     no-map;
> > +             };
> > +     };
> > +
> > +     vusb_main: fixedregulator-vusb-main5v0 {
> > +             /* USB MAIN INPUT 5V DC */
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "vusb-main5v0";
> > +             regulator-min-microvolt =3D <5000000>;
> > +             regulator-max-microvolt =3D <5000000>;
> > +             regulator-always-on;
> > +             regulator-boot-on;
> > +     };
> > +
> > +     vsys_3v3: fixedregulator-vsys3v3 {
> > +             /* Output of LM5141 */
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "vsys_3v3";
> > +             regulator-min-microvolt =3D <3300000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             vin-supply =3D <&vusb_main>;
> > +             regulator-always-on;
> > +             regulator-boot-on;
> > +     };
> > +
> > +     vdd_mmc1: fixedregulator-sd {
> > +             compatible =3D "regulator-fixed";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&vdd_mmc1_en_pins_default>;
> > +             regulator-name =3D "vdd_mmc1";
> > +             regulator-min-microvolt =3D <3300000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             regulator-boot-on;
> > +             enable-active-high;
> > +             vin-supply =3D <&vsys_3v3>;
> > +             gpio =3D <&wkup_gpio0 8 GPIO_ACTIVE_HIGH>;
> > +     };
> > +
> > +     vdd_sd_dv_alt: gpio-regulator-tps659411 {
> > +             compatible =3D "regulator-gpio";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&vdd_sd_dv_alt_pins_default>;
> > +             regulator-name =3D "tps659411";
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             regulator-boot-on;
> > +             vin-supply =3D <&vsys_3v3>;
> > +             gpios =3D <&wkup_gpio0 9 GPIO_ACTIVE_HIGH>;
> > +             states =3D <1800000 0x0>,
> > +                      <3300000 0x1>;
> > +     };
> > +};
> > +
> > +&main_pmx0 {
> > +     main_mmc1_pins_default: main-mmc1-pins-default {
> > +             pinctrl-single,pins =3D <
> > +                     J721E_IOPAD(0x254, PIN_INPUT, 0) /* (R29) MMC1_CM=
D */
> > +                     J721E_IOPAD(0x250, PIN_INPUT, 0) /* (P25) MMC1_CL=
K */
> > +                     J721E_IOPAD(0x2ac, PIN_INPUT, 0) /* (P25) MMC1_CL=
KLB */
> > +                     J721E_IOPAD(0x24c, PIN_INPUT, 0) /* (R24) MMC1_DA=
T0 */
> > +                     J721E_IOPAD(0x248, PIN_INPUT, 0) /* (P24) MMC1_DA=
T1 */
> > +                     J721E_IOPAD(0x244, PIN_INPUT, 0) /* (R25) MMC1_DA=
T2 */
> > +                     J721E_IOPAD(0x240, PIN_INPUT, 0) /* (R26) MMC1_DA=
T3 */
> > +                     J721E_IOPAD(0x258, PIN_INPUT, 0) /* (P23) MMC1_SD=
CD */
> > +             >;
> > +     };
> > +
> > +     main_uart0_pins_default: main-uart0-pins-default {
> > +             pinctrl-single,pins =3D <
> > +                     J721E_IOPAD(0x1f0, PIN_INPUT, 0) /* (AC2) UART0_C=
TSn */
> > +                     J721E_IOPAD(0x1f4, PIN_OUTPUT, 0) /* (AB1) UART0_=
RTSn */
> > +                     J721E_IOPAD(0x1e8, PIN_INPUT, 0) /* (AB2) UART0_R=
XD */
> > +                     J721E_IOPAD(0x1ec, PIN_OUTPUT, 0) /* (AB3) UART0_=
TXD */
> > +             >;
> > +     };
> > +
> > +     main_i2c0_pins_default: main-i2c0-pins-default {
> > +             pinctrl-single,pins =3D <
> > +                     J721E_IOPAD(0x220, PIN_INPUT_PULLUP, 0) /* (AC5) =
I2C0_SCL */
> > +                     J721E_IOPAD(0x224, PIN_INPUT_PULLUP, 0) /* (AA5) =
I2C0_SDA */
> > +             >;
> > +     };
> > +
> > +     main_i2c1_pins_default: main-i2c1-pins-default {
> > +             pinctrl-single,pins =3D <
> > +                     J721E_IOPAD(0x228, PIN_INPUT_PULLUP, 0) /* (Y6) I=
2C1_SCL */
> > +                     J721E_IOPAD(0x22c, PIN_INPUT_PULLUP, 0) /* (AA6) =
I2C1_SDA */
> > +             >;
> > +     };
> > +
> > +     main_i2c3_pins_default: main-i2c3-pins-default {
> > +             pinctrl-single,pins =3D <
> > +                     J721E_IOPAD(0x270, PIN_INPUT_PULLUP, 4) /* (T26) =
MMC2_CLK.I2C3_SCL */
> > +                     J721E_IOPAD(0x274, PIN_INPUT_PULLUP, 4) /* (T25) =
MMC2_CMD.I2C3_SDA */
> > +             >;
> > +     };
> > +};
> > +
> > +&wkup_pmx0 {
> > +     mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins-default {
> > +             pinctrl-single,pins =3D <
> > +                     J721E_WKUP_IOPAD(0x0, PIN_OUTPUT, 0) /* (E20) MCU=
_OSPI0_CLK */
> > +                     J721E_WKUP_IOPAD(0x2c, PIN_OUTPUT, 0) /* (F19) MC=
U_OSPI0_CSn0 */
> > +                     J721E_WKUP_IOPAD(0xc, PIN_INPUT, 0) /* (D20) MCU_=
OSPI0_D0 */
> > +                     J721E_WKUP_IOPAD(0x10, PIN_INPUT, 0) /* (G19) MCU=
_OSPI0_D1 */
> > +                     J721E_WKUP_IOPAD(0x14, PIN_INPUT, 0) /* (G20) MCU=
_OSPI0_D2 */
> > +                     J721E_WKUP_IOPAD(0x18, PIN_INPUT, 0) /* (F20) MCU=
_OSPI0_D3 */
> > +                     J721E_WKUP_IOPAD(0x1c, PIN_INPUT, 0) /* (F21) MCU=
_OSPI0_D4 */
> > +                     J721E_WKUP_IOPAD(0x20, PIN_INPUT, 0) /* (E21) MCU=
_OSPI0_D5 */
> > +                     J721E_WKUP_IOPAD(0x24, PIN_INPUT, 0) /* (B22) MCU=
_OSPI0_D6 */
> > +                     J721E_WKUP_IOPAD(0x28, PIN_INPUT, 0) /* (G21) MCU=
_OSPI0_D7 */
> > +                     J721E_WKUP_IOPAD(0x8, PIN_INPUT, 0) /* (D21) MCU_=
OSPI0_DQS */
> > +             >;
> > +     };
> > +
> > +     vdd_mmc1_en_pins_default: vdd-mmc1-en-pins-default {
> > +             pinctrl-single,pins =3D <
> > +                     J721E_WKUP_IOPAD(0xd0, PIN_OUTPUT, 7) /* (G27) WK=
UP_GPIO0_8 */
> > +             >;
> > +     };
> > +
> > +     vdd_sd_dv_alt_pins_default: vdd-sd-dv-alt-pins-default {
> > +             pinctrl-single,pins =3D <
> > +                     J721E_WKUP_IOPAD(0xd4, PIN_OUTPUT, 7) /* (G26) WK=
UP_GPIO0_9 */
> > +             >;
> > +     };
> > +
> > +     wkup_i2c0_pins_default: wkup-i2c0-pins-default {
> > +             pinctrl-single,pins =3D <
> > +                     J721E_WKUP_IOPAD(0xf8, PIN_INPUT_PULLUP, 0) /* (J=
25) WKUP_I2C0_SCL */
> > +                     J721E_WKUP_IOPAD(0xfc, PIN_INPUT_PULLUP, 0) /* (H=
24) WKUP_I2C0_SDA */
> > +             >;
> > +     };
> > +};
> > +
> > +&wkup_uart0 {
> > +     /* Wakeup UART is used by System firmware */
> > +     status =3D "reserved";
> > +};
> > +
> > +&main_uart0 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&main_uart0_pins_default>;
> > +     /* Shared with ATF on this platform */
> > +     power-domains =3D <&k3_pds 146 TI_SCI_PD_SHARED>;
> > +};
> > +
> > +&main_uart2 {
> > +     /* Brought out on RPi header */
> > +     status =3D "disabled";
> > +};
> > +
> > +&main_uart3 {
> > +     /* UART not brought out */
> > +     status =3D "disabled";
> > +};
> > +
> > +&main_uart5 {
> > +     /* UART not brought out */
> > +     status =3D "disabled";
> > +};
> > +
> > +&main_uart6 {
> > +     /* UART not brought out */
> > +     status =3D "disabled";
> > +};
> > +
> > +&main_uart7 {
> > +     /* UART not brought out */
> > +     status =3D "disabled";
> > +};
> > +
> > +&main_uart8 {
> > +     /* UART not brought out */
> > +     status =3D "disabled";
> > +};
> > +
> > +&main_uart9 {
> > +     /* Brought out on M.2 E Key */
> > +     status =3D "disabled";
> > +};
> > +
> > +&main_sdhci0 {
> > +     /* Unused */
> > +     status =3D "disabled";
> > +};
> > +
> > +&main_sdhci1 {
> > +     /* SD Card */
> > +     vmmc-supply =3D <&vdd_mmc1>;
> > +     vqmmc-supply =3D <&vdd_sd_dv_alt>;
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&main_mmc1_pins_default>;
> > +     ti,driver-strength-ohm =3D <50>;
> > +     disable-wp;
> > +};
> > +
> > +&main_sdhci2 {
> > +     /* Unused */
> > +     status =3D "disabled";
> > +};
> > +
> > +&ospi0 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&mcu_fss0_ospi0_pins_default>;
> > +
> > +     flash@0{
>
>         flash@0<space>{
>
> > +             compatible =3D "jedec,spi-nor";
> > +             reg =3D <0x0>;
> > +             spi-tx-bus-width =3D <8>;
> > +             spi-rx-bus-width =3D <8>;
> > +             spi-max-frequency =3D <25000000>;
> > +             cdns,tshsl-ns =3D <60>;
> > +             cdns,tsd2d-ns =3D <60>;
> > +             cdns,tchsh-ns =3D <60>;
> > +             cdns,tslch-ns =3D <60>;
> > +             cdns,read-delay =3D <4>;
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <1>;
> > +             partition@3fc0000 {
> > +                     label =3D "ospi.phypattern";
> > +                     reg =3D <0x3fc0000 0x40000>;
> > +                     u-boot,dm-spl;
> > +             };
> > +     };
> > +};
> > +
> > +&ospi1 {
> > +     /* Unused */
> > +     status =3D "disabled";
> > +};
> > +
> > +&main_i2c0 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&main_i2c0_pins_default>;
> > +     clock-frequency =3D <400000>;
> > +
> > +     i2c-switch@71 {
> > +             compatible =3D "nxp,pca9543";
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +             reg =3D <0x71>;
> > +
> > +             /* PCIe1 M.2 M Key I2C */
> > +             pcie1_m2_i2c: i2c@0 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <0>;
> > +             };
> > +
> > +             /* PCIe0 M.2 E Key I2C */
> > +             pcie0_m2_i2c: i2c@1 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <1>;
> > +             };
> > +     };
> > +};
> > +
> > +&main_i2c1 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&main_i2c1_pins_default>;
> > +     clock-frequency =3D <400000>;
> > +};
> > +
> > +&main_i2c3 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&main_i2c3_pins_default>;
> > +     clock-frequency =3D <400000>;
> > +
> > +     i2c-switch@70 {
> > +             compatible =3D "nxp,pca9543";
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +             reg =3D <0x70>;
> > +
> > +             /* CAM0 I2C */
> > +             ti_cam0_i2c: i2c@0 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <0>;
> > +             };
> > +
> > +             /* CAM1 I2C */
> > +             rpi_cam0_i2c: i2c@1 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <1>;
> > +             };
> > +     };
> > +};
> > +
> > +&main_i2c4 {
> > +     /* Unused */
> > +     status =3D "disabled";
> > +};
> > +
> > +&main_i2c5 {
> > +     /* Brought out on RPi Header */
> > +     status =3D "disabled";
> > +};
> > +
> > +&main_i2c6 {
> > +     /* Unused */
> > +     status =3D "disabled";
> > +};
>
> please also check other nodes that needs to be disabled or configured.

The intention of the patch is to keep only the initial support for the
EAIK board. Subsequent patches will be posted as the testing
completes.

Regards
Sinthu Raja
