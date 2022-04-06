Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE55B4F6835
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:58:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239316AbiDFRoD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:44:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239378AbiDFRno (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:43:44 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A03C312149
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 09:27:14 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nc8Ur-0006hd-Vs; Wed, 06 Apr 2022 18:27:06 +0200
Message-ID: <628350a25aa9943bf731a24ac4db364412c6b8c7.camel@pengutronix.de>
Subject: Re: [PATCH v0 00/10] i.MX8MP HDMI support
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        DRI mailing list <dri-devel@lists.freedesktop.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Date:   Wed, 06 Apr 2022 18:27:03 +0200
In-Reply-To: <CAJ+vNU3pxSiAX5_fmLy9ztUZ4-dvm5GHdUnucWZwWcQ539dT4w@mail.gmail.com>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
         <CAJ+vNU3pxSiAX5_fmLy9ztUZ4-dvm5GHdUnucWZwWcQ539dT4w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tim,

Am Mittwoch, dem 06.04.2022 um 09:10 -0700 schrieb Tim Harvey:
> On Wed, Apr 6, 2022 at 9:01 AM Lucas Stach <l.stach@pengutronix.de> wrote:
> > 
> > Hi all,
> > 
> > this adds support for the HDMI output pipeline on the i.MX8MP.
> > It currently depends on the i.MX8MP HDMI power domain series [1]
> > and support for the new LCDIF [2] in the i.MX8MP. I guess the
> > implementation presented here also still has some warts that
> > require fixing and the individual patches most likely need to go
> > through different maintainer trees, so I don't expect this series
> > to be applied right away.
> > 
> > However this complete series should allow people to test it more
> > easily and provide feedback on the implementation with the full
> > picture available.
> > 
> > Compared to downstream this implementation actually allows to
> > power down the separate HDMI PHY power domain when the display
> > is inactive or no HDMI cable is connected.
> > 
> > Regards,
> > Lucas
> > 
> > [1] https://lore.kernel.org/all/20220406153402.1265474-1-l.stach@pengutronix.de/
> > [2] https://lore.kernel.org/all/20220322142853.125880-1-marex@denx.de/
> > 
> > Lucas Stach (10):
> >   drm/bridge: dw-hdmi: add low-active PHY reset
> >   dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
> >   drm/imx: add bridge wrapper driver for i.MX8MP DWC HDMI
> >   dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
> >   drm/imx: add driver for HDMI TX Parallel Video Interface
> >   dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
> >   phy: freescale: add Samsung HDMI PHY
> >   arm64: dts: imx8mp: add HDMI irqsteer
> >   arm64: dts: imx8mp: add HDMI display pipeline
> >   arm64: dts: imx8mp-evk: enable HDMI
> > 
> >  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      |   83 ++
> >  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml |   72 ++
> >  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
> >  arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |   19 +
> >  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |   93 ++
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |    7 +
> >  drivers/gpu/drm/imx/Kconfig                   |    1 +
> >  drivers/gpu/drm/imx/Makefile                  |    2 +
> >  drivers/gpu/drm/imx/bridge/Kconfig            |   18 +
> >  drivers/gpu/drm/imx/bridge/Makefile           |    4 +
> >  drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c     |  209 +++
> >  drivers/gpu/drm/imx/bridge/imx-hdmi.c         |  128 ++
> >  drivers/phy/freescale/Kconfig                 |    7 +
> >  drivers/phy/freescale/Makefile                |    1 +
> >  drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1145 +++++++++++++++++
> >  include/drm/bridge/dw_hdmi.h                  |    1 +
> >  16 files changed, 1852 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> >  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> >  create mode 100644 drivers/gpu/drm/imx/bridge/Kconfig
> >  create mode 100644 drivers/gpu/drm/imx/bridge/Makefile
> >  create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c
> >  create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi.c
> >  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> > 
> > --
> > 2.30.2
> > 
> 
> Lucas,
> 
> Thanks for consolidating this - It's been difficult to try to merge
> these for testing.
> 
> I still have not been able to apply these to origin/master or
> imx/master - what are you basing off of here?

This HDMI series depends on the HDMI blk-ctrl ([1] in this cover
letter), which in turn depends on the GPCv2 i.MX8MP support series ([1]
in the HDMI blk-ctrl cover letter), which should apply cleanly or with
minimal fuzz to 5.18-rc1.

Regards,
Lucas

