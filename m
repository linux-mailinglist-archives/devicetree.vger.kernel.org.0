Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 774FA2F901B
	for <lists+devicetree@lfdr.de>; Sun, 17 Jan 2021 03:00:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727857AbhAQB7m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jan 2021 20:59:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727629AbhAQB7l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Jan 2021 20:59:41 -0500
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86998C061573
        for <devicetree@vger.kernel.org>; Sat, 16 Jan 2021 17:59:01 -0800 (PST)
Received: by mail-vs1-xe2a.google.com with SMTP id o19so7281239vsn.3
        for <devicetree@vger.kernel.org>; Sat, 16 Jan 2021 17:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2uAbgzuqmaaFgsco0W8wfFh6+uslGxzhS9k3Gwh6YFI=;
        b=FaYfKVQeStbG1gqWxtrRCWvSxrbDmCYERAiLUhM5XJP6pD4zbxUn3qSMfxYKLMVjz0
         kmsuhIXsqwGaS8U0MCOMPh6ThjcoSOE+0xe6x3hHLPEPFlOVZqVT0kW+gtBFZvHPOuP7
         2eDneJ00EhW6A7YBL7Zp9mPlMcBnKQmolzojs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2uAbgzuqmaaFgsco0W8wfFh6+uslGxzhS9k3Gwh6YFI=;
        b=PRPpnvEIXI0M7QGfsnn4zxfYnpfut7OPfCVlpDIJjg1rvVUWI5skAMJ55EtlgkjrxP
         cxAs1SH/F97yi78ICNFexpsshA7PwHPaZTT4E0SZ4uD/hOjT6TWBX3L+TQDVshnxJRDs
         xJZd8jUI/OvPpKFh5AVq9ha8ctL74xMH4lqCUsxQptCh32KCntx47/EYjjSag49ppYeB
         ASQJP8cHw85XbKKiQEon8Tu0PbFixKNMzv3QXVCNmAPxOhkHK5+YXDj1sWvrZun9znst
         BP6sjmxU1cnmUnGadRTfiFaQOFxrjjjh6UIbgCavRfZ/8qI+B6boZEvkV0b+Hrwb3uvw
         g9/A==
X-Gm-Message-State: AOAM530GrFCAAC7ITc0lsADyw4H2cONnU1eS5pLkqBYRNNURU4pVEJqX
        XecFfdkK23+u5CxBlv4kipiwkjLrBhqXV1l1npcQ3g==
X-Google-Smtp-Source: ABdhPJy5/LYHoUfJYfigPp7aEf81RaJx2lXHqgcnMUkYl6viFx+oN9nDTEB9raOjMFYrAG23L3VvR25Vn7ilnouI3bk=
X-Received: by 2002:a67:73c2:: with SMTP id o185mr15071090vsc.16.1610848740123;
 Sat, 16 Jan 2021 17:59:00 -0800 (PST)
MIME-Version: 1.0
References: <20210116090656.11752-1-chunfeng.yun@mediatek.com> <20210116090656.11752-12-chunfeng.yun@mediatek.com>
In-Reply-To: <20210116090656.11752-12-chunfeng.yun@mediatek.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Sun, 17 Jan 2021 09:58:49 +0800
Message-ID: <CANMq1KA63Lcifv0G80AyF9-JAdojtsnR18QtfytTMuKw7pTkPA@mail.gmail.com>
Subject: Re: [PATCH next 12/15] arm64: dts: mediatek: mt8183: fix dtbs_check warning
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Devicetree List <devicetree@vger.kernel.org>,
        linux-usb@vger.kernel.org, lkml <linux-kernel@vger.kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Min Guo <min.guo@mediatek.com>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 16, 2021 at 5:07 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> Harmonize node names, compatibles and properties.
>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 5b782a4769e7..a69a033a68ac 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -865,7 +865,7 @@
>                         ranges;
>                         status = "disabled";
>
> -                       usb_host: xhci@11200000 {
> +                       usb_host: usb@11200000 {
>                                 compatible = "mediatek,mt8183-xhci",
>                                              "mediatek,mtk-xhci";
>                                 reg = <0 0x11200000 0 0x1000>;
> @@ -908,11 +908,11 @@
>                         status = "disabled";
>                 };
>
> -               mipi_tx0: mipi-dphy@11e50000 {
> +               mipi_tx0: dsi-phy@11e50000 {
>                         compatible = "mediatek,mt8183-mipi-tx";
>                         reg = <0 0x11e50000 0 0x1000>;
>                         clocks = <&apmixedsys CLK_APMIXED_MIPID0_26M>;
> -                       clock-names = "ref_clk";
> +                       clock-names = "ref";
>                         #clock-cells = <0>;
>                         #phy-cells = <0>;
>                         clock-output-names = "mipi_tx0_pll";

This is unrelated to USB, so this should probably be a separate patch.

> @@ -931,11 +931,10 @@
>                         };
>                 };
>
> -               u3phy: usb-phy@11f40000 {
> +               u3phy: t-phy@11f40000 {
>                         compatible = "mediatek,mt8183-tphy",
>                                      "mediatek,generic-tphy-v2";
>                         #address-cells = <1>;
> -                       #phy-cells = <1>;
>                         #size-cells = <1>;
>                         ranges = <0 0 0x11f40000 0x1000>;
>                         status = "okay";
> --
> 2.18.0
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
