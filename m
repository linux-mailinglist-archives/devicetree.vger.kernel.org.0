Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DBAC27EDD3
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 17:50:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730897AbgI3PuS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 11:50:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725893AbgI3PuS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 11:50:18 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34340C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 08:50:18 -0700 (PDT)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kNeMp-0006WU-No; Wed, 30 Sep 2020 17:50:08 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Date:   Wed, 30 Sep 2020 17:49:55 +0200
Message-Id: <20200930155006.535712-1-l.stach@pengutronix.de>
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
Subject: [PATCH 00/11] i.MX8MM power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

this adds power domain support for the i.MX8MM to the existing GPCv2
driver. It is not complete yet, as it is still missing the VPU and
display power domains, as those require support for the BLK_CTL
regions of the VPUMIX and DISPLAYMIX domains. A Linux driver for
those regions on the i.MX8MP is currently under development and we
plan to use this as a template for the i.MX8MM when the dust has
settled. The changes in this series have been made with this in
mind, so once the BLK_CTL driver exists it should be a matter of
hooking things together via DT, with no further changes required on
the GPCv2 driver side (famous last words).

Special thanks to Marek Vasut who helped with testing and debugging
of early versions of this code.

Regards,
Lucas

Lucas Stach (11):
  soc: imx: gpcv2: move to more ideomatic error handling in probe
  soc: imx: gpcv2: move domain mapping to domain driver probe
  soc: imx: gpcv2: split power up and power down sequence control
  soc: imx: gpcv2: wait for ADB400 handshake
  soc: imx: gpcv2: add runtime PM support for power-domains
  soc: imx: gpcv2: allow domains without power-sequence control
  soc: imx: gpcv2: add support for optional resets
  dt-bindings: add defines for i.MX8MM power domains
  soc: imx: gpcv2: add support for i.MX8MM power domains
  arm64: dts: imx8mm: add GPC node and power domains
  arm64: dts: imx8mm: put USB controllers into power-domains

 .../bindings/power/fsl,imx-gpcv2.yaml         |   8 +
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  59 +++
 drivers/soc/imx/gpcv2.c                       | 501 +++++++++++++++---
 include/dt-bindings/power/imx8mm-power.h      |  22 +
 4 files changed, 516 insertions(+), 74 deletions(-)
 create mode 100644 include/dt-bindings/power/imx8mm-power.h

-- 
2.20.1

