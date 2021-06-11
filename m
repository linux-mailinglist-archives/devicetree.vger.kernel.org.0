Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FB6B3A444C
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 16:45:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231153AbhFKOrk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 10:47:40 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:33666 "EHLO
        mail-oi1-f177.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230508AbhFKOrk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 10:47:40 -0400
Received: by mail-oi1-f177.google.com with SMTP id t140so6084398oih.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 07:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mUEqem3hx91rtgCVOpyAIRov+VnUm9xNlIwjre5pY7A=;
        b=D07MzV2rT+unZXvfjv1E+sUIQUoXpmnpNdbn7nwVHM3E1qlf3CraITYTL9+Y2Y3t9l
         p1iIO+ZxQGSDZldoQeUIZLzRxdL4jsE9nxKcGyxiHXj3bXHtCsEC0UewGS9yv61c5haX
         zTtt+g2dMAwR1tD1lYvmtCL177Kno7BguiFOY1MxU3U7vdkAa5YOrCuL8cdkuV+3kkvS
         7zFIDTd9eSwdycToqCMggjR04vw4/jtbhSLZ9+JpK+TgNJH5YGZ1blMp/N89jbewNjMM
         fRZMWkXoII6+qtg0Znr43h+27AY0l9WAs2f9RspwQ4gMNcnp2wgmBjDwsWAi+qNpJ90T
         YEzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mUEqem3hx91rtgCVOpyAIRov+VnUm9xNlIwjre5pY7A=;
        b=Etlnw7hc/eIRcAYhg1QQ/3OKMyfUXaAwOfmeI/jaJieX9y4YfoYpcLBlMd6l4U6gvW
         FjLZjv8bUESgmLhuj9uio7ClZCDFf60ZMYNIJuErKD1wt9hbmsGgeWyr3jRYPy8j2Ic3
         BsOQ945hEULWtwPm6Mj4LVIU7mecWpqr1KmcDDhwW64CWYLwtLVLXqzb8ma1pfF/MK+O
         NeNJqCGq2U0sMny2oLlzm3GTAGdUcre73QJnL/NoNZlbMqKVDjurV42Ih4yQ5nkR4Wc/
         iWaYJmIaMWgRdSfi9CPYO2Hh0WaW+00To2/5I3TLiJcGNC33e24A6F4P7XuSUwZi7AQ6
         ITnQ==
X-Gm-Message-State: AOAM531PwggHRpbwl1Ug8HWyBjMVJsPkiV0r1rpRzrkyw0blz9SciL7f
        uoHPWJ3XnSStkgEWo9Vab9U3bWKDlXNtwA6Tg/0=
X-Google-Smtp-Source: ABdhPJwMJR03277P/EExYfCQOLEkDIApEEPX4nXzb5zcIWuKvz54WSFEgHqhMQvyddIFbEvoOjBHM6pJTwiNR3BW/Vo=
X-Received: by 2002:a54:460a:: with SMTP id p10mr14074029oip.47.1623422668009;
 Fri, 11 Jun 2021 07:44:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210607083921.2668568-1-ping.bai@nxp.com> <20210607083921.2668568-12-ping.bai@nxp.com>
In-Reply-To: <20210607083921.2668568-12-ping.bai@nxp.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Fri, 11 Jun 2021 22:43:11 +0800
Message-ID: <CAA+hA=Qf=a8QKBFJvH2pnVOu6j1DV4tGVLLhed2DOZ3TNHaybg@mail.gmail.com>
Subject: Re: [PATCH 11/11] arm64: dts: imx8ulp: Add the basic dts for imx8ulp
 evk board
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 7, 2021 at 4:39 PM Jacky Bai <ping.bai@nxp.com> wrote:
>
> Add the basic dts file for i.MX8ULP EVK board.
> Only the necessary devices for minimal system boot up are enabled:
> enet, emmc, usb, console uart.
>
> some of the devices' pin status may lost during low power mode,
> so additional sleep pinctrl properties are included by default.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Mostly looks good

> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  arch/arm64/boot/dts/freescale/imx8ulp-evk.dts | 143 ++++++++++++++++++
>  2 files changed, 144 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
>
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 25806c4924cb..8c24a05d55af 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -65,5 +65,6 @@ dtb-$(CONFIG_ARCH_MXC) += imx8qm-mek.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-colibri-eval-v3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8ulp-evk.dtb
>
>  dtb-$(CONFIG_ARCH_S32) += s32v234-evb.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
> new file mode 100644
> index 000000000000..f4db04f357fe
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
> @@ -0,0 +1,143 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2021 NXP
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8ulp.dtsi"
> +
> +/ {
> +       model = "NXP i.MX8ULP EVK";
> +       compatible = "fsl,imx8ulp-evk", "fsl,imx8ulp";
> +
> +       chosen {
> +               stdout-path = &lpuart5;
> +       };

no memory node?

Regards
Aisheng

> +};
> +
> +&fec {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_enet>;
> +       phy-mode = "rmii";
> +       phy-handle = <&ethphy>;
> +       status = "okay";
> +
> +       mdio {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               ethphy: ethernet-phy {
> +                       reg = <1>;
> +                       micrel,led-mode = <1>;
> +               };
> +       };
> +};
> +
> +&lpuart5 {
> +       /* console */
> +       pinctrl-names = "default", "sleep";
> +       pinctrl-0 = <&pinctrl_lpuart5>;
> +       pinctrl-1 = <&pinctrl_lpuart5>;
> +       status = "okay";
> +};
> +
> +&usbotg1 {
> +       pinctrl-names = "default", "sleep";
> +       pinctrl-0 = <&pinctrl_otgid1>;
> +       pinctrl-1 = <&pinctrl_otgid1>;
> +       dr_mode = "otg";
> +       hnp-disable;
> +       srp-disable;
> +       adp-disable;
> +       status = "okay";
> +};
> +
> +&usbphy1 {
> +       status = "okay";
> +};
> +
> +&usbmisc1 {
> +       status = "okay";
> +};
> +
> +&usbotg2 {
> +       pinctrl-names = "default", "sleep";
> +       pinctrl-0 = <&pinctrl_otgid2>;
> +       pinctrl-1 = <&pinctrl_otgid2>;
> +       dr_mode = "otg";
> +       hnp-disable;
> +       srp-disable;
> +       adp-disable;
> +       status = "okay";
> +};
> +
> +&usbphy2 {
> +       status = "okay";
> +};
> +
> +&usbmisc2 {
> +       status = "okay";
> +};
> +
> +&usdhc0 {
> +       pinctrl-names = "default", "sleep";
> +       pinctrl-0 = <&pinctrl_usdhc0>;
> +       pinctrl-1 = <&pinctrl_usdhc0>;
> +       non-removable;
> +       bus-width = <4>;
> +       status = "okay";
> +};
> +
> +&iomuxc1 {
> +       pinctrl_enet: enetgrp {
> +               fsl,pins = <
> +                       MX8ULP_PAD_PTE15__ENET0_MDC     0x43
> +                       MX8ULP_PAD_PTE14__ENET0_MDIO    0x43
> +                       MX8ULP_PAD_PTE17__ENET0_RXER    0x43
> +                       MX8ULP_PAD_PTE18__ENET0_CRS_DV  0x43
> +                       MX8ULP_PAD_PTF1__ENET0_RXD0     0x43
> +                       MX8ULP_PAD_PTE20__ENET0_RXD1    0x43
> +                       MX8ULP_PAD_PTE16__ENET0_TXEN    0x43
> +                       MX8ULP_PAD_PTE23__ENET0_TXD0    0x43
> +                       MX8ULP_PAD_PTE22__ENET0_TXD1    0x43
> +                       MX8ULP_PAD_PTE19__ENET0_REFCLK  0x43
> +                       MX8ULP_PAD_PTF10__ENET0_1588_CLKIN 0x43
> +               >;
> +       };
> +
> +       pinctrl_lpuart5: lpuart5grp {
> +               fsl,pins = <
> +                       MX8ULP_PAD_PTF14__LPUART5_TX    0x3
> +                       MX8ULP_PAD_PTF15__LPUART5_RX    0x3
> +               >;
> +       };
> +
> +       pinctrl_otgid1: usb1grp {
> +               fsl,pins = <
> +                       MX8ULP_PAD_PTF2__USB0_ID        0x10003
> +               >;
> +       };
> +
> +       pinctrl_otgid2: usb2grp {
> +               fsl,pins = <
> +                       MX8ULP_PAD_PTD23__USB1_ID       0x10003
> +               >;
> +       };
> +
> +       pinctrl_usdhc0: usdhc0grp {
> +               fsl,pins = <
> +                       MX8ULP_PAD_PTD1__SDHC0_CMD      0x43
> +                       MX8ULP_PAD_PTD2__SDHC0_CLK      0x10042
> +                       MX8ULP_PAD_PTD10__SDHC0_D0      0x43
> +                       MX8ULP_PAD_PTD9__SDHC0_D1       0x43
> +                       MX8ULP_PAD_PTD8__SDHC0_D2       0x43
> +                       MX8ULP_PAD_PTD7__SDHC0_D3       0x43
> +                       MX8ULP_PAD_PTD6__SDHC0_D4       0x43
> +                       MX8ULP_PAD_PTD5__SDHC0_D5       0x43
> +                       MX8ULP_PAD_PTD4__SDHC0_D6       0x43
> +                       MX8ULP_PAD_PTD3__SDHC0_D7       0x43
> +                       MX8ULP_PAD_PTD11__SDHC0_DQS     0x10042
> +               >;
> +       };
> +};
> --
> 2.26.2
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
