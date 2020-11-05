Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B066A2A8533
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 18:44:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727376AbgKERon (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 12:44:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725998AbgKERon (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 12:44:43 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FE11C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 09:44:43 -0800 (PST)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kajJM-0005qB-0h; Thu, 05 Nov 2020 18:44:36 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Date:   Thu,  5 Nov 2020 18:44:21 +0100
Message-Id: <20201105174434.1817539-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
        metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_SOFTFAIL autolearn=no autolearn_force=no
        version=3.4.2
Subject: [PATCH v2 00/13] i.MX8MM power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

this is the second revision of the patchset to add power domain control
for the i.MX8MM SoC to the GPCv2 driver. For now I've dropped all
support (both DT binding and code) for the power domains that contain
a blk-ctl. Support for those is still under development and will probably
require some more discussions to get things right. However the cut-down
functionality provided by this series is already a big step forward, as
it allows to use USB controllers and GPUs on the i.MX8MM, without the
need to statically turn on the respective power domains before jumping
into Linux.

Regards,
Lucas

Lucas Stach (13):
  soc: imx: gpcv2: move to more ideomatic error handling in probe
  soc: imx: gpcv2: move domain mapping to domain driver probe
  soc: imx: gpcv2: switch to clk_bulk_* API
  soc: imx: gpcv2: split power up and power down sequence control
  soc: imx: gpcv2: wait for ADB400 handshake
  soc: imx: gpcv2: add runtime PM support for power-domains
  soc: imx: gpcv2: allow domains without power-sequence control
  dt-bindings: imx: gpcv2: add support for optional resets
  soc: imx: gpcv2: add support for optional resets
  dt-bindings: add defines for i.MX8MM power domains
  soc: imx: gpcv2: add support for i.MX8MM power domains
  arm64: dts: imx8mm: add GPC node and power domains
  arm64: dts: imx8mm: put USB controllers into power-domains

 .../bindings/power/fsl,imx-gpcv2.yaml         |   9 +
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  60 +++
 drivers/soc/imx/gpcv2.c                       | 467 +++++++++++++-----
 include/dt-bindings/power/imx8mm-power.h      |  16 +
 4 files changed, 438 insertions(+), 114 deletions(-)
 create mode 100644 include/dt-bindings/power/imx8mm-power.h

-- 
2.20.1

