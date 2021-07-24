Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01ABA3D491D
	for <lists+devicetree@lfdr.de>; Sat, 24 Jul 2021 20:19:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbhGXRjE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Jul 2021 13:39:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbhGXRjE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Jul 2021 13:39:04 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EEA4C061575
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 11:19:35 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id pf12-20020a17090b1d8cb0290175c085e7a5so13756960pjb.0
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 11:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=408uhdvajAOrgk79juAKDI2FDzjmrADhiWfdmKM+KPI=;
        b=hK7VFty7Tc4YPcJvy+uZR/slVfij+TwIuNFMc0dnh3UaHilkhUIWYEaX5JDDNPfZ2o
         ObHnfXK8U3OxAA+9yIHh4gfSFJfQbMgE0aOQFWy886cTIl5tll1n/3eD6okIq8qMlptE
         zelGxVzQFmky17e1xGlWU3B+RURwrdtY6+undHd3sLZ3sD6Y5nUhcPTv4xQsPziiEVsk
         CXCSJw8SQbcCsVb9SdL/1h9UHaBbmrPEQGJH91Ag/lD3zxXuqPt63njVzD0eUSmvwZRz
         1aQo2FYp/KH2G8vpoPAQR7gglx0tYZtCXet1UYSavFle387ODPp4K71Tfl2NWNARyvkm
         767Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=408uhdvajAOrgk79juAKDI2FDzjmrADhiWfdmKM+KPI=;
        b=jw6kNCgHISX68ETpdZEXEftL1+etbOGi+o7B93Eu0NptGTK1VEUAUkIODeOQUIDHhV
         tDj7dbUoKiW4PtPkh8wlS3eav1NZdqhSdaxsg1hxnmJDtokOLED7GBGEEQSDdFxkjGSM
         6yfBV3dHBLOhWrUE0iNFVDG5KK1cPRHzMNzRmVmtRFg0gNtf1uXLSBz/+KyLj/H0OOxN
         t/O1MwT6ybKrKX8q0vmjdoHRUt5ZnNJ0IQsjVjOLnGFexqON1dKXnp43p93b0Rc21S+Q
         ZF1yKKjtNl4g6VHLNh34ExPI60WqmMlL2dr4ZIwt7PNy5HsvnVFxDpXQsHgHAb5+v6Je
         Zy4Q==
X-Gm-Message-State: AOAM532osiz+WDNRmL/BJc7LgdNFlmQc9suKpliAmdSV6OqSN0Iop/Fu
        gW6j1z8p7ODlFijkyh9ouKacCWAKmUNQ7dH1oeX3og==
X-Google-Smtp-Source: ABdhPJypEhLUTyn9hcujdchfL1vVeJ8hK+oQRto1ad9VADd7QIJrxmMQcS5Dvh+kMH1BsWG0VtQ7gSJg+U5Q8KTPjlw=
X-Received: by 2002:a62:be18:0:b029:2aa:db3a:4c1d with SMTP id
 l24-20020a62be180000b02902aadb3a4c1dmr10249726pff.58.1627150774927; Sat, 24
 Jul 2021 11:19:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210601174917.1979-1-tharvey@gateworks.com> <20210601174917.1979-2-tharvey@gateworks.com>
