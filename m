Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E95A3A6CB9
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 19:07:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233206AbhFNRJX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 13:09:23 -0400
Received: from ns.lynxeye.de ([87.118.118.114]:36308 "EHLO lynxeye.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231160AbhFNRJX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 14 Jun 2021 13:09:23 -0400
Received: by lynxeye.de (Postfix, from userid 501)
        id 40E24E7420D; Mon, 14 Jun 2021 19:06:48 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on lynxeye.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=ham version=3.3.1
Received: from astat.fritz.box (a89-183-116-43.net-htp.de [89.183.116.43])
        by lynxeye.de (Postfix) with ESMTPA id 296B8E7420D;
        Mon, 14 Jun 2021 19:06:46 +0200 (CEST)
From:   Lucas Stach <dev@lynxeye.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        "Lukas F . Hartmann" <lukas@mntre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: [PATCH v4 1/5] dt-bindings: arm: fsl: add Nitrogen8 SoM
Date:   Mon, 14 Jun 2021 19:06:29 +0200
Message-Id: <20210614170633.31638-1-dev@lynxeye.de>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the BoundaryDevices Nitrogen8 system on module.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 297c87f45db8..15519cc2d2c0 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -730,6 +730,7 @@ properties:
         items:
           - enum:
               - boundary,imx8mq-nitrogen8m # i.MX8MQ NITROGEN Board
+              - boundary,imx8mq-nitrogen8m-som # i.MX8MQ NITROGEN SoM
               - einfochips,imx8mq-thor96  # i.MX8MQ Thor96 Board
               - fsl,imx8mq-evk            # i.MX8MQ EVK Board
               - google,imx8mq-phanbell    # Google Coral Edge TPU
-- 
2.31.1

