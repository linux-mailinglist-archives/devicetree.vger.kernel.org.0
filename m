Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3253D3CBFBB
	for <lists+devicetree@lfdr.de>; Sat, 17 Jul 2021 01:29:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237776AbhGPXcZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 19:32:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237770AbhGPXcY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 19:32:24 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E94EC061762
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 16:29:28 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m4XGg-0002Kr-Uv; Sat, 17 Jul 2021 01:29:19 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH 00/17] i.MX8MM GPC improvements and BLK_CTRL driver
Date:   Sat, 17 Jul 2021 01:28:59 +0200
Message-Id: <20210716232916.3572966-1-l.stach@pengutronix.de>
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

over the last few days I've taken on the job to give the blk-ctrl driver
initially worked on by Peng Fan another spin. What I've come up with now
looks quite a bit different, as the power sequencing shared between the
blk-ctrls and the GPC is not really feasible to model with a strict
hierarchy of power domains. In my design the blk-ctrl driver is the
instance driving the sequence for those power domains where a blk-ctrl
is part of the picture.

For those that aren't familiar with the power domain architecture on the
i.MX8M*, here's a short overview, to hopefully make it easier to review
this series. The i.MX8M* reuses the GPCv2 (General Power Controller)IP
block, already known from the i.MX7. On the i.MX7 all power domains
were independent and all the reset and bus isolation sequencing was handled
in hardware by the GPC. Software only needed to request power up/down for
the domain and things mostly happened behind the scenes. On i.MX8M* things
got more complex, as there are now nested power domains and coupling of
the data busses is handled by AMBA domain bridges (ADB), which aren't
sequenced by the GPC hardware, but have handshake requests/acks wired
up to a register in the GPC that needs to be handled by software. Due to
hardware issues some of the reset sequencing also needs to be handled by
software, as the GPC isn't always able to properly trigger the SRC reset
for the peripherals inside the power domains.

Generally with all those nested domains there exists a outer *MIX
(e.g. VPUMIX, DISPMIX) domain that contains the ADB and the BLK_CTRL.
Handshake with the ADB can only happen after the *MIX domain is powered
up and some domain specific initialization in the BLK_CTRL is done. The
ADB is connected to a bus clock from CCM that needs to be enabled for
the ADB to work. Also there might be additional resets and clock gates
for the ADB in the BLK_CTRL MMIO region, which is also only accessible
after the *MIX domain is powered up.
Some peripherals are directly located in the *MIX domain, but others
are placed in inner domains located in the *MIX domain. In order to
power up those nested domains the *MIX domain must already be powered up
and the ADB handshake must be finished. Reset is handled via the BLK_CTRL,
instead of the SRC, which contains resets and clock gates for the
peripherals.
The general flow for those inner domains is:
1. Assert reset and ungate clocks in BLK_CTRL to allow reset to propagate
2. Request power up at the GPC
3. Deassert reset

Failing to meet the ADB handshake and/or reset sequencing requirements
will generally lead to system hangs (not necessarily at the point where
the sequence is violated). The blk-ctrl driver as implemented hides this
behind virtual power domains. Peripherals don't need to care whether they
are located directly inside the *MIX domain or in a nested domain, they
all just use the power domains exposed by the BLK_CTRL driver, which
handles the sequencing requiments internally.

Currently this series implements both the VPU and DISP blk-ctrls for the
i.MX8MM SoC, but I'm quite confident that the design is sound and can be
trivially extended for the other i.MX8M* SoCs. On my personal TODO list
is the conversion of the i.MX8MQ VPU blk-ctrl to the new model, which
should finally allow us to drive the G1 and G2 VPUs independently. After
that I'm going to look at the i.MX8MP, as this is a current focus of my
work and has even more blk-ctrl instances. But before moving on to those,
I would like to gather some feedback and testing on this series.

I will also provide a branch with those patches and the WIP VPU and
display patches I used to test this. But that will have to wait for next
week, as it's getting pretty late here.

Regards,
Lucas

Frieder Schrempf (1):
  arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core

Lucas Stach (14):
  Revert "soc: imx: gpcv2: move reset assert after requesting domain
    power up"
  soc: imx: gpcv2: add lockdep annotation
  soc: imx: gpcv2: add domain option to keep domain clocks enabled
  soc: imx: gpcv2: keep i.MX8M* bus clocks enabled
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

 .../soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml     |  97 ++++
 .../soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml      |  79 +++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 180 +++++++
 drivers/soc/imx/Makefile                      |   1 +
 drivers/soc/imx/gpcv2.c                       |  99 ++--
 drivers/soc/imx/imx8m-blk-ctrl.c              | 464 ++++++++++++++++++
 include/dt-bindings/power/imx8mm-power.h      |   9 +
 7 files changed, 888 insertions(+), 41 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
 create mode 100644 drivers/soc/imx/imx8m-blk-ctrl.c

-- 
2.30.2

