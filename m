Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE97F38E6DA
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 14:46:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232456AbhEXMrt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 08:47:49 -0400
Received: from ns.lynxeye.de ([87.118.118.114]:34440 "EHLO lynxeye.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232389AbhEXMrt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 May 2021 08:47:49 -0400
Received: by lynxeye.de (Postfix, from userid 501)
        id D1505E74214; Mon, 24 May 2021 14:45:50 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on lynxeye.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=ham version=3.3.1
Received: from astat.fritz.box (a89-183-24-20.net-htp.de [89.183.24.20])
        by lynxeye.de (Postfix) with ESMTPA id 8FB75E74217;
        Mon, 24 May 2021 14:45:46 +0200 (CEST)
From:   Lucas Stach <dev@lynxeye.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        "Lukas F . Hartmann" <lukas@mntre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: [PATCH v3 3/4] dt-bindings: arm: fsl: add MNT Reform2 board
Date:   Mon, 24 May 2021 14:45:35 +0200
Message-Id: <20210524124536.27854-3-dev@lynxeye.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210524124536.27854-1-dev@lynxeye.de>
References: <20210524124536.27854-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the MNT Reform2 laptop board.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 15519cc2d2c0..a16c55d29164 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -734,6 +734,7 @@ properties:
               - einfochips,imx8mq-thor96  # i.MX8MQ Thor96 Board
               - fsl,imx8mq-evk            # i.MX8MQ EVK Board
               - google,imx8mq-phanbell    # Google Coral Edge TPU
+              - mntre,reform2             # MNT Reform2 Laptop
               - purism,librem5-devkit     # Purism Librem5 devkit
               - solidrun,hummingboard-pulse # SolidRun Hummingboard Pulse
               - technexion,pico-pi-imx8m  # TechNexion PICO-PI-8M evk
-- 
2.31.1

