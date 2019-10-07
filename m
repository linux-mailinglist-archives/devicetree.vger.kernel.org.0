Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 442E2CE23B
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 14:53:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727554AbfJGMxU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 08:53:20 -0400
Received: from mail.kernel.org ([198.145.29.99]:45410 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727467AbfJGMxU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Oct 2019 08:53:20 -0400
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A122E2173B
        for <devicetree@vger.kernel.org>; Mon,  7 Oct 2019 12:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1570452798;
        bh=OcHeLP/qq1aPvsGSRiYbAIE/VJP24hQJgPul4zHU15w=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=JX33LU9cJQALFkkcYviaIM3iBwEAe/CidRD1RIZiJ4l4hgydMuVM+hRcJj4FSWTpN
         E7of9qQYmDsRsBy6+LfexyztiOnt27J7Zc+8NR1W02G1KOry0lpzH6Q0AVfJEyNEhe
         A8DpVEamD2GeSKLceSJlijpdcJ96X0FpBVMSbeJk=
Received: by mail-qk1-f177.google.com with SMTP id u186so12416439qkc.5
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2019 05:53:18 -0700 (PDT)
X-Gm-Message-State: APjAAAWwcARUZtK4iSA03H/Y3kfSXudpRR2yLzQQxkuoFvxpkL0kItEh
        cfw+JeeYJHFtofxDR+qZRh9XtDYgHmCep9cYUQ==
X-Google-Smtp-Source: APXvYqwlKfXgpwy3ehPZWxTgG9eiCTZ6s5SoFYAM/1PDHBgNGMa6ZXPufLcYTCelh6Tj9O1lBlYZxD004Ih/FW/sVjg=
X-Received: by 2002:a37:be87:: with SMTP id o129mr23745015qkf.254.1570452797681;
 Mon, 07 Oct 2019 05:53:17 -0700 (PDT)
MIME-Version: 1.0
References: <9037b7edbbb41cbbf699ebe3a511daf22d886e7d.1570444695.git.robin.murphy@arm.com>
In-Reply-To: <9037b7edbbb41cbbf699ebe3a511daf22d886e7d.1570444695.git.robin.murphy@arm.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 7 Oct 2019 07:53:06 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKBy+i+=gGyYhBgcMUYsWd_CL_GnEoQqALBb+Gy7Ogb6A@mail.gmail.com>
Message-ID: <CAL_JsqKBy+i+=gGyYhBgcMUYsWd_CL_GnEoQqALBb+Gy7Ogb6A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add Beelink A1
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     "heiko@sntech.de" <heiko@sntech.de>, devicetree@vger.kernel.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 7, 2019 at 6:33 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Beelink A1 is a TV box implementing the higher-end options of the
> RK3328 reference design - the DTB from the stock Android firmware is
> clearly the "rk3328-box-plus" variant from the Rockchip 3.10 BSP with
> minor modifications to accommodate the USB WiFi module and additional
> VFD-style LED driver. It features:
>
> - 4GB of 32-bit LPDDR3
> - 16GB of HS200 eMMC (newer models with 32GB also exist)
> - Realtek RTL8211F phy for gigabit ethernet
> - Fn-Link 6221E-UUC module (RealTek RTL8821CU) for 11ac WiFi and Bluetooth 4.2
> - HDMI and analog A/V
> - 1x USB 3.0 type A host, 1x USB 2.0 type A OTG, 1x micro SD
> - IR receiver and a neat little LED clock display.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>
> One question I'm wondering about is whether it's worth pushing the HDMI
> and analog codec audio cards down into rk3328.dtsi (as with HDMI audio
> on RK3399), since those audio pipelines are internal to the SoC and the
> board only really governs whether the outputs are wired up or not.

Seems reasonable. One other candidate below.

>
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +

In the future, please split bindings to a separate patch.

>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  arch/arm64/boot/dts/rockchip/rk3328-a1.dts    | 399 ++++++++++++++++++
>  3 files changed, 405 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index c82c5e57d44c..f27f7805f57e 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -40,6 +40,11 @@ properties:
>            - const: asus,rk3288-tinker-s
>            - const: rockchip,rk3288
>
> +      - description: Beelink A1
> +        items:
> +          - const: azw,beelink-a1
> +          - const: rockchip,rk3328
> +
>        - description: bq Curie 2 tablet
>          items:
>            - const: mundoreader,bq-curie2
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 1f18a9392d15..a6f250e7cde2 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> new file mode 100644
> index 000000000000..03ad663ff821
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> @@ -0,0 +1,399 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
> +// Copyright (c) 2017-2019 Arm Ltd.
> +
> +/dts-v1/;
> +#include "rk3328.dtsi"
> +
> +/ {
> +       model = "Beelink A1";
> +       compatible = "azw,beelink-a1", "rockchip,rk3328";
> +
> +       /*
> +        * UART pins, as viewed with bottom of case removed:
> +        *
> +        *           Front
> +        *        /-------
> +        *  L    / o <- Gnd
> +        *  e   / o <-- Rx
> +        *  f  / o <--- Tx
> +        *  t / o <---- +3.3v
> +        *    |
> +        */
> +       chosen {
> +               stdout-path = "serial2:1500000n8";
> +       };
> +
> +       gmac_clkin: external-gmac-clock {
> +               compatible = "fixed-clock";
> +               clock-frequency = <125000000>;
> +               clock-output-names = "gmac_clkin";
> +               #clock-cells = <0>;
> +       };
> +
> +       vcc_host_5v: usb3-current-switch {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&usb30_host_drv>;
> +               regulator-name = "vcc_host_5v";
> +               vin-supply = <&vcc_sys>;
> +       };
> +
> +       vcc_sys: vcc-sys {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc_sys";
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +       };
> +
> +       cpus {
> +               idle-states {
> +                       entry-method = "arm,psci";
> +
> +                       cpu_sleep: cpu-sleep {
> +                               compatible = "arm,idle-state";
> +                               arm,psci-suspend-param = <0x0010000>;
> +                               local-timer-stop;
> +                               entry-latency-us = <120>;
> +                               exit-latency-us = <250>;
> +                               min-residency-us = <900>;

This doesn't seem like something that's board specific, but I guess
the regulator could have some influence on these times. If so, the
board file could always override a default.

Rob
