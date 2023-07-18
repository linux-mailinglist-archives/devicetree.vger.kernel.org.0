Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2E0875782B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 11:35:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbjGRJfO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 05:35:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbjGRJfN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 05:35:13 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C721D1BE
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 02:35:11 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-579ed2829a8so51899207b3.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 02:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1689672911; x=1692264911;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZuZrSAvPEUbJd5OtEiU1JarAUP79SOnBKIQtn60jRg=;
        b=beDAomZeLIweO6s7t3IqKAXxXYKPTYoFj9fnhLBgXGFT0V5h2XGwG9aGdUy7NOvLOX
         oUl2PHLF6HdJooyRsHAL9jF2f/DluVwJ+aQ/wAu/JsZfPhiVpfNpTO+ZGISV/JKrS1F6
         IsDvVj+IgAceads0hrKYPsbT6O5fThAt2fSoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689672911; x=1692264911;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tZuZrSAvPEUbJd5OtEiU1JarAUP79SOnBKIQtn60jRg=;
        b=JIIdfkvUslRL6/xXsC/KjGY7vwg2ounOQuCHbiKyNdKP3VX0WQQY4bgRhzHjLeTgXJ
         VW6PN/hHZORCbprWtKNwYkU//+WW47yUtj1BgIbbw0oVpOLy9XQ+aGKuxsfBr8CbXP/W
         DLRZMuakZHvtenKaxUkXaiXl43jZ6JrR9EZWC1o0xr8fOC2lrSyVIhjFlpT3ojctgiZ+
         VGe/YCm79tdpX40vQK2uva1hJYZ09PcyfV3g7tJi4MLIe1Yd7sGoeFvMxDmAiEe48pvS
         iFHhH/m+cES8qNCCKaPR35LKppeMifzmo+e3CwAjDITdDe+kvLNP24JH3M1eaDndn741
         XHmw==
X-Gm-Message-State: ABy/qLYFEfcFXbu3odgq6H4ENH4dwMGBaXtRUboiGGB+BIWn2VfVgyax
        vAMg9g014e4kAHTpvqlBVTYAG3nJznMXu1o9z7kTfw==
X-Google-Smtp-Source: APBJJlF/MxnGn8lFNIRQU/KngoAwMjYwViZydcOi2ql72YhnbZ9RzDHMFUqc3oHkB1xUdPZ6H35xN/bkucaHK93q1No=
X-Received: by 2002:a81:5e85:0:b0:57a:2e83:4daf with SMTP id
 s127-20020a815e85000000b0057a2e834dafmr15563029ywb.32.1689672911028; Tue, 18
 Jul 2023 02:35:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230717061831.1826878-1-victor.liu@nxp.com> <20230717061831.1826878-10-victor.liu@nxp.com>
 <CAMty3ZAdzASJCz+j4iOTJ+wCXWP2Z48jFL687kxDmJLPU7T6gA@mail.gmail.com> <AM7PR04MB7046BF03266ED1CE21CFC3A99838A@AM7PR04MB7046.eurprd04.prod.outlook.com>
In-Reply-To: <AM7PR04MB7046BF03266ED1CE21CFC3A99838A@AM7PR04MB7046.eurprd04.prod.outlook.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 18 Jul 2023 15:04:59 +0530
Message-ID: <CAMty3ZDy7Ty2AUV+Ab60nvgBzyLB-ejM=Yij9RFyTNvJBG_EvA@mail.gmail.com>
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
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 18, 2023 at 8:28=E2=80=AFAM Ying Liu <victor.liu@nxp.com> wrote=
:
>
> Hi Jagan,
>
> On Monday, July 17, 2023 2:44 PM Jagan Teki <jagan@amarulasolutions.com> =
wrote:
> > On Mon, Jul 17, 2023 at 11:44=E2=80=AFAM Liu Ying <victor.liu@nxp.com> =
wrote:
> > >
> > > Freescale i.MX93 SoC embeds a Synopsys Designware MIPI DSI host
> > > controller and a Synopsys Designware MIPI DPHY.  Some configurations
> > > and extensions to them are controlled by i.MX93 media blk-ctrl.
> > >
> > > Add a DRM bridge for i.MX93 MIPI DSI by using existing DW MIPI DSI
> > > bridge helpers and implementing i.MX93 MIPI DSI specific extensions.
> >
> > I think the better way would add compatibility to be part of existing
> > dw-mipi-dsi.c with specific driver data. This way it avoids all the
> > platform-related helpers(extensions) and makes the driver generic to
> > all SoCs which use DW DSI IP. It would be a straightforward change as
> > the imx93 drm pipeline already supports bridge topology.
>
> The platform-related stuff is handed over to dw-mipi-dsi.c via struct
> dw_mipi_dsi_plat_data as an argument of dw_mipi_dsi_probe().  It looks
> ok for vendor drivers to call dw_mipi_dsi_probe() to set the platform-rel=
ated
> information(rockchip, meson and stm do that), like pdata.phy_ops and
> pdata.host_ops.

I understand this topology of having soc-platform drivers with
dw-mipi-dsi bridge. What I'm suggesting is to not add a soc-platform
driver for imx93 instead add add support directly on dw-mipi-dsi
bridge.

>
> dw-mipi-dsi.c is generic w/wo this patch series.
>
> Can you elaborate more about adding compatibility to be part of existing
> dw-mipi-dsi.c with specific driver data?  I don't see clear approach to d=
o
> that.

Please check the above comments, an example of samsung-dsim.c

Thanks,
Jagan.
