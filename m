Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C43333D7A7F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 18:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbhG0QFq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 12:05:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbhG0QFp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 12:05:45 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B750BC061757
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 09:05:45 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id b6so18433809pji.4
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 09:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GA0HEtCR0kWwxjLsAya2A6A9znwDVIlKBUL+riaEJPg=;
        b=1BKpt8zVuWA0lIJ83/uHMDzqVDFFKAd8PEmYXj9ywo+OndZm8aQDsAcqus5h2BwumV
         +auiUsv7NW9ZxGxKe8BYxhYY8libVQPahPsBTB7caPXwJgP7AAbNizYWqxt3Lvc1cSHf
         DitrIhDsf2U2rIUL2CIznW+1MuqO6fXSdULU1o5qnL+3QcnujJWeEimTiWkQsfY+5hLS
         mF+vp8afzOdN0x084mf7huAEUvcObpj46pM4PNu4vdFTARhTsHDkKNWeshYrKrGu5L7m
         p+VnpUzyvg/R2LFzD+jh79q0lbeBreUkMGSaE5Yyok4EGYLPfbN97fKUwUMocPKTt2lX
         B9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GA0HEtCR0kWwxjLsAya2A6A9znwDVIlKBUL+riaEJPg=;
        b=QtJwM1kQKTxtIWnwgLhv7c83SNA9sU/BXfoFva3e3hFDFHNpMrSKW6Mx4YFTeMS/Hk
         IbvVx/ewmKW1IXsQh2j4hueCgOVbPIkuojCM8nN32feHW+idGq/h/UZRSDiJ3jgDiKRf
         oVgT80ZmEqvGel8NUxU0wIfKzxc0tIAGHT+hqCYvtzqNehuoTUi20gjJQZsNjkmgag9T
         poHN4VxWkOjNpsNiq8rZjKO9Oxf9irio6Go1PCHcACFtUja0++C6VqN55djBE32o3P6m
         ihGrdeFQP8NsGN3ZFrE7IxKE3/KB3m7vtg67YnSMKymqrijlH3Jp0kOmE51+J6IZZifL
         xI9A==
X-Gm-Message-State: AOAM530s9Xr6yS8QDF2lV4TIcMWx7jmk/8rjpMRU8S0Td4UQ1xFZjvbL
        cnsbfpzNgDLx4MmXXC7/WYAyGo2eWJwBeqa7D69N0Q==
X-Google-Smtp-Source: ABdhPJzwwCUNnijZyIOmf6geL6KMdyZcwdlSjZuUfzqNOPSSqYFhXsiKKqvKywIUVlPmKpPtDxA6sPB9XEXdm8QfFAw=
X-Received: by 2002:a05:6a00:16d2:b029:300:200b:6572 with SMTP id
 l18-20020a056a0016d2b0290300200b6572mr24014481pfc.62.1627401945257; Tue, 27
 Jul 2021 09:05:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210601174917.1979-1-tharvey@gateworks.com> <20210601174917.1979-2-tharvey@gateworks.com>
 <CAJ+vNU3wtJ+N0XtVw6Ka+jZVKcKKmPhs+6O+dDqKQhpi3tB9ew@mail.gmail.com> <20210726010139.GB5901@dragon>
