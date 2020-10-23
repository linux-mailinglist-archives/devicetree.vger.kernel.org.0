Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23145297052
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 15:22:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S373082AbgJWNW1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 09:22:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S372993AbgJWNW0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 09:22:26 -0400
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com [IPv6:2607:f8b0:4864:20::d42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4654AC0613CE
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:22:26 -0700 (PDT)
Received: by mail-io1-xd42.google.com with SMTP id h21so1721043iob.10
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dEfyHhDfb1J29xg/MU/EbZi3PKtT0a0IQvdwghsKDtI=;
        b=Vc/aFalK0DvJiQJ6eLeXvAn2o0DkQ8Qxaxf/zkJ5i2Bd96A0iYtOr7kB/0ZxTICBTM
         bBbkf0g+hg2FsFBqDOJn2surMyMRVdGvI8SlpsxBqLHPB0bTBXQCYAADAMe8AY+sPfPV
         UG4foWoJHsMcJKLtlJanUv/iidgqfXPw3srC0Ky1+jCl44RoSu96dBj9cpf8fR38C/VT
         llJp+YOmTpvqzaGWxhxG7SaO28a03BR094hhhCBqw4gRwIn8qqXsuyNkuc4NHWntm1y4
         o+k85ReMGp0MbwIiH+rvgW4rRHUPI5RKVwXyHIUx1M0Ar7DIh/HICBBU8NxvXYFlsLuc
         7lRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dEfyHhDfb1J29xg/MU/EbZi3PKtT0a0IQvdwghsKDtI=;
        b=rRAAprGVx+CJtvp58TDlNDnDSiuaU7q4TR3VIk/AiAthZL6u7NYxC+Rky2WwSKEcNE
         rgPenjS4KgQEFqEHWfgadhLr//mmSjle7McJgLxr5i4Y2p6hQrObLNdc2KfKyotITT+0
         UFe4U6I5a5FieWPpqpL0dxns70H0f8lbrsk7F665lV06b7tYDxRH7L8LFOMcYUkS6hiD
         +ITVO7StvAQJj8qilTGsbXbydS4DyH5L7ts4MdOmPrFa8aYVP25Z1dKpUD8NHfb9tLo6
         Jl4BmiQZdtmtSkmxxNa0jCzr8tnAZneF7hN9SdTPX1yot8amu/GXYUJRXPI+PHV7XYoS
         NiYA==
X-Gm-Message-State: AOAM532gKc7Yv9uJMbNHHWoKMBbGg9tCY03gdrTz/MgtP2KvH1Md1591
        Qzu5/jNOQxGTVW+64R0erve6eS15mSYHY/Yb680=
X-Google-Smtp-Source: ABdhPJy2fko2aHVOryqMcDa9xZgBaE00yQwIZgXNGqGaE5aGhoB8VmbGSoN37geh18VjLVStPLxefNtpzzHRHjtmGyU=
X-Received: by 2002:a5e:de0b:: with SMTP id e11mr1501416iok.92.1603459345364;
 Fri, 23 Oct 2020 06:22:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200930155006.535712-1-l.stach@pengutronix.de> <20200930155006.535712-11-l.stach@pengutronix.de>
In-Reply-To: <20200930155006.535712-11-l.stach@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Fri, 23 Oct 2020 08:22:14 -0500
Message-ID: <CAHCN7xLN6tJ5G_GscP3biR+XxFb-pA7fN1CbNqXMUF4KbyaRzQ@mail.gmail.com>
Subject: Re: [PATCH 10/11] arm64: dts: imx8mm: add GPC node and power domains
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Marek Vasut <marex@denx.de>,
        devicetree <devicetree@vger.kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 30, 2020 at 10:55 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> This adds the DT nodes to describe the power domains available on the
> i.MX8MM. Things are a bit more complex compared to other GPCv2 power
> domain setups, as there is now a hierarchy of domains where complete
> subsystems (HSIO, GPU, DISPLAY) can be gated as a whole, but also
> fine granular gating within those subsystems is possible.
>
> Note that this is still incomplete, as both VPU and DISP domains are
> missing their reset clocks. Those aren't directly sourced from the CCM,
> but have another level of clock gating in the BLKCTL of those domains,
> which needs a separate driver.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 57 +++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 76f040e4be5e..a841fb2d0458 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -4,6 +4,8 @@
>   */
>
>  #include <dt-bindings/clock/imx8mm-clock.h>
> +#include <dt-bindings/power/imx8mm-power.h>
> +#include <dt-bindings/reset/imx8mq-reset.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -547,6 +549,61 @@
>                                 interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
>                                 #reset-cells = <1>;
>                         };
> +
> +                       gpc: gpc@303a0000 {
> +                               compatible = "fsl,imx8mm-gpc";
> +                               reg = <0x303a0000 0x10000>;
> +                               interrupt-parent = <&gic>;
> +                               interrupt-controller;
> +                               #interrupt-cells = <3>;

Does this need an interrupt index within the GIC?
possibly something like:   interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;


> +
> +                               pgc {
> +                                       #address-cells = <1>;
> +                                       #size-cells = <0>;
> +
> +                                       pgc_hsiomix: power-domain@0 {
> +                                               #power-domain-cells = <0>;
> +                                               reg = <IMX8MM_POWER_DOMAIN_HSIOMIX>;
> +                                               clocks = <&clk IMX8MM_CLK_USB_BUS>;
> +                                       };
> +
> +                                       pgc_pcie: power-domain@1 {
> +                                               #power-domain-cells = <0>;
> +                                               reg = <IMX8MM_POWER_DOMAIN_PCIE>;
> +                                               power-domains = <&pgc_hsiomix>;
> +                                       };
> +
> +                                       pgc_otg1: power-domain@2 {
> +                                               #power-domain-cells = <0>;
> +                                               reg = <IMX8MM_POWER_DOMAIN_OTG1>;
> +                                               power-domains = <&pgc_hsiomix>;
> +                                       };
> +
> +                                       pgc_otg2: power-domain@3 {
> +                                               #power-domain-cells = <0>;
> +                                               reg = <IMX8MM_POWER_DOMAIN_OTG2>;
> +                                               power-domains = <&pgc_hsiomix>;
> +                                       };
> +
> +                                       pgc_gpumix: power-domain@4 {
> +                                               #power-domain-cells = <0>;
> +                                               reg = <IMX8MM_POWER_DOMAIN_GPUMIX>;
> +                                               clocks = <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> +                                                        <&clk IMX8MM_CLK_GPU_AHB>;
> +                                       };
> +
> +                                       pgc_gpu: power-domain@5 {
> +                                               #power-domain-cells = <0>;
> +                                               reg = <IMX8MM_POWER_DOMAIN_GPU>;
> +                                               clocks = <&clk IMX8MM_CLK_GPU_AHB>,
> +                                                        <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> +                                                        <&clk IMX8MM_CLK_GPU2D_ROOT>,
> +                                                        <&clk IMX8MM_CLK_GPU3D_ROOT>;
> +                                               resets = <&src IMX8MQ_RESET_GPU_RESET>;
> +                                               power-domains = <&pgc_gpumix>;
> +                                       };
> +                               };
> +                       };
>                 };
>
>                 aips2: bus@30400000 {
> --
> 2.20.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
