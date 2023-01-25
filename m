Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDDC667ABC0
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 09:31:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235090AbjAYIbQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 03:31:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235115AbjAYIbP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 03:31:15 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C79DE518CF
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 00:30:58 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id y11so20884762edd.6
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 00:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=streamunlimited.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E/2KTSGN5IAeMFBli47Es0k1+cSysqbM8kohqinsDBA=;
        b=vzaEoNAZ1w3bluqKDelP9gk/naJuO8gK/wAaU1zCFhstolQV3A86OCkE0nPWTEwC+5
         Z3B1DdIvtQBFhOeMbprsPS9ke6cKmJ3DewYtTmK1eR4SBwrGJuAOrHk/Y77RDQPDdxDi
         Ccuq81jum+5A4SCoIB0Vtbn8mTCLL/a4vT+AQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E/2KTSGN5IAeMFBli47Es0k1+cSysqbM8kohqinsDBA=;
        b=pTAdh31g+70a4SbwFKvB3qEoWlgjCt92UWSDkuzK/iwJCzvjeHRb32NZOsO8a2llNt
         AUW42pXUO7lVZelcBgZOJBqINukmMOLJs+GrLy7YUl5Zggp6RoUeOcKTVvi7AJ6/anIk
         rUN9own4K+3DLKoFu71G/Rx+PeFzyXvBTEoNWNktsH6akrMRe0471qkpYa0BdKnEa3ZS
         D/V6zbnFLGZptEBu9wlJdUvxJgcMDpNx/k5CR/v0ECe+asEc5IVh02QqLleIWJ1xFnKL
         AwFrM1EIfXkALGCE6eYfaGDlpYQabJ1p9NCA4G9i5E1+tS3Qr3NJXU4cxXwt/9qV/CQr
         V+/g==
X-Gm-Message-State: AO0yUKWOM3tAQZ94tgEIah5CJuIIm5xICLd8RTbM1rYP8NZJHlbbbCix
        xHbevldQyh2np6kHaaXL+DQk2C+PpsdDC7iEQP37Lw==
X-Google-Smtp-Source: AK7set/yTTBo8oOKFbj5yO3WHAJZiuqAMWxcrSTT16gHXva4l7E857y9sQ7SjqpBYzuiiG3Zk3m6t/Cbf73C534AuAE=
X-Received: by 2002:aa7:ca42:0:b0:4a0:8fd6:34c2 with SMTP id
 j2-20020aa7ca42000000b004a08fd634c2mr753572edt.67.1674635457251; Wed, 25 Jan
 2023 00:30:57 -0800 (PST)
MIME-Version: 1.0
References: <d9b72573-a59f-989f-a752-1aa8517cf8dc@gmail.com>
In-Reply-To: <d9b72573-a59f-989f-a752-1aa8517cf8dc@gmail.com>
From:   Peter Suti <peter.suti@streamunlimited.com>
Date:   Wed, 25 Jan 2023 09:30:46 +0100
Message-ID: <CACMGZgbtX7zgy2USO5O0qY54tGW+d2cZ6qcUUbb-uOFAtfqOVw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: amlogic: Fix SDIO interrupt and make it level-sensitive
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 25, 2023 at 8:00 AM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> SDIO specification defines that the interrupt is level-sensitive.
> Fix the interrupt trigger type for emmc_a accordingly.
> See comment at beginning of the file wrt which is the SDIO port.
> mmc2 = &sd_emmc_a; /* SDIO */
>
> The usage of edge-triggered interrupts lead to lost interrupts under load,
> see [0]. This was confirmed to be fixed by using level-triggered
> interrupts.
>
> Note:
> SDIO interrupt support was added in Linux just recently, however other
> users of this dts may be affected too.
>
> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
>
> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
> Reported-by: Peter Suti <peter.suti@streamunlimited.com>
> Tested-by: Peter Suti <peter.suti@streamunlimited.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> v2:
> - rebase considering recent node name change sd -> mmc for sd_emmc_a
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 +-
>  arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 1a931d5c2..c09eb9f6f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -2324,7 +2324,7 @@ uart_A: serial@24000 {
>                 sd_emmc_a: mmc@ffe03000 {
>                         compatible = "amlogic,meson-axg-mmc";
>                         reg = <0x0 0xffe03000 0x0 0x800>;
> -                       interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
> +                       interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
>                         status = "disabled";
>                         clocks = <&clkc CLKID_SD_EMMC_A>,
>                                  <&clkc CLKID_SD_EMMC_A_CLK0>,
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> index a79a35e84..ae1a5a568 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> @@ -603,7 +603,7 @@ apb: apb@d0000000 {
>                         sd_emmc_a: mmc@70000 {
>                                 compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
>                                 reg = <0x0 0x70000 0x0 0x800>;
> -                               interrupts = <GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
> +                               interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>;
>                                 status = "disabled";
>                         };
>
> --
> 2.39.1
>

Please also change arch/arm64/boot/dts/amlogic/meson-axg.dtsi
sd_emmc_b because it was tested on that platform.

>
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic
>
>
