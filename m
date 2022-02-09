Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51ED44AFFE6
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 23:10:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232878AbiBIWKV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 17:10:21 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:59946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230482AbiBIWKV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 17:10:21 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BF46DF8E3F8
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 14:10:23 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id r19so6801441pfh.6
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 14:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Jg3Vid4u/6elaG8I5AisnvQlp+fL+sekrQvsuwSCUUA=;
        b=qjBtOFr3dP1B2TZ/L3djWMLCeK9Tf1n5dkEfvIv1Fv3yCOTCY1n5foHVtVooYS6oGD
         tIfi+8uKwrAaOWNTlWbH++PGt6m5qa9xVSSvCf92clXaLRge/ep8X9D7vPBftQoGhghG
         Gtu6WbUpImEaDRz8D111bSIusoDb3z4k6xnrosMuM5VMIBSG3Jl3tBX+LdyUq4Yyt6jU
         B7Bz4QtjALOEfoOWNPFqXKLYTilZgLxXsM35V1eoC0KGbod00WssgScWBt/FInfjmjfi
         6nzQChPFCTBygLjGRtKA/+mbOxb8oZd//1RBUwIPrYpFycNouzd9ckps+MYgOdCtL8NI
         ZYpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Jg3Vid4u/6elaG8I5AisnvQlp+fL+sekrQvsuwSCUUA=;
        b=MHqT6rcI6N3QBdFz8ZDnan+KHRPaHjWKnsVkF7WTFaLPPnbsiMXh05bAksuvnuXpxT
         Tjqc8cLf120t/5kPltXczUxVlMWf5gUa6Q7GAHGJPE1VyHfKoFb8pNLYoxgLIcvOq/tI
         ITZEWJy+M51Bnmdya81hpAr18rePM4n5BPbmV2RB16yWAmp2/8azs4ddn/WPPWw+BtMz
         ulxVf5PINWnychKeWl0XKlasLTIPZSc+VrNJHaICMOi5Qo5W3grylQANherC7LaMb0zi
         a6PHW7zGCIZnV7gq7bqRlmXaupKl+VlOX1aI5B6fKp3VAhJuAHVBZNQ0k4SMIIoJKZjC
         MixQ==
X-Gm-Message-State: AOAM532TGZDAgYxTpnCMldVnJcJ7waPRrBZOAggOqMOOYZPuPuyBbB5L
        OvkDv4hv+X4tdHrF0meUeIjGZ/3OubozV4E3UXoAFA==
X-Google-Smtp-Source: ABdhPJx3EHpvnlCipUVi1/5VBBrbn4k8+AuL/H3Jry20nuHnuUeWfprh+bZxHeegfL4nUN69V2NUqiJZqbpW3LE5Qlc=
X-Received: by 2002:a05:6a00:1308:: with SMTP id j8mr4453990pfu.34.1644444622841;
 Wed, 09 Feb 2022 14:10:22 -0800 (PST)
