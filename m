Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17D39768722
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 20:38:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229651AbjG3Sip (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 14:38:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjG3Sio (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 14:38:44 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA2E810EB
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 11:38:42 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-583d63ca1e9so41650467b3.1
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 11:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1690742322; x=1691347122;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=roA0tWjvqavbQ4acl8taxufGVjwHX3uQinPIePa4MD0=;
        b=cLHER+FLjgqiPZAD9LL3+9esSOQkimanV8m3rX8/an4cSvj4XpZL0SE4EK4IWzQLPR
         XIbPlWJN6lNUGs4HIjA0ETKa+fjhu4wJmDxzruMQzHyP+jvdCOtMg5SjOcLsW7jMQDnB
         G7ymQY0bigZS4Y7XjKaLSoP9lXU6k8D08I6B8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690742322; x=1691347122;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=roA0tWjvqavbQ4acl8taxufGVjwHX3uQinPIePa4MD0=;
        b=VCMzKT0zSy25u09KaZvzlMxCUZh11qz8IDC7SS6qlSnD2Er8YhtTosn2bOy0S6Mb+Z
         Ns4p2yWg1poxq9KgOdXRKNqd9MjRYl6lX7oQlqWgOBGCIbaVR/WD/8ewx43RRxl6SSoj
         sv5vPrMfOG2ZBO36mck+qe4ROdMA/HKbI0lemc1bcv1GoXG3jvUsSZz488TvwuvYSusw
         1Wt4QVp5iZgRtsVAQhuAeExoLO4bmxZElD10dB38U4hS+H0K5HWhBgdX4RmTE3L7QQrs
         DrYSH+srdzgLSKc0mfWDXaNc+jszKNnLJhpCAybfGCCO6Oin1MA7YC8DvtSw4H6sAefw
         DbzQ==
X-Gm-Message-State: ABy/qLYLixVKcJVToXFqydP6GN1XTmhTPsGQCN1ClJhCWfODvpwtJ28S
        U0dJk+Gp4bA+pKUjnSHsWF5MjBc/V8DL5LDIwxvNaQ==
X-Google-Smtp-Source: APBJJlEDgCTEsMELmfhJau1t59rKk1J6hEIaKoeDsyL7smaHNlccmT8Uj3eU+lgaqACKVUifo3s4FoAFooRnyuKYaRk=
X-Received: by 2002:a81:8381:0:b0:577:dddb:c289 with SMTP id
 t123-20020a818381000000b00577dddbc289mr8487976ywf.7.1690742322158; Sun, 30
 Jul 2023 11:38:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230717061831.1826878-1-victor.liu@nxp.com> <20230717061831.1826878-10-victor.liu@nxp.com>
 <CAMty3ZAdzASJCz+j4iOTJ+wCXWP2Z48jFL687kxDmJLPU7T6gA@mail.gmail.com>
 <AM7PR04MB7046BF03266ED1CE21CFC3A99838A@AM7PR04MB7046.eurprd04.prod.outlook.com>
 <CAMty3ZDy7Ty2AUV+Ab60nvgBzyLB-ejM=Yij9RFyTNvJBG_EvA@mail.gmail.com>
 <DB8PR04MB7051B5AB0D57BCEF2FBEBAE99838A@DB8PR04MB7051.eurprd04.prod.outlook.com>
 <CAMty3ZDBSwxFZM0FE2ytvvQ0PXU9WNyWwvd_DOrKpe43HH2x+w@mail.gmail.com> <AM7PR04MB7046B44596C4C331D01F88479839A@AM7PR04MB7046.eurprd04.prod.outlook.com>
In-Reply-To: <AM7PR04MB7046B44596C4C331D01F88479839A@AM7PR04MB7046.eurprd04.prod.outlook.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Mon, 31 Jul 2023 00:08:30 +0530
Message-ID: <CAMty3ZBmPU9CvbjDt-q_bJbUoWm-SHoDTtzF6gYvpCE0R-A+sw@mail.gmail.com>
Subject: Re: [PATCH 9/9] drm/bridge: imx: Add i.MX93 MIPI DSI support
To:     Ying Liu <victor.liu@nxp.com>
Cc:     "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "rfoss@kernel.org" <rfoss@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "jonas@kwiboo.se" <jonas@kwiboo.se>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "Laurent.pinchart@ideasonboard.com" 
        <Laurent.pinchart@ideasonboard.com>,
        "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 19, 2023 at 2:05=E2=80=AFPM Ying Liu <victor.liu@nxp.com> wrote=
:
>
> On Tuesday, July 18, 2023 6:51 PM Jagan Teki <jagan@amarulasolutions.com>=
 wrote:
> >
> > Hi,
>
> Hi,
>
> >
> > On Tue, Jul 18, 2023 at 3:19=E2=80=AFPM Ying Liu <victor.liu@nxp.com> w=
rote:
> > >
> > > On Tuesday, July 18, 2023 5:35 PM Jagan Teki
> > <jagan@amarulasolutions.com> wrote:
> > > >
> > > > >
> > > > > Hi Jagan,
> > > > >
> > > > > On Monday, July 17, 2023 2:44 PM Jagan Teki
> > > > <jagan@amarulasolutions.com> wrote:
> > > > > > On Mon, Jul 17, 2023 at 11:44=E2=80=AFAM Liu Ying <victor.liu@n=
xp.com>
> > wrote:
> > > > > > >
> > > > > > > Freescale i.MX93 SoC embeds a Synopsys Designware MIPI DSI ho=
st
> > > > > > > controller and a Synopsys Designware MIPI DPHY.  Some
> > configurations
> > > > > > > and extensions to them are controlled by i.MX93 media blk-ctr=
l.
> > > > > > >
> > > > > > > Add a DRM bridge for i.MX93 MIPI DSI by using existing DW MIP=
I DSI
> > > > > > > bridge helpers and implementing i.MX93 MIPI DSI specific
> > extensions.
> > > > > >
> > > > > > I think the better way would add compatibility to be part of ex=
isting
> > > > > > dw-mipi-dsi.c with specific driver data. This way it avoids all=
 the
> > > > > > platform-related helpers(extensions) and makes the driver gener=
ic to
> > > > > > all SoCs which use DW DSI IP. It would be a straightforward cha=
nge as
> > > > > > the imx93 drm pipeline already supports bridge topology.
> > > > >
> > > > > The platform-related stuff is handed over to dw-mipi-dsi.c via st=
ruct
> > > > > dw_mipi_dsi_plat_data as an argument of dw_mipi_dsi_probe().  It
> > looks
> > > > > ok for vendor drivers to call dw_mipi_dsi_probe() to set the plat=
form-
> > > > related
> > > > > information(rockchip, meson and stm do that), like pdata.phy_ops =
and
> > > > > pdata.host_ops.
> > > >
> > > > I understand this topology of having soc-platform drivers with
> > > > dw-mipi-dsi bridge. What I'm suggesting is to not add a soc-platfor=
m
> > > > driver for imx93 instead add add support directly on dw-mipi-dsi
> > > > bridge.
> > >
> > > It seems that directly supporting i.MX93 MIPI DSI in dw-mipi-dsi.c is
> > > not feasible.  The main reason is that struct dw_mipi_dsi_plat_data
> > > contains phy_ops and each vendor driver provides very different
> > > methods for phy, while...
> >
> > Cannot this phy_ops goes to PHY core somewhere around and even it is
> > possible to add via driver data for imx93 by untouching existing
> > handling? I know it is not as direct as I describe but it is worth
> > maintaining the driver this way to keep control of the future
> > soc-drivers to include in dw-mipi-dsi instead of handling platform
> > code separately.
>
> Like I said, each vendor driver provides very different methods for phy.
> The reason is that phy IPs are different and SoC integration things are
> handled via struct dw_mipi_dsi_phy_ops.  Meson calls devm_phy_get()
> to get a phy.  Rockchip calls devm_phy_create() to create a phy.  Meson,
> rockchip and stm have their own struct dw_mipi_dsi_phy_ops
> implementations, same to i.MX93.  Different pixel format control is
> implemented in meson's and i.MX93's ->init() callback. Meson additionally
> handles clocks in ->init() callback.
>
> Generally speaking, it's a no-go to put phy_ops into PHY core for all the
> vendors, IMHO.
>
> In particular, i.MX93 MIPI DPHY's PLL can be fully controlled by media
> blk-ctrl(as a syscon) thru the PLL's SoC control interface, while PHY
> registers can be controlled by DW MIPI DSI testdin/out control interface
> alternatively including a part of the PLL registers.  So, adding a PHY
> driver for i.MX93 MIPI DPHY doesn't make sense since the PLL controlled
> by media blk-ctrl doesn't constitute a PHY.  Instead, dw_mipi_dsi_phy_ops
> may cover all the PHY control well.
>
> From my PoV, w/wo this series, dw-mipi-dsi.c looks fine to keep being
> generic and easy to maintain.  All vendor drivers do is to handle platfor=
m
> specific stuff, which is good.

Thanks for the explanation. I agreed with on you most of the points
from the perspective of PoV which are difficult to FIT into a common
bridge. However, I'm still believing that the having bridge does only
the bridge job, and keeping the PHY or other PoV-specific stuff on
respective driver subsystems would be great synergy for the bridge
drivers or any common IP driver's point-of-view.

Anyway, I might not control i.MX93 PoV stuff, but I can try on it for
the new DSI which uses this IP, and keep you in CC if it is a possible
land in the near future.

>
> >
> > >
> > > >
> > > > >
> > > > > dw-mipi-dsi.c is generic w/wo this patch series.
> > > > >
> > > > > Can you elaborate more about adding compatibility to be part of
> > existing
> > > > > dw-mipi-dsi.c with specific driver data?  I don't see clear appro=
ach to do
> > > > > that.
> > > >
> > > > Please check the above comments, an example of samsung-dsim.c
> > >
> > > ... it seems that samsung-dsim.c uses struct samsung_dsim_driver_data=
 to
> > > differential platform information and it doesn't contain any callback=
, which
> > > means comparing to DW MIPI DSI, Samsung DSIM shows more consistency
> > > across vendor SoCs from HW IP/SoC integration PoV.
> >
> > Yes, but is it possible to adjust struct according to DW MIPI DSI.
>
> Looking at the vendor drivers, they show a lot diversity, which cannot be
> parameterized into a struct like the samsung dsim driver does.
>
> struct dw_mipi_dsi_plat_data hides all platform specific information from
> dw-mipi-dsi.c well, IMHO.

Okay.

Thanks,
Jagan.
