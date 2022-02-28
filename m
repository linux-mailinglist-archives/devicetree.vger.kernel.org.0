Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B8404C79FA
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 21:21:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbiB1USW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 15:18:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229766AbiB1USV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 15:18:21 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE96046658
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 12:17:41 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nOmSa-0003aH-O2; Mon, 28 Feb 2022 21:17:32 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH v3 0/7] i.MX8MP GPC and blk-ctrl
Date:   Mon, 28 Feb 2022 21:17:24 +0100
Message-Id: <20220228201731.3330192-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
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

Hi all,

third and hopefully last revision of this patchset. The dt-binding
patches are dropped, as Shawn already picked them up. I fixed up all
the review comments received by Laurent and Marek.

Regards,
Lucas

Lucas Stach (7):
  soc: imx: gpcv2: add PGC control register indirection
  soc: imx: gpcv2: add support for i.MX8MP power domains
  soc: imx: add i.MX8MP HSIO blk-ctrl
  dt-bindings: usb: dwc3-imx8mp: add power domain property
  arm64: dts: imx8mp: add HSIO power-domains
  arm64: dts: imx8mp: add GPU power domains
  arm64: dts: imx8mp: add GPU nodes

 .../bindings/usb/fsl,imx8mp-dwc3.yaml         |   6 +
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 129 ++++-
 drivers/soc/imx/Makefile                      |   1 +
 drivers/soc/imx/gpcv2.c                       | 430 ++++++++++++++++-
 drivers/soc/imx/imx8mp-blk-ctrl.c             | 446 ++++++++++++++++++
 5 files changed, 994 insertions(+), 18 deletions(-)
 create mode 100644 drivers/soc/imx/imx8mp-blk-ctrl.c

-- 
2.30.2

