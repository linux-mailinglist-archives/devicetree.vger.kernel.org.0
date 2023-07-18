Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2C9F757993
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 12:51:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230405AbjGRKvG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 06:51:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231600AbjGRKvE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 06:51:04 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56C5D10C7
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 03:51:01 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-bcb6dbc477eso4209587276.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 03:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1689677460; x=1692269460;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qrQJ3UxOgVoAawfwg9j7T2pPsm1v4sTaBHmMP3Nj5YE=;
        b=fjhhtzlc7BdaXnBDcBj8sWGXorBV9NYNTpLshb7pbMg2nttikv39Z2PjFFARxpQZTY
         8PmfXs/A9R3sCZ5dVmfxzFUStb6zwyojjtJ/y2BZAO7Hp68gaTLkKLajf0PlA+m4hD2/
         DI3UdTu8866o8GHK/4xepkn7vAoJJ5jm9+Y1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689677460; x=1692269460;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qrQJ3UxOgVoAawfwg9j7T2pPsm1v4sTaBHmMP3Nj5YE=;
        b=Pw1c5BNpOlKm0za4GWyDQKomuqNZVJF6SjehF6nkG71yO2EpkObBa1F9upg5Qx3AhY
         hTcViXp7eKV+MypIlCJ4x6NEX933v5k3+m3ooeF9ihPmzQLnMIKm1ZRQ+XQxBGGm3nDP
         4v78Kajg1tYKKliKLZoz2HtOEvFJ3KcML2dPaejDxmndx73cbMNfpCugFcD3yxKvTKeN
         eENynAjMyBNYE+d/7GUUjJi6OpSkWuNKkUvpGO9Zu+9tX2apBzGEpBJHRiDFllTwB9hJ
         FbyOqtEUHVv1Q476qrj45sX9G3j61rIW4mi5SH/u0bCOdO1NXZ84mnJ4IMXGoQgpJq4p
         1oMQ==
X-Gm-Message-State: ABy/qLbdOyZCkMJQ1VSxwVMcUBvk90Y2PZ/F3a3Mmw4jVBkmOtCNGFDt
        7MdpeideYTu6toYzqr7KG1tyuISE2OgHHPMJZJmjdQ==
X-Google-Smtp-Source: APBJJlHhs/NagGlswZYTgGnUzxbYnXLhfzaBkiHnHP045bqB4Z/YkDRs2OQp1KDd3VTeiy76FfdXcsBdaYpbz5EZs90=
X-Received: by 2002:a25:8249:0:b0:c4e:48eb:b8cb with SMTP id
 d9-20020a258249000000b00c4e48ebb8cbmr11195899ybn.40.1689677460289; Tue, 18
 Jul 2023 03:51:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230717061831.1826878-1-victor.liu@nxp.com> <20230717061831.1826878-10-victor.liu@nxp.com>
 <CAMty3ZAdzASJCz+j4iOTJ+wCXWP2Z48jFL687kxDmJLPU7T6gA@mail.gmail.com>
 <AM7PR04MB7046BF03266ED1CE21CFC3A99838A@AM7PR04MB7046.eurprd04.prod.outlook.com>
 <CAMty3ZDy7Ty2AUV+Ab60nvgBzyLB-ejM=Yij9RFyTNvJBG_EvA@mail.gmail.com> <DB8PR04MB7051B5AB0D57BCEF2FBEBAE99838A@DB8PR04MB7051.eurprd04.prod.outlook.com>
In-Reply-To: <DB8PR04MB7051B5AB0D57BCEF2FBEBAE99838A@DB8PR04MB7051.eurprd04.prod.outlook.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 18 Jul 2023 16:20:48 +0530
Message-ID: <CAMty3ZDBSwxFZM0FE2ytvvQ0PXU9WNyWwvd_DOrKpe43HH2x+w@mail.gmail.com>
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jul 18, 2023 at 3:19=E2=80=AFPM Ying Liu <victor.liu@nxp.com> wrote=
:
>
> On Tuesday, July 18, 2023 5:35 PM Jagan Teki <jagan@amarulasolutions.com>=
 wrote:
> >
> > >
> > > Hi Jagan,
> > >
> > > On Monday, July 17, 2023 2:44 PM Jagan Teki
> > <jagan@amarulasolutions.com> wrote:
> > > > On Mon, Jul 17, 2023 at 11:44=E2=80=AFAM Liu Ying <victor.liu@nxp.c=
om> wrote:
> > > > >
> > > > > Freescale i.MX93 SoC embeds a Synopsys Designware MIPI DSI host
> > > > > controller and a Synopsys Designware MIPI DPHY.  Some configurati=
ons
> > > > > and extensions to them are controlled by i.MX93 media blk-ctrl.
> > > > >
> > > > > Add a DRM bridge for i.MX93 MIPI DSI by using existing DW MIPI DS=
I
> > > > > bridge helpers and implementing i.MX93 MIPI DSI specific extensio=
ns.
> > > >
> > > > I think the better way would add compatibility to be part of existi=
ng
> > > > dw-mipi-dsi.c with specific driver data. This way it avoids all the
> > > > platform-related helpers(extensions) and makes the driver generic t=
o
> > > > all SoCs which use DW DSI IP. It would be a straightforward change =
as
> > > > the imx93 drm pipeline already supports bridge topology.
> > >
> > > The platform-related stuff is handed over to dw-mipi-dsi.c via struct
> > > dw_mipi_dsi_plat_data as an argument of dw_mipi_dsi_probe().  It look=
s
> > > ok for vendor drivers to call dw_mipi_dsi_probe() to set the platform=
-
> > related
> > > information(rockchip, meson and stm do that), like pdata.phy_ops and
> > > pdata.host_ops.
> >
> > I understand this topology of having soc-platform drivers with
> > dw-mipi-dsi bridge. What I'm suggesting is to not add a soc-platform
> > driver for imx93 instead add add support directly on dw-mipi-dsi
> > bridge.
>
> It seems that directly supporting i.MX93 MIPI DSI in dw-mipi-dsi.c is
> not feasible.  The main reason is that struct dw_mipi_dsi_plat_data
> contains phy_ops and each vendor driver provides very different
> methods for phy, while...

Cannot this phy_ops goes to PHY core somewhere around and even it is
possible to add via driver data for imx93 by untouching existing
handling? I know it is not as direct as I describe but it is worth
maintaining the driver this way to keep control of the future
soc-drivers to include in dw-mipi-dsi instead of handling platform
code separately.

>
> >
> > >
> > > dw-mipi-dsi.c is generic w/wo this patch series.
> > >
> > > Can you elaborate more about adding compatibility to be part of exist=
ing
> > > dw-mipi-dsi.c with specific driver data?  I don't see clear approach =
to do
> > > that.
> >
> > Please check the above comments, an example of samsung-dsim.c
>
> ... it seems that samsung-dsim.c uses struct samsung_dsim_driver_data to
> differential platform information and it doesn't contain any callback, wh=
ich
> means comparing to DW MIPI DSI, Samsung DSIM shows more consistency
> across vendor SoCs from HW IP/SoC integration PoV.

Yes, but is it possible to adjust struct according to DW MIPI DSI.

Thanks
Jagan.
