Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11B487778C7
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 14:47:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232117AbjHJMrH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 08:47:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231739AbjHJMrG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 08:47:06 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AE9B1B4
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 05:47:03 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2681223aaacso638792a91.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 05:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691671623; x=1692276423;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oAqgGliX8VlYgEpX7PIDwcc/HDEHTBFrEfVMkI5mjRQ=;
        b=m7jJdl2o8CKem63Wfw9aLd3iGFUB+NNgzn7ir2lhFm+IlJC4lHNs+tSaBxROpCFnau
         2hqCDAV3JhjE5EiKjc6zEjnEbEea1NftJmsTpMMj74So1yLLCYyApWrqmOYZGiF/5mGZ
         3kd1v1itCpxOxj9zxcX/I77+EwdqkcJcKWhxBHgfimJKN0talDXbfb6qleORwn8o72ce
         BJI6GC4C6rXTpAihSluZom+lAjY+SvlJEKnS+NyM2PkMetzQL+xOkjZNA1+YHQQq7N5G
         59DXpK+zHc5wT812SIjQYmD4kieKYKmpm+gpE37s+01Gv/BgrLyHQVO33habWMZZyrtc
         lhRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691671623; x=1692276423;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oAqgGliX8VlYgEpX7PIDwcc/HDEHTBFrEfVMkI5mjRQ=;
        b=eiQOow0fDWR/U441OoDju6wVxic0LoscEO1jz8gZ0tKsKZFJiel6XtLTC3dswtJndP
         doGhqNHUEnfB+CSJKIPUcRIX4LqoRhU6vagQzB3OWg8mXleL4O6XK3MInGQ9kLUSOLsW
         oftJVaoafSZMiuze4dxf/G1N2H5lXjZ6TmhrUKWoLR01UIKwoMdLc6SdbEgk4X3ZPdDD
         49OTfAVLVkcAzASc36BbjgWCzEpaK1og9QKGaigTvB02EaGXEoLRQ46eTTw7RbwAOzBD
         Rhmd6THDwL7W0iRdb7VXqnZGA6AmeGG1856Met7oLthXXwKOgdmtjyLzRG8G+1f/2pOY
         1GzQ==
X-Gm-Message-State: AOJu0Yyejh5HvoT0KTgKyP/hU5ABjeMbgiGlSXkgcpHZSJUJv+BYMHMr
        nVnz40/thhn3Ec5nGKYL+nsnLNqmrh8etDbxGFovMGQj
X-Google-Smtp-Source: AGHT+IEbQSX9JP4pL0gzwLBn80+5RCwSDiE9MyOAWMwovL6rGS7fmwhiLSJPrgRmfYYuJrVctj1152FxaOcBsSc+L68=
X-Received: by 2002:a17:90b:154e:b0:263:161c:9e9c with SMTP id
 ig14-20020a17090b154e00b00263161c9e9cmr2764958pjb.12.1691671622457; Thu, 10
 Aug 2023 05:47:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230810001320.626744-1-marex@denx.de> <20230810074227.i62ybnbpcavsijum@pengutronix.de>
In-Reply-To: <20230810074227.i62ybnbpcavsijum@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Thu, 10 Aug 2023 07:46:51 -0500
Message-ID: <CAHCN7xKaYS_=jSxuEVNkieMe65KaJrBr+DOFWGa+8hukO8xpmQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: Improve VPU clock configuration
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Frank Li <Frank.Li@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 10, 2023 at 2:42=E2=80=AFAM Marco Felsch <m.felsch@pengutronix.=
de> wrote:
>
> Hi Marek,
>
> On 23-08-10, Marek Vasut wrote:
> > Update VPU clock according to reference manual to improve performance.
> > i.MX 8M Plus Applications Processor Reference Manual, Rev. 1, 06/2021
> >
> > Table 5-1. Clock Root Table (continued) reads as follows:
> > Clock Root ............... Max Freq (MHz)
> > VPU_BUS_CLK_ROOT ......... 800
> > VPU_G1_CLK_ROOT .......... 800
> > VPU_G2_CLK_ROOT .......... 700
> >
> > 5.1.5.1 Input Clocks
> > Input Clock .............. Frequency (MHz)
> > VPU_PLL_CLK .............. 800
>
> Acoording the datasheet not the reference manual, this would be the
> overdrive mode now. Can we ensure that VDD_SOC is in overdrive state?