MIME-Version: 1.0
References: <20220129070912.9836-1-shawnguo@kernel.org> <20220129070912.9836-3-shawnguo@kernel.org>
In-Reply-To: <20220129070912.9836-3-shawnguo@kernel.org>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Wed, 9 Feb 2022 14:10:11 -0800
Message-ID: <CAJ+vNU0CNFeEp0B92mUjV7RrwAHjk9iJ703zEYofkducfFzvGw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: freescale: Use overlay target for simplicity
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>
Cc:     Masahiro Yamada <masahiroy@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Frank Rowand <frank.rowand@sony.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 28, 2022 at 11:10 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> With commit 15d16d6dadf6 ("kbuild: Add generic rule to apply
> fdtoverlay"), overlay target can be used to simplify the build of DTB
> overlays.  It also performs a cross check to ensure base DT and overlay
> actually match.
>
> Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> ---
>  arch/arm64/boot/dts/freescale/Makefile | 29 +++++++++++++-------------
>  1 file changed, 14 insertions(+), 15 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 6d8f0a532587..c521ac2b00ca 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -1,14 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
>
> -# required for overlay support
> -DTC_FLAGS_fsl-ls1028a-qds := -@
> -DTC_FLAGS_fsl-ls1028a-qds-13bb := -@
> -DTC_FLAGS_fsl-ls1028a-qds-65bb := -@
> -DTC_FLAGS_fsl-ls1028a-qds-7777 := -@
> -DTC_FLAGS_fsl-ls1028a-qds-85bb := -@
> -DTC_FLAGS_fsl-ls1028a-qds-899b := -@
> -DTC_FLAGS_fsl-ls1028a-qds-9999 := -@
> -
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-frdm.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-frwy.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-oxalis.dtb
> @@ -21,12 +12,6 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var2.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var3-ads2.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var4.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-13bb.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-65bb.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-7777.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-85bb.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-899b.dtb
> -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-9999.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-rdb.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-qds.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-rdb.dtb
> @@ -49,6 +34,20 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-qds.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2162a-qds.dtb
>
> +fsl-ls1028a-qds-13bb-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-13bb.dtbo
> +fsl-ls1028a-qds-65bb-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-65bb.dtbo
> +fsl-ls1028a-qds-7777-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-7777.dtbo
> +fsl-ls1028a-qds-85bb-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-85bb.dtbo
> +fsl-ls1028a-qds-899b-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-899b.dtbo
> +fsl-ls1028a-qds-9999-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-9999.dtbo
> +
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-13bb.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-65bb.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-7777.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-85bb.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-899b.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-9999.dtb
> +
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-beacon-kit.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
> --
> 2.17.1

Shawn and Rob

I tried to adapt my patch 'arm64: dts: imx8mm-venice-gw73xx-0x: add dt
overlays for serial modes' [1] and it results in a build failure:
$ make dtbs W=1
  UPD     include/config/kernel.release
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb

Overlay 'scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h' is
incomplete (2048 / 1346656301 bytes read)
scripts/Makefile.lib:360: recipe for target
'arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb'
failed
make[2]: *** [arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb]
Error 1
scripts/Makefile.build:550: recipe for target
'arch/arm64/boot/dts/freescale' failed
make[1]: *** [arch/arm64/boot/dts/freescale] Error 2
Makefile:1370: recipe for target 'dtbs' failed
make: *** [dtbs] Error 2

It seems that it chokes on the include. The dts is:
// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
/*
 * Copyright 2022 Gateworks Corporation
 *
 * GW73xx RS232 with RTS/CTS hardware flow control:
 *  - GPIO4_0 rs485_en needs to be driven low (in-active)
 *  - UART4_TX becomes RTS
 *  - UART4_RX becomes CTS
 */

#include <dt-bindings/gpio/gpio.h>

#include "imx8mm-pinfunc.h"

/dts-v1/;
/plugin/;

&{/} {
        compatible = "gw,imx8mm-gw73xx-0x";
};

&gpio4 {
        rs485_en {
                gpio-hog;
                gpios = <0 GPIO_ACTIVE_HIGH>;
                output-low;
                line-name = "rs485_en";
        };
};

&uart2 {
        pinctrl-names = "default";
        pinctrl-0 = <&pinctrl_uart2>;
        rts-gpios = <&gpio5 29 GPIO_ACTIVE_LOW>;
        cts-gpios = <&gpio5 28 GPIO_ACTIVE_LOW>;
        uart-has-rtscts;
        status = "okay";
};

&uart4 {
        status = "disabled";
};

&iomuxc {
        pinctrl_uart2: uart2grp {
                fsl,pins = <
                        MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX     0x140
                        MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX     0x140
                        MX8MM_IOMUXC_UART4_TXD_GPIO5_IO29       0x140
                        MX8MM_IOMUXC_UART4_RXD_GPIO5_IO28       0x140
                >;
        };
};

Could you explain what is wrong here? It compiled fine before trying
to adapt the Makefile to what is described in 15d16d6dadf6 ("kbuild:
Add generic rule to applyfdt overlay"

Best regards,

Tim
[1] - https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=607352
