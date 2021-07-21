Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 153D73D184C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 22:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231732AbhGUUGi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 16:06:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229903AbhGUUGh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 16:06:37 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E979AC061757
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 13:47:13 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m6J7R-0004jk-KP; Wed, 21 Jul 2021 22:47:05 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
Date:   Wed, 21 Jul 2021 22:46:45 +0200
Message-Id: <20210721204703.1424034-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210716232916.3572966-1-l.stach@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
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

second revision of the GPC improvements and BLK_CTRL driver to make use
of all the power-domains on the i.MX8MM. I'm not going to repeat the full
blurb from the v1 cover letter here, but if you are not familiar with
i.MX8MM power domains, it may be worth a read.

This 2nd revision fixes the DT bindings to be valid yaml, some small
failure path issues and most importantly the interaction with system
suspend/resume. With the previous version some of the power domains
would not come up correctly after a suspend/resume cycle.

Updated testing git trees here, disclaimer still applies:
https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains
https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains-testing

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
 drivers/soc/imx/imx8m-blk-ctrl.c              | 525 ++++++++++++++++++
 include/dt-bindings/power/imx8mm-power.h      |   9 +
 7 files changed, 974 insertions(+), 41 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
 create mode 100644 drivers/soc/imx/imx8m-blk-ctrl.c

-- 
2.30.2

