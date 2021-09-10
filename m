Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F383407283
	for <lists+devicetree@lfdr.de>; Fri, 10 Sep 2021 22:26:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233783AbhIJU2E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Sep 2021 16:28:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233806AbhIJU2D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Sep 2021 16:28:03 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 635A5C061574
        for <devicetree@vger.kernel.org>; Fri, 10 Sep 2021 13:26:51 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mOn6h-0000xM-9L; Fri, 10 Sep 2021 22:26:43 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: [PATCH v4 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
Date:   Fri, 10 Sep 2021 22:26:22 +0200
Message-Id: <20210910202640.980366-1-l.stach@pengutronix.de>
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

as it seems there is considerable interest in landing this despite some
spurious issues still being present, here's a 4th revision of the series
to not drop the ball. Even though I still did not have time to try to
dig into the open issues reported by Frieder, I think there is a high
chance that those are caused by something like a missed timing
constraint and not by something that would invalidate the overall design
of the GPC and BLK_CTRL interaction as laid out by this series. So I
still hope that we can land this series and apply fixes as we find them.

Regards,
Lucas

Frieder Schrempf (1):
  arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core

Lucas Stach (15):
  Revert "soc: imx: gpcv2: move reset assert after requesting domain
    power up"
  soc: imx: gpcv2: add lockdep annotation
  soc: imx: gpcv2: add domain option to keep domain clocks enabled
  soc: imx: gpcv2: keep i.MX8M* bus clocks enabled
  soc: imx: gpcv2: support system suspend/resume
  dt-bindings: soc: add binding for i.MX8MM VPU blk-ctrl
  dt-bindings: power: imx8mm: add defines for VPU blk-ctrl domains
  soc: imx: add i.MX8M blk-ctrl driver
  dt-bindings: soc: add binding for i.MX8MM DISP blk-ctrl
  dt-bindings: power: imx8mm: add defines for DISP blk-ctrl domains
  soc: imx: imx8m-blk-ctrl: add DISP blk-ctrl
  arm64: dts: imx8mm: add GPC node
  arm64: dts: imx8mm: put USB controllers into power-domains
  arm64: dts: imx8mm: add VPU blk-ctrl
  arm64: dts: imx8mm: add DISP blk-ctrl

Marek Vasut (2):
  soc: imx: gpcv2: Turn domain->pgc into bitfield
  soc: imx: gpcv2: Set both GPC_PGC_nCTRL(GPU_2D|GPU_3D) for MX8MM GPU
    domain

 .../soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml     |  94 ++++
 .../soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml      |  76 +++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 180 ++++++
 drivers/soc/imx/Makefile                      |   1 +
 drivers/soc/imx/gpcv2.c                       | 130 +++--
 drivers/soc/imx/imx8m-blk-ctrl.c              | 523 ++++++++++++++++++
 include/dt-bindings/power/imx8mm-power.h      |   9 +
 7 files changed, 972 insertions(+), 41 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
 create mode 100644 drivers/soc/imx/imx8m-blk-ctrl.c

-- 
2.30.2

