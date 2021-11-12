Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C0F444DF3A
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 01:38:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234480AbhKLAlL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Nov 2021 19:41:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233817AbhKLAlL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Nov 2021 19:41:11 -0500
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8166C061766
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 16:38:21 -0800 (PST)
Received: by mail-pf1-x435.google.com with SMTP id x131so6979649pfc.12
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 16:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6V0YnnkWAGWiDmZp2NjWEznJa73Yi3xUG8ZLOn1q/Ek=;
        b=cLMvhV4oZxE15N+mSTNdBHjBLxrKePFf01qAgNgyJX1bbqJZzZ5HQyQP1FAjVqrrVZ
         HZDefmqrgCsWGUCxfRxJxIPr2gddCZPSeYxU39sJCqPLesoAgPxAtP9gD/0dRRBViyhq
         MlSnrLdRhIP5mQ7331JLVanifvBZZ1M4vT5dEEph+zp6lsJmMKuqBVZVCwgHWTOTkfX/
         rPcIYr61SUJubQFPuti0aU/Z438en7VsYAbuPamf5TKFE3SjyYbkX9hd7feZfK0ewsOz
         DRVnKk5BEgYQLcnAtxXAM2ySdAFSA0OEeA5CQZxrcfK0eri0khoO4G6r8Wn/v2IRuwVN
         dVGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6V0YnnkWAGWiDmZp2NjWEznJa73Yi3xUG8ZLOn1q/Ek=;
        b=4uydh5KrkNVbxg5jwJ7O305S81fsBIp2AW5KBes65Bdww5HKvvVv2mQHZEnG8TmB6d
         WmxckekS+f3J0rTnS3Zia/w3bKDYNzsu7MvLKiKKRJb7yYlxvC+ItH3nU35byNVNeixq
         fn2mrAvo4s7tb0lA0dWDl1AgD8QAnzirtkRdGyY39KSP/0Sh3NcZwuKuWUNEv7x+55CI
         dAigFhhhXR5Lt8Dgwv8xmbM4lo/QXZ/ONHaVHMZYFP9rxph85NLvievnRT9++atq3eP7
         71wY7PYPIZ4YImAaG1nI7z8ps5Nr3KFF0OlPR+qBPqX0PZHYa8neAvCMo2GTX2Gv/Tey
         GhcQ==
X-Gm-Message-State: AOAM533mr/iOixDMXePUSSv2iR/mp91gtqZsa1VsPTS6tVX0umNBGa+u
        5AYVFhb9wzUltUh5FBpL5iu/D4XFWgxcYPVkZHRmfQ==
X-Google-Smtp-Source: ABdhPJxaCFDAIhmCkXGL8hllEw8h73+sJwzBBj0q4Odpc93JOWrcVnEA1nrzNasBIza5BdOzQ0Lp3M4dqoieeVJ5FR4=
X-Received: by 2002:a63:5f56:: with SMTP id t83mr7396167pgb.432.1636677501335;
 Thu, 11 Nov 2021 16:38:21 -0800 (PST)
MIME-Version: 1.0
References: <20211111101456.584061-1-jagan@amarulasolutions.com> <20211111101456.584061-2-jagan@amarulasolutions.com>
In-Reply-To: <20211111101456.584061-2-jagan@amarulasolutions.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Thu, 11 Nov 2021 16:38:10 -0800
Message-ID: <CAJ+vNU0fdSmhQqw-__8ndkeXrbwFEKOb5G0wukfG7h9g6YKJ8g@mail.gmail.com>
Subject: Re: [RFC PATCH v2 1/3] arm64: dts: imx8mm: Add eLCDIF node support
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Adam Ford <aford173@gmail.com>, Fabio Estevam <festevam@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        DRI mailing list <dri-devel@lists.freedesktop.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 11, 2021 at 2:15 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Add eLCDIF controller node for i.MX8MM.
>

Jagan,

It doesn't look like you sent this to the Device Tree mainling list so
I added that to cc.

> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index c2f3f118f82e..caeb93313413 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -1068,6 +1068,25 @@ aips4: bus@32c00000 {
>                         #size-cells = <1>;
>                         ranges = <0x32c00000 0x32c00000 0x400000>;
>
> +                       lcdif: lcdif@32e00000 {
> +                               compatible = "fsl,imx28-lcdif";
> +                               reg = <0x32e00000 0x10000>;
> +                               clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
> +                                        <&clk IMX8MM_CLK_DISP_AXI_ROOT>,
> +                                        <&clk IMX8MM_CLK_DISP_APB_ROOT>;
> +                               clock-names = "pix", "disp_axi", "axi";
> +                               assigned-clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
> +                                                 <&clk IMX8MM_CLK_DISP_AXI>,
> +                                                 <&clk IMX8MM_CLK_DISP_APB>;
> +                               assigned-clock-parents = <&clk IMX8MM_VIDEO_PLL1_OUT>,
> +                                                        <&clk IMX8MM_SYS_PLL2_1000M>,
> +                                                        <&clk IMX8MM_SYS_PLL1_800M>;
> +                               assigned-clock-rate = <594000000>, <500000000>, <200000000>;
> +                               interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +                               power-domains = <&disp_blk_ctrl IMX8MM_DISPBLK_PD_LCDIF>;
> +                               status = "disabled";
> +                       };
> +
>                         disp_blk_ctrl: blk-ctrl@32e28000 {
>                                 compatible = "fsl,imx8mm-disp-blk-ctrl", "syscon";
>                                 reg = <0x32e28000 0x100>;
> --
> 2.25.1
>
