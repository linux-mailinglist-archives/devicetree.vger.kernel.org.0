Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5225B2A4B2
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2019 15:42:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726894AbfEYNmE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 May 2019 09:42:04 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:40023 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726887AbfEYNmD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 May 2019 09:42:03 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id ECD9BC0008;
        Sat, 25 May 2019 13:42:00 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 4/5] ARM: dts: sun7i: icnova-swac: Fix the model vendor
Date:   Sat, 25 May 2019 15:41:39 +0200
Message-Id: <20190525134140.6220-4-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525134140.6220-1-maxime.ripard@bootlin.com>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though the SWAC is just a baseboard to the icnova SoM, the vendor of
the baseboard somehow ended up with the board name instead of the vendor
name. Fix that.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 2 +-
 arch/arm/boot/dts/sun7i-a20-icnova-swac.dts      | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 285f4fc8519d..000a00d12d6a 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -263,7 +263,7 @@ properties:
 
       - description: ICNova A20 SWAC
         items:
-          - const: swac,icnova-a20-swac
+          - const: incircuit,icnova-a20-swac
           - const: incircuit,icnova-a20
           - const: allwinner,sun7i-a20
 
diff --git a/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts b/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
index 949494730aee..7449aac3f43b 100644
--- a/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
+++ b/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
@@ -49,7 +49,8 @@
 
 / {
 	model = "ICnova-A20 SWAC";
-	compatible = "swac,icnova-a20-swac", "incircuit,icnova-a20", "allwinner,sun7i-a20";
+	compatible = "incircuit,icnova-a20-swac", "incircuit,icnova-a20",
+		     "allwinner,sun7i-a20";
 
 	aliases {
 		serial0 = &uart0;
-- 
2.21.0