In-Reply-To: <20210726010139.GB5901@dragon>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Tue, 27 Jul 2021 09:05:34 -0700
Message-ID: <CAJ+vNU2_UHMBi21=w9YKvv8F6+XQGEN1HFfpLM-Q=AA_PXUXxw@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: imx8mm-venice-gw700x: fix mp5416 pmic config
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 25, 2021 at 6:01 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Sat, Jul 24, 2021 at 11:19:21AM -0700, Tim Harvey wrote:
> > On Tue, Jun 1, 2021 at 10:49 AM Tim Harvey <tharvey@gateworks.com> wrote:
> > >
> > > Fix various MP5416 PMIC configurations:
> > >  - Update regulator names per dt-bindings
> > >  - ensure values fit among valid register values
> > >  - add required regulator-max-microamp property
> > >  - add regulator-always-on prop
> > >
> > > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > > ---
> > >  .../dts/freescale/imx8mm-venice-gw700x.dtsi   | 56 ++++++++++++-------
> > >  1 file changed, 37 insertions(+), 19 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> > > index 512b76cd7c3b..f4eb827baed7 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> > > @@ -283,65 +283,83 @@
> > >                 reg = <0x69>;
> > >
> > >                 regulators {
> > > +                       /* vdd_0p95: DRAM/GPU/VPU */
> > >                         buck1 {
> > > -                               regulator-name = "vdd_0p95";
> > > -                               regulator-min-microvolt = <805000>;
> > > +                               regulator-name = "buck1";
> > > +                               regulator-min-microvolt = <800000>;
> > >                                 regulator-max-microvolt = <1000000>;
> > > -                               regulator-max-microamp = <2500000>;
> > > +                               regulator-min-microamp  = <3800000>;
> > > +                               regulator-max-microamp  = <6800000>;
> > >                                 regulator-boot-on;
> > > +                               regulator-always-on;
> > >                         };
> > >
> > > +                       /* vdd_soc */
> > >                         buck2 {
> > > -                               regulator-name = "vdd_soc";
> > > -                               regulator-min-microvolt = <805000>;
> > > +                               regulator-name = "buck2";
> > > +                               regulator-min-microvolt = <800000>;
> > >                                 regulator-max-microvolt = <900000>;
> > > -                               regulator-max-microamp = <1000000>;
> > > +                               regulator-min-microamp  = <2200000>;
> > > +                               regulator-max-microamp  = <5200000>;
> > >                                 regulator-boot-on;
> > > +                               regulator-always-on;
> > >                         };
> > >
> > > +                       /* vdd_arm */
> > >                         buck3_reg: buck3 {
> > > -                               regulator-name = "vdd_arm";
> > > -                               regulator-min-microvolt = <805000>;
> > > +                               regulator-name = "buck3";
> > > +                               regulator-min-microvolt = <800000>;
> > >                                 regulator-max-microvolt = <1000000>;
> > > -                               regulator-max-microamp = <2200000>;
> > > -                               regulator-boot-on;
> > > +                               regulator-min-microamp  = <3800000>;
> > > +                               regulator-max-microamp  = <6800000>;
> > > +                               regulator-always-on;
> > >                         };
> > >
> > > +                       /* vdd_1p8 */
> > >                         buck4 {
> > > -                               regulator-name = "vdd_1p8";
> > > +                               regulator-name = "buck4";
> > >                                 regulator-min-microvolt = <1800000>;
> > >                                 regulator-max-microvolt = <1800000>;
> > > -                               regulator-max-microamp = <500000>;
> > > +                               regulator-min-microamp  = <2200000>;
> > > +                               regulator-max-microamp  = <5200000>;
> > >                                 regulator-boot-on;
> > > +                               regulator-always-on;
> > >                         };
> > >
> > > +                       /* nvcc_snvs_1p8 */
> > >                         ldo1 {
> > > -                               regulator-name = "nvcc_snvs_1p8";
> > > +                               regulator-name = "ldo1";
> > >                                 regulator-min-microvolt = <1800000>;
> > >                                 regulator-max-microvolt = <1800000>;
> > > -                               regulator-max-microamp = <300000>;
> > >                                 regulator-boot-on;
> > > +                               regulator-always-on;
> > >                         };
> > >
> > > +                       /* vdd_snvs_0p8 */
> > >                         ldo2 {
> > > -                               regulator-name = "vdd_snvs_0p8";
> > > +                               regulator-name = "ldo2";
> > >                                 regulator-min-microvolt = <800000>;
> > >                                 regulator-max-microvolt = <800000>;
> > >                                 regulator-boot-on;
> > > +                               regulator-always-on;
> > >                         };
> > >
> > > +                       /* vdd_0p9 */
> > >                         ldo3 {
> > > -                               regulator-name = "vdd_0p95";
> > > -                               regulator-min-microvolt = <800000>;
> > > -                               regulator-max-microvolt = <800000>;
> > > +                               regulator-name = "ldo3";
> > > +                               regulator-min-microvolt = <900000>;
> > > +                               regulator-max-microvolt = <900000>;
> > >                                 regulator-boot-on;
> > > +                               regulator-always-on;
> > >                         };
> > >
> > > +                       /* vdd_1p8 */
> > >                         ldo4 {
> > > -                               regulator-name = "vdd_1p8";
> > > +                               regulator-name = "ldo4";
> > >                                 regulator-min-microvolt = <1800000>;
> > >                                 regulator-max-microvolt = <1800000>;
> > >                                 regulator-boot-on;
> > > +                               regulator-always-on;
> > >                         };
> > >                 };
> > >         };
> > > --
> > > 2.17.1
> > >
> >
> > Shawn,
> >
> > Is there anything you want changed here?
>
> Tim,
>
> Could you resend the series?  For some reason, I cannot find the
> original posting in my mailbox.
>
> Shawn

Sure... probably better anyway as I was asking you to drop one of them
from the series.

Tim
