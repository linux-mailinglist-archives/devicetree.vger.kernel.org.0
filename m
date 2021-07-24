Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD0A13D4920
	for <lists+devicetree@lfdr.de>; Sat, 24 Jul 2021 20:21:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbhGXRkr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Jul 2021 13:40:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229925AbhGXRkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Jul 2021 13:40:42 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70AC6C061575
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 11:21:14 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id e10so7017224pls.2
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 11:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I3DcjUQm2rBf8J4pHhxOP/EGD2IowZ7+YWf/+CetAic=;
        b=0gcGmJXkg1XOJ5o6Dfv9yrfisW0wY8pOYrV+sztmb39kZ/J+XiesGZxVGwepJaPpdU
         eUs7xNrTxf9ZkHHcKWYdgQENTK6gqpB8p6kNAYa6oFqo8O/gABn0gno4xnwzsiU1gVTY
         v6/DTpCqxZirWXRRrKbj6/fu9/0iKX5L6I7ulm7620FYAYm3XyrV1w+hypMnBm5+dNGn
         cYZOyhoaPe0OfaLOjsL5huohcb3Hm9rmverGIOLjwtHWnKKTIqnnAvenS4sY3noGDwk3
         8NqeySQBZ92mx0CceQBhfhoZjQ/kNocr1RAU9P9H52poq8DY6KTEcA21iMLD5uX11PWA
         YY+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I3DcjUQm2rBf8J4pHhxOP/EGD2IowZ7+YWf/+CetAic=;
        b=MKw9qaf3zsxBpzIMlM+0cI+8cbu1cGxzGiAbFsiZip3XjmyXfN8laxtDta3eclTA1Z
         mdnPoKzZxAuZNaGO+jpyOC48as4vhhlFyag2DXB7rDK4zi9GtOw8/8tkYRRDr0GoImYT
         dcUztBagt3oUaEXtPwD9rDTwirmtsviOaF62Sox6aCeRDin3dTTe2qIXBHjbd5sPWV1F
         Aj5/rVjHAuSophNyuZDTnE+t41HtWsCpgQO5qkqyaZ7N1gNe28EH9G03CBAbSL8cVzNp
         MgurlvGRef/gy8YBMyCLLGC+D179188Q6/wjYbjvEGR6YtG5MnButEB3Xo+mBpl0fvmt
         MCNg==
X-Gm-Message-State: AOAM5309iIGAP+z0KMsKmQ6ijgv5WVrZtvQP/nIO2F1TLtjHZcup7s33
        lrgo+xmmbAU57CAVAwX8QdSq+ucjf791dM50Mkvk5g==
X-Google-Smtp-Source: ABdhPJxuZApXVn8LhJOKI4UnbMl6UCs6yq8K33NzdxOjrdLpjU33x/5O3Pbpy3N6Js/tm1f80Z0DhY+8LvL2OGIrFHo=
X-Received: by 2002:a63:e513:: with SMTP id r19mr10542325pgh.30.1627150874042;
 Sat, 24 Jul 2021 11:21:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210601174917.1979-1-tharvey@gateworks.com> <20210601174917.1979-3-tharvey@gateworks.com>
In-Reply-To: <20210601174917.1979-3-tharvey@gateworks.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Sat, 24 Jul 2021 11:21:01 -0700
Message-ID: <CAJ+vNU1ORho1WJuTX0Rp_FrZJpenWpUcwSQZ2wWwVU2JuqLsYw@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: imx8mm-venice-gw7901: add support for USB
 hub subload
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 1, 2021 at 10:49 AM Tim Harvey <tharvey@gateworks.com> wrote:
>
> The USB hub has it's reset as GPIO4_IO17 but can be sub-loaded and
> VBUS provided by a VBUS regulator with GPIO4_IO2 as the enable and
> GPIO1_IO15 as the active-low over-current.
>
> Enable pull-up for GPIO4_IO17 to keep hub out of reset and move VBUS
> enable to GPIO4_IO2. Additionally enable pull-up on GPIO1_IO15 so that
> if the hub is loaded it never over-currents.
>
> This allows USB to work in both configurations without a device-tree
> change.
>
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> index 5a1e9df39bec..db43ee28bdb6 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> @@ -216,7 +216,7 @@
>                 pinctrl-0 = <&pinctrl_reg_usb2>;
>                 compatible = "regulator-fixed";
>                 regulator-name = "usb_usb2_vbus";
> -               gpio = <&gpio4 17 GPIO_ACTIVE_HIGH>;
> +               gpio = <&gpio4 2 GPIO_ACTIVE_HIGH>;
>                 enable-active-high;
>                 regulator-min-microvolt = <5000000>;
>                 regulator-max-microvolt = <5000000>;
> @@ -824,8 +824,9 @@
>
>         pinctrl_reg_usb2: regusb1grp {
>                 fsl,pins = <
> -                       MX8MM_IOMUXC_SAI1_TXD5_GPIO4_IO17       0x41
> -                       MX8MM_IOMUXC_GPIO1_IO15_USB2_OTG_OC     0x41
> +                       MX8MM_IOMUXC_SAI1_RXD0_GPIO4_IO2        0x41
> +                       MX8MM_IOMUXC_SAI1_TXD5_GPIO4_IO17       0x140
> +                       MX8MM_IOMUXC_GPIO1_IO15_USB2_OTG_OC     0x140
>                 >;
>         };
>
> --
> 2.17.1
>

Shawn,

Is there anything you want changed here?

Best regards,

Tim
