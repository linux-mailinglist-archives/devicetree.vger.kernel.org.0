Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF3D34EBF1F
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 12:46:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245580AbiC3KsR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 06:48:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245630AbiC3KsQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 06:48:16 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EFF4269363
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 03:46:30 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nZVqI-0002Zn-HX; Wed, 30 Mar 2022 12:46:22 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH v4 0/5] i.MX8MP GPC
Date:   Wed, 30 Mar 2022 12:46:15 +0200
Message-Id: <20220330104620.3600159-1-l.stach@pengutronix.de>
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

Hi Shawn,

This is mostly a resend with all the reviews, acks and testing
tags applied. I dropped the HSIO blk-ctrl part from this series,
as I noticed that this needs some rework to better fit the
upcoming HDMI blk-ctrl. The GPC part is still complete, so the
MEDIA blk-ctrl series from Laurent can be applied on top of this
v4.

Regards,
Lucas

Lucas Stach (5):
  soc: imx: gpcv2: add PGC control register indirection
  dt-bindings: power: add defines for i.MX8MP power domain
  soc: imx: gpcv2: add support for i.MX8MP power domains
  arm64: dts: imx8mp: add GPC node with GPU power domains
  arm64: dts: imx8mp: add GPU nodes

 .../bindings/power/fsl,imx-gpcv2.yaml         |   2 +
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  72 +++
 drivers/soc/imx/gpcv2.c                       | 430 +++++++++++++++++-
 include/dt-bindings/power/imx8mp-power.h      |  29 ++
 4 files changed, 521 insertions(+), 12 deletions(-)
 create mode 100644 include/dt-bindings/power/imx8mp-power.h

-- 
2.30.2

