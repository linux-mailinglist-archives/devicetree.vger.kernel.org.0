Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A263B3D50D3
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 03:01:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230152AbhGZAVR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jul 2021 20:21:17 -0400
Received: from mail.kernel.org ([198.145.29.99]:32780 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230075AbhGZAVQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 25 Jul 2021 20:21:16 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9B9D360E09;
        Mon, 26 Jul 2021 01:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627261306;
        bh=PTOuMxWlEFBoK2P+EnnwEleedr8jnM9pcOAYnWVp1Es=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fwloR04hIG2PrRzWxypmI+xrBdy7xjRmksaanuaoHtxAXl0jhKimi+gdOWGZkqxfe
         nwSeAqW1ojfRIERLLzr+z7FFBpfyuW3uvxreSk7nyqg3qRfKS4Z2eFJygdtMfnJlmL
         floEtjOnOOPPtyQw8rDaUuRonwqPbCDZY9LUJz3wJZ5YAILCNTa0Jp/ggpF1AgzAeK
         vFuVxAShfJ39riyrotcawXeWqAtQFG3CiWt/olYXdruFDa5UVYtbBdcJD35m38lkqG
         mOhriv9QcGk7gDNjdoXbwipYPFwTaln/wkQWH3JQmc3Q3dmsJlg60Uawcr/fHKQv8G
         5R4QXyGdNHy8w==
Date:   Mon, 26 Jul 2021 09:01:40 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/4] arm64: dts: imx8mm-venice-gw700x: fix mp5416 pmic
 config
Message-ID: <20210726010139.GB5901@dragon>
References: <20210601174917.1979-1-tharvey@gateworks.com>
 <20210601174917.1979-2-tharvey@gateworks.com>
 <CAJ+vNU3wtJ+N0XtVw6Ka+jZVKcKKmPhs+6O+dDqKQhpi3tB9ew@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ+vNU3wtJ+N0XtVw6Ka+jZVKcKKmPhs+6O+dDqKQhpi3tB9ew@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 24, 2021 at 11:19:21AM -0700, Tim Harvey wrote:
> On Tue, Jun 1, 2021 at 10:49 AM Tim Harvey <tharvey@gateworks.com> wrote:
> >
> > Fix various MP5416 PMIC configurations:
> >  - Update regulator names per dt-bindings
> >  - ensure values fit among valid register values
> >  - add required regulator-max-microamp property
> >  - add regulator-always-on prop
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > ---
> >  .../dts/freescale/imx8mm-venice-gw700x.dtsi   | 56 ++++++++++++-------
> >  1 file changed, 37 insertions(+), 19 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> > index 512b76cd7c3b..f4eb827baed7 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> > @@ -283,65 +283,83 @@
> >                 reg = <0x69>;
> >
> >                 regulators {
> > +                       /* vdd_0p95: DRAM/GPU/VPU */
> >                         buck1 {
> > -                               regulator-name = "vdd_0p95";
> > -                               regulator-min-microvolt = <805000>;
> > +                               regulator-name = "buck1";
> > +                               regulator-min-microvolt = <800000>;
> >                                 regulator-max-microvolt = <1000000>;
> > -                               regulator-max-microamp = <2500000>;
> > +                               regulator-min-microamp  = <3800000>;
> > +                               regulator-max-microamp  = <6800000>;
> >                                 regulator-boot-on;
> > +                               regulator-always-on;
> >                         };
> >
> > +                       /* vdd_soc */
> >                         buck2 {
> > -                               regulator-name = "vdd_soc";
> > -                               regulator-min-microvolt = <805000>;
> > +                               regulator-name = "buck2";
> > +                               regulator-min-microvolt = <800000>;
> >                                 regulator-max-microvolt = <900000>;
> > -                               regulator-max-microamp = <1000000>;
> > +                               regulator-min-microamp  = <2200000>;
> > +                               regulator-max-microamp  = <5200000>;
> >                                 regulator-boot-on;
> > +                               regulator-always-on;
> >                         };
> >
> > +                       /* vdd_arm */
> >                         buck3_reg: buck3 {
> > -                               regulator-name = "vdd_arm";
> > -                               regulator-min-microvolt = <805000>;
> > +                               regulator-name = "buck3";
> > +                               regulator-min-microvolt = <800000>;
> >                                 regulator-max-microvolt = <1000000>;
> > -                               regulator-max-microamp = <2200000>;
> > -                               regulator-boot-on;
> > +                               regulator-min-microamp  = <3800000>;
> > +                               regulator-max-microamp  = <6800000>;
> > +                               regulator-always-on;
> >                         };
> >
> > +                       /* vdd_1p8 */
> >                         buck4 {
> > -                               regulator-name = "vdd_1p8";
> > +                               regulator-name = "buck4";
> >                                 regulator-min-microvolt = <1800000>;
> >                                 regulator-max-microvolt = <1800000>;
> > -                               regulator-max-microamp = <500000>;
> > +                               regulator-min-microamp  = <2200000>;
> > +                               regulator-max-microamp  = <5200000>;
> >                                 regulator-boot-on;
> > +                               regulator-always-on;
> >                         };
> >
> > +                       /* nvcc_snvs_1p8 */
> >                         ldo1 {
> > -                               regulator-name = "nvcc_snvs_1p8";
> > +                               regulator-name = "ldo1";
> >                                 regulator-min-microvolt = <1800000>;
> >                                 regulator-max-microvolt = <1800000>;
> > -                               regulator-max-microamp = <300000>;
> >                                 regulator-boot-on;
> > +                               regulator-always-on;
> >                         };
> >
> > +                       /* vdd_snvs_0p8 */
> >                         ldo2 {
> > -                               regulator-name = "vdd_snvs_0p8";
> > +                               regulator-name = "ldo2";
> >                                 regulator-min-microvolt = <800000>;
> >                                 regulator-max-microvolt = <800000>;
> >                                 regulator-boot-on;
> > +                               regulator-always-on;
> >                         };
> >
> > +                       /* vdd_0p9 */
> >                         ldo3 {
> > -                               regulator-name = "vdd_0p95";
> > -                               regulator-min-microvolt = <800000>;
> > -                               regulator-max-microvolt = <800000>;
> > +                               regulator-name = "ldo3";
> > +                               regulator-min-microvolt = <900000>;
> > +                               regulator-max-microvolt = <900000>;
> >                                 regulator-boot-on;
> > +                               regulator-always-on;
> >                         };
> >
> > +                       /* vdd_1p8 */
> >                         ldo4 {
> > -                               regulator-name = "vdd_1p8";
> > +                               regulator-name = "ldo4";
> >                                 regulator-min-microvolt = <1800000>;
> >                                 regulator-max-microvolt = <1800000>;
> >                                 regulator-boot-on;
> > +                               regulator-always-on;
> >                         };
> >                 };
> >         };
> > --
> > 2.17.1
> >
> 
> Shawn,
> 
> Is there anything you want changed here?

Tim,

Could you resend the series?  For some reason, I cannot find the
original posting in my mailbox.

Shawn
