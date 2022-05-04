Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B8CC5199B3
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 10:27:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231773AbiEDIas (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 04:30:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235350AbiEDIar (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 04:30:47 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E4CA21E1B
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 01:27:11 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nmALf-000660-BV; Wed, 04 May 2022 10:27:03 +0200
Message-ID: <8c29464ef118aae8a1ac2af28d4906a346b6028a.camel@pengutronix.de>
Subject: Re: [PATCH v4 00/11] consolidated i.MX8MP HSIO/MEDIA/HDMI blk-ctrl
 series
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Paul Elder <paul.elder@ideasonboard.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date:   Wed, 04 May 2022 10:27:01 +0200
In-Reply-To: <20220406153402.1265474-1-l.stach@pengutronix.de>
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
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

Hi Shawn,

there were some comments about the implementation of the HDMI blk-ctrl,
which I don't know in which way to resolve, yet. In the meantime it
would be very helpful if you could take all but the last patch of this
series into your tree. They are all reviewed and tested and starting to
block further work on some parts of the i.MX8MP bringup.

Regards,
Lucas

Am Mittwoch, dem 06.04.2022 um 17:33 +0200 schrieb Lucas Stach:
> Hi all,
> 
> this series adds a bunch more power domains that integrate with the blk-ctrls
> to the i.MX8MP. It depends on the i.MX8MP GPCv2 support series posted in [1].
> 
> The HSIO blk-ctrl bindings are already applied upstream, so they are not part
> of this series anymore. The DT description hasn't changed, but the
> implementation of the HSIO blk-ctrl driver is reworked quite a bit from the
> last round of patches, so I've dropped the review/tested-by tags.
> 
> I've also picked up the pretty thoroughly reviewed and tested MEDIA blk-ctrl
> patches from Paul and Laurent into this series, as they would conflict with
> other patches from this series when applied separately. This should hopefully
> make it easier for Shawn to pick things up.
> 
> Finally this now also adds the HDMI blk-ctrl, not part of any previous series.
> This one is pretty complex and the documentation in the reference manual
> appears to be inaccurate. I found at least the following issues:
> 
> 1. GLOBAL_XTAL24M_CLK_EN does not actually gate the 24MHz reference clock,
> the PHY PLL happily locks and provides correct clocks without this clock being
> ungated. It seems to gate some clock input of the HDMI TX controller instead,
> register access to this controller fails without this clock.
> 
> 2. HDMI_RTX_RESET_CTL0 bits 6 and 7 are marked as "reserved" in the manual,
> but they are actually required to be configured. Bit 6 seems to keep something
> in the display pixel clock path in inactive state and Bit 7 seems to reset
> the HDMI TX i2c controller.
> 
> The HDMI blk-ctrl part is tested quite extensively with a PoC HDMI support
> patchset, which I will send out in a bit, so I'm pretty sure that the
> support as implemented is working. I've put the patches last in the series
> in case that this turns out to be controversial, so the other patches can
> be applied independent from the HDMI support.
> 
> Regards,
> Lucas
> 
> [1] https://lore.kernel.org/all/20220330104620.3600159-1-l.stach@pengutronix.de/
> 
> 
> Laurent Pinchart (1):
>   arm64: dts: imx8mp: Add MEDIAMIX power domains
> 
> Lucas Stach (7):
>   soc: imx: imx8m-blk-ctrl: set power device name
>   soc: imx: add i.MX8MP HSIO blk-ctrl
>   dt-bindings: power: imx8mp: add defines for HDMI blk-ctrl domains
>   dt-bindings: soc: add binding for i.MX8MP HDMI blk-ctrl
>   soc: imx: add i.MX8MP HDMI blk-ctrl
>   arm64: dts: imx8mp: add HSIO power-domains
>   arm64: dts: imx8mp: add HDMI power-domains
> 
> Paul Elder (3):
>   dt-bindings: soc: Add i.MX8MP media block control DT bindings
>   soc: imx: imx8m-blk-ctrl: Add i.MX8MP media blk-ctrl
>   arm64: dts: imx8mp: Add MEDIA_BLK_CTRL
> 
>  .../soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml     |  84 +++
>  .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 104 +++
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 153 +++-
>  drivers/soc/imx/Makefile                      |   1 +
>  drivers/soc/imx/imx8m-blk-ctrl.c              | 124 +++-
>  drivers/soc/imx/imx8mp-blk-ctrl.c             | 696 ++++++++++++++++++
>  include/dt-bindings/power/imx8mp-power.h      |  18 +
>  7 files changed, 1172 insertions(+), 8 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
>  create mode 100644 drivers/soc/imx/imx8mp-blk-ctrl.c
> 


