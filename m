Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBDC4493B33
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 14:40:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351056AbiASNkg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 08:40:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244477AbiASNke (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 08:40:34 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A82FDC061574
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 05:40:33 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nABCO-0006Kr-DO; Wed, 19 Jan 2022 14:40:28 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: [PATCH 0/9] i.MX8MP power-domains part 1 and GPU support
Date:   Wed, 19 Jan 2022 14:40:18 +0100
Message-Id: <20220119134027.2931945-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

this series starts adding the power-domain control for the i.MX8MP
SoC. The GPCv2 support is complete (at least from going over the RM,
TF-A and experience with other i.MX8M* SoCs), but not all
power-domains are usable right now. Currently only the HSIO
(USB and PCIe) and GPU power domains are enabled.

Other power domains (MEDIA, VPU, HDMI, AUDIO) can be added when the
blk-ctrl driver support for those domains is ready, which is still
work in progress at the moment. As my priorities are shifting to
other things for a while, I wanted to push out the part that is
usable now and enables more functionality on the i.MX8MP.

Regards,
Lucas

Lucas Stach (9):
  soc: imx: gpcv2: add PGC control register indirection
  dt-bindings: power: add defines for i.MX8MP power domain
  soc: imx: gpcv2: add support for i.MX8MP power domains
  dt-bindings: power: imx8mp: add defines for HSIO blk-ctrl domains
  dt-bindings: soc: add binding for i.MX8MP HSIO blk-ctrl
  soc: imx: add i.MX8MP HSIO blk-ctrl
  arm64: dts: imx8mp: add HSIO power-domains
  arm64: dts: imx8mp: add GPU power domains
  arm64: dts: imx8mp: add GPU nodes

 .../bindings/power/fsl,imx-gpcv2.yaml         |   2 +
 .../soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml     |  78 +++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 118 ++++-
 drivers/soc/imx/Makefile                      |   1 +
 drivers/soc/imx/gpcv2.c                       | 430 ++++++++++++++++-
 drivers/soc/imx/imx8mp-blk-ctrl.c             | 444 ++++++++++++++++++
 include/dt-bindings/power/imx8mp-power.h      |  35 ++
 7 files changed, 1090 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
 create mode 100644 drivers/soc/imx/imx8mp-blk-ctrl.c
 create mode 100644 include/dt-bindings/power/imx8mp-power.h

-- 
2.30.2

