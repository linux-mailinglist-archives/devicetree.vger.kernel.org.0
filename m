Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13DF03D491E
	for <lists+devicetree@lfdr.de>; Sat, 24 Jul 2021 20:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229609AbhGXRje (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Jul 2021 13:39:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbhGXRjd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Jul 2021 13:39:33 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DABF5C061575
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 11:20:04 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id k4-20020a17090a5144b02901731c776526so13714093pjm.4
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 11:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RihhThdZSR46NOuWdWk8x1+7epO+9DpzVajU9MbXLE0=;
        b=H5bit9PICRSitN5M7rbdhMxaK6SuCOzgnntjjojLiwEAtlkfCppSW81Y6adCG6x8wl
         zPWHZIgY2zJcwnyC4MZpK6my7TbZc1tkFQen8Kr5U9cEqDXnaLxuFAeFLX21RuW5X+DH
         ObC6npcrrDNK4v5otRVOKK09SyahUvbMI6WCWn2VpWXbzSAFS5bPvc7be4cY8H/ogZgu
         RBl9A2ho58PNpnmmlQIeIUZpjsF5Em7cpLSM3uB12ffxFIYX6FAnPjjI1UWXWg08munI
         guurB9H3vqdTMgy7SwYBCpDCmhYsrF7yOGKjpp+p8afz38T79NeembuMgJW/cWQ4dCav
         rq0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RihhThdZSR46NOuWdWk8x1+7epO+9DpzVajU9MbXLE0=;
        b=pmGpgEURM21Mc0e6il8qAO59MF5SyQirmAKIMJZamabn/8Nq0pxMoDnsVR4+cZhBxx
         xHA/3Bw2WIU7dd9z2rQF4Tn0zewQ6iaBIYL6Ht9gpARvt3GQ16aBKpACtr6hb43yVYBo
         NBVYmpuoFZ7e2AX/EKCE45HMrvYRG4k16iUV6YNCv00dcl1EGHS7tBtHiSkeRZf2hG2f
         yRnfnf5vtkVxEUCdNOxhk7odcCaG65vEH4DX1La768FUlo5CpcoZxWx2D811YwMptqSh
         OANKPcWnUfb470m7xC5KahFQ1Ax+hRrnBT+2HCh0H3sA8ta/g9WGyDmSQZCAWrS6XsT2
         EVWg==
X-Gm-Message-State: AOAM532x9yfqoI9SMeh2t1ks5uhhh7wAaxNS/JLhGMSbGced4zcfigu8
        18QQUhCieno9aZnJTokfmgrTBE6DwW6OUQFHdzkvTz+m/CYqHomh
X-Google-Smtp-Source: ABdhPJyWrSMB1l3X0fVedVEpCcsjl3wRrdV6b9+5KkEKSGtN6SvHY9OzhAIMXhxEn1jffcggf0MO3DVpQPySwBzj8KA=
X-Received: by 2002:a63:4e51:: with SMTP id o17mr10797545pgl.126.1627150804434;
 Sat, 24 Jul 2021 11:20:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210601174917.1979-1-tharvey@gateworks.com> <20210601174917.1979-4-tharvey@gateworks.com>
In-Reply-To: <20210601174917.1979-4-tharvey@gateworks.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Sat, 24 Jul 2021 11:19:53 -0700
Message-ID: <CAJ+vNU0uyBS5De8J=Acnww_j6Rn+qSHsDqRtxSoCWN3cMPNAjA@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: imx8mm-venice-gw7901: enable pull-down on
 gpio outputs
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
> Enable internal pull-down on UART transceiver GPIO config pins.
>
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> index db43ee28bdb6..0216facb2aef 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> @@ -877,9 +877,9 @@
>
>         pinctrl_uart3_gpio: uart3gpiogrp {
>                 fsl,pins = <
> -                       MX8MM_IOMUXC_SAI1_RXD4_GPIO4_IO6        0x40000041 /* RS232# */
> -                       MX8MM_IOMUXC_SAI1_RXD5_GPIO4_IO7        0x40000041 /* RS422# */
> -                       MX8MM_IOMUXC_SAI1_RXD6_GPIO4_IO8        0x40000041 /* RS485# */
> +                       MX8MM_IOMUXC_SAI1_RXD4_GPIO4_IO6        0x40000110 /* RS232# */
> +                       MX8MM_IOMUXC_SAI1_RXD5_GPIO4_IO7        0x40000110 /* RS422# */
> +                       MX8MM_IOMUXC_SAI1_RXD6_GPIO4_IO8        0x40000110 /* RS485# */
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