In-Reply-To: <20210601174917.1979-2-tharvey@gateworks.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Sat, 24 Jul 2021 11:19:21 -0700
Message-ID: <CAJ+vNU3wtJ+N0XtVw6Ka+jZVKcKKmPhs+6O+dDqKQhpi3tB9ew@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: imx8mm-venice-gw700x: fix mp5416 pmic config
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
> Fix various MP5416 PMIC configurations:
>  - Update regulator names per dt-bindings
>  - ensure values fit among valid register values
>  - add required regulator-max-microamp property
>  - add regulator-always-on prop
>
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  .../dts/freescale/imx8mm-venice-gw700x.dtsi   | 56 ++++++++++++-------
>  1 file changed, 37 insertions(+), 19 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> index 512b76cd7c3b..f4eb827baed7 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> @@ -283,65 +283,83 @@
>                 reg = <0x69>;
>
>                 regulators {
> +                       /* vdd_0p95: DRAM/GPU/VPU */
>                         buck1 {
> -                               regulator-name = "vdd_0p95";
> -                               regulator-min-microvolt = <805000>;
> +                               regulator-name = "buck1";
> +                               regulator-min-microvolt = <800000>;
>                                 regulator-max-microvolt = <1000000>;
> -                               regulator-max-microamp = <2500000>;
> +                               regulator-min-microamp  = <3800000>;
> +                               regulator-max-microamp  = <6800000>;
>                                 regulator-boot-on;
> +                               regulator-always-on;
>                         };
>
> +                       /* vdd_soc */
>                         buck2 {
> -                               regulator-name = "vdd_soc";
> -                               regulator-min-microvolt = <805000>;
> +                               regulator-name = "buck2";
> +                               regulator-min-microvolt = <800000>;
>                                 regulator-max-microvolt = <900000>;
> -                               regulator-max-microamp = <1000000>;
> +                               regulator-min-microamp  = <2200000>;
> +                               regulator-max-microamp  = <5200000>;
>                                 regulator-boot-on;
> +                               regulator-always-on;
>                         };
>
> +                       /* vdd_arm */
>                         buck3_reg: buck3 {
> -                               regulator-name = "vdd_arm";
> -                               regulator-min-microvolt = <805000>;
> +                               regulator-name = "buck3";
> +                               regulator-min-microvolt = <800000>;
>                                 regulator-max-microvolt = <1000000>;
> -                               regulator-max-microamp = <2200000>;
> -                               regulator-boot-on;
> +                               regulator-min-microamp  = <3800000>;
> +                               regulator-max-microamp  = <6800000>;
> +                               regulator-always-on;
>                         };
>
> +                       /* vdd_1p8 */
>                         buck4 {
> -                               regulator-name = "vdd_1p8";
> +                               regulator-name = "buck4";
>                                 regulator-min-microvolt = <1800000>;
>                                 regulator-max-microvolt = <1800000>;
> -                               regulator-max-microamp = <500000>;
> +                               regulator-min-microamp  = <2200000>;
> +                               regulator-max-microamp  = <5200000>;
>                                 regulator-boot-on;
> +                               regulator-always-on;
>                         };
>
> +                       /* nvcc_snvs_1p8 */
>                         ldo1 {
> -                               regulator-name = "nvcc_snvs_1p8";
> +                               regulator-name = "ldo1";
>                                 regulator-min-microvolt = <1800000>;
>                                 regulator-max-microvolt = <1800000>;
> -                               regulator-max-microamp = <300000>;
>                                 regulator-boot-on;
> +                               regulator-always-on;
>                         };
>
> +                       /* vdd_snvs_0p8 */
>                         ldo2 {
> -                               regulator-name = "vdd_snvs_0p8";
> +                               regulator-name = "ldo2";
>                                 regulator-min-microvolt = <800000>;
>                                 regulator-max-microvolt = <800000>;
>                                 regulator-boot-on;
> +                               regulator-always-on;
>                         };
>
> +                       /* vdd_0p9 */
>                         ldo3 {
> -                               regulator-name = "vdd_0p95";
> -                               regulator-min-microvolt = <800000>;
> -                               regulator-max-microvolt = <800000>;
> +                               regulator-name = "ldo3";
> +                               regulator-min-microvolt = <900000>;
> +                               regulator-max-microvolt = <900000>;
>                                 regulator-boot-on;
> +                               regulator-always-on;
>                         };
>
> +                       /* vdd_1p8 */
>                         ldo4 {
> -                               regulator-name = "vdd_1p8";
> +                               regulator-name = "ldo4";
>                                 regulator-min-microvolt = <1800000>;
>                                 regulator-max-microvolt = <1800000>;
>                                 regulator-boot-on;
> +                               regulator-always-on;
>                         };
>                 };
>         };
> --
> 2.17.1
>

Shawn,

Is there anything you want changed here?

Best regards,

Tim