Shoot, I explicitly searched the TRM for overdrive, because I remember
this coming before with either the 8MQ or 8MM, but I couldn't
remember.  I forgot all about the actual datasheet.

The operating-points for the various voltage rails would have to
increase to get this into overdrive mode.  I think this would have to
be done on a per-board basis if memory serves when this came up
before.  :-(

adam
>
> Regards,
>   Marco
>
> > The VPU G1 and VPU bus is now supplied from PLL1 which provides 800 MHz
> > on one of its outputs, the VPU G2 is supplied from VPU PLL with 700 MHz
> > which is a perfect fit for this setup. This also matches the NXP kernel
> > fork configuration.
> >
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > ---
> > Cc: Adam Ford <aford173@gmail.com>
> > Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> > Cc: Conor Dooley <conor+dt@kernel.org>
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: Frank Li <Frank.Li@nxp.com>
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Lucas Stach <l.stach@pengutronix.de>
> > Cc: Marek Vasut <marex@denx.de>
> > Cc: NXP Linux Team <linux-imx@nxp.com>
> > Cc: Peng Fan <peng.fan@nxp.com>
> > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > Cc: Richard Cochran <richardcochran@gmail.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boo=
t/dts/freescale/imx8mp.dtsi
> > index 6f2f50e1639c3..77974bd6da63a 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > @@ -1928,8 +1928,8 @@ vpu_g1: video-codec@38300000 {
> >                       interrupts =3D <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> >                       clocks =3D <&clk IMX8MP_CLK_VPU_G1_ROOT>;
> >                       assigned-clocks =3D <&clk IMX8MP_CLK_VPU_G1>;
> > -                     assigned-clock-parents =3D <&clk IMX8MP_VPU_PLL_O=
UT>;
> > -                     assigned-clock-rates =3D <600000000>;
> > +                     assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL1_=
800M>;
> > +                     assigned-clock-rates =3D <800000000>;
> >                       power-domains =3D <&vpumix_blk_ctrl IMX8MP_VPUBLK=
_PD_G1>;
> >               };
> >
> > @@ -1939,8 +1939,8 @@ vpu_g2: video-codec@38310000 {
> >                       interrupts =3D <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> >                       clocks =3D <&clk IMX8MP_CLK_VPU_G2_ROOT>;
> >                       assigned-clocks =3D <&clk IMX8MP_CLK_VPU_G2>;
> > -                     assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL2_=
1000M>;
> > -                     assigned-clock-rates =3D <500000000>;
> > +                     assigned-clock-parents =3D <&clk IMX8MP_VPU_PLL_O=
UT>;
> > +                     assigned-clock-rates =3D <700000000>;
> >                       power-domains =3D <&vpumix_blk_ctrl IMX8MP_VPUBLK=
_PD_G2>;
> >               };
> >
> > @@ -1956,8 +1956,8 @@ vpumix_blk_ctrl: blk-ctrl@38330000 {
> >                                <&clk IMX8MP_CLK_VPU_VC8KE_ROOT>;
> >                       clock-names =3D "g1", "g2", "vc8000e";
> >                       assigned-clocks =3D <&clk IMX8MP_CLK_VPU_BUS>, <&=
clk IMX8MP_VPU_PLL>;
> > -                     assigned-clock-parents =3D <&clk IMX8MP_VPU_PLL_O=
UT>;
> > -                     assigned-clock-rates =3D <600000000>, <600000000>=
;
> > +                     assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL1_=
800M>;
> > +                     assigned-clock-rates =3D <800000000>, <700000000>=
;
> >                       interconnects =3D <&noc IMX8MP_ICM_VPU_G1 &noc IM=
X8MP_ICN_VIDEO>,
> >                                       <&noc IMX8MP_ICM_VPU_G2 &noc IMX8=
MP_ICN_VIDEO>,
> >                                       <&noc IMX8MP_ICM_VPU_H1 &noc IMX8=
MP_ICN_VIDEO>;
> > --
> > 2.40.1
> >
> >
> >
