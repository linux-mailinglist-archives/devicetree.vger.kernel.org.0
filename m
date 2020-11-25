Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFC2D2C417C
	for <lists+devicetree@lfdr.de>; Wed, 25 Nov 2020 14:57:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725616AbgKYN5T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 08:57:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729475AbgKYN5T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Nov 2020 08:57:19 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E036EC061A4E
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 05:57:18 -0800 (PST)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ore@pengutronix.de>)
        id 1khvIE-00068x-Pp; Wed, 25 Nov 2020 14:57:10 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <ore@pengutronix.de>)
        id 1khvID-0004MI-5B; Wed, 25 Nov 2020 14:57:09 +0100
From:   Oleksij Rempel <o.rempel@pengutronix.de>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Oleksij Rempel <o.rempel@pengutronix.de>,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        David Jander <david@protonic.nl>
Subject: [PATCH v2 0/5] mainline Kverneland boards 
Date:   Wed, 25 Nov 2020 14:57:02 +0100
Message-Id: <20201125135708.16578-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

changes v2:
- add victgo board
- diff fixes for vicut1.dtsi 

Oleksij Rempel (5):
  dt-bindings: vendor-prefixes: Add an entry for Kverneland Group
  dt-bindings: arm: fsl: add Kverneland UT1 and UT1Q boards
  ARM: dts: add Kverneland UT1 and UT1Q
  dt-bindings: arm: fsl: add Kverneland TGO board
  ARM: dts: add Kverneland TGO board

 .../devicetree/bindings/arm/fsl.yaml          |   3 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/Makefile                    |   3 +
 arch/arm/boot/dts/imx6dl-victgo.dts           | 850 ++++++++++++++++++
 arch/arm/boot/dts/imx6dl-vicut1.dts           |  13 +
 arch/arm/boot/dts/imx6q-vicut1.dts            |  17 +
 arch/arm/boot/dts/imx6qdl-vicut1.dtsi         | 801 +++++++++++++++++
 7 files changed, 1689 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-victgo.dts
 create mode 100644 arch/arm/boot/dts/imx6dl-vicut1.dts
 create mode 100644 arch/arm/boot/dts/imx6q-vicut1.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-vicut1.dtsi

-- 
2.29.2

