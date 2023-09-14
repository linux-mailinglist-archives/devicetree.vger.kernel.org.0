Return-Path: <devicetree+bounces-130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C54979FD8A
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 09:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 094CF1C20B09
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 07:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E568CA7A;
	Thu, 14 Sep 2023 07:51:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5137BCA4E
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 07:51:40 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 794DB1BFC
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 00:51:39 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qgh82-0001Gv-Bd; Thu, 14 Sep 2023 09:51:10 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qgh80-006FdB-Pl; Thu, 14 Sep 2023 09:51:08 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qgh80-009P5Y-22;
	Thu, 14 Sep 2023 09:51:08 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: "David S. Miller" <davem@davemloft.net>,
	Andrew Lunn <andrew@lunn.ch>,
	Eric Dumazet <edumazet@google.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Arun Ramadoss <arun.ramadoss@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org
Subject: [PATCH net-next v5 1/2] dt-bindings: net: dsa: microchip: Update ksz device tree bindings for drive strength
Date: Thu, 14 Sep 2023 09:51:06 +0200
Message-Id: <20230914075107.2239886-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230914075107.2239886-1-o.rempel@pengutronix.de>
References: <20230914075107.2239886-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Extend device tree bindings to support drive strength configuration for the
ksz* switches. Introduced properties:
- microchip,hi-drive-strength-microamp: Controls the drive strength for
  high-speed interfaces like GMII/RGMII and more.
- microchip,lo-drive-strength-microamp: Governs the drive strength for
  low-speed interfaces such as LEDs, PME_N, and others.
- microchip,io-drive-strength-microamp: Controls the drive strength for
  for undocumented Pads on KSZ88xx variants.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 .../bindings/net/dsa/microchip,ksz.yaml       | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
index 03b5567be389..41014f5c01c4 100644
--- a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
@@ -49,6 +49,26 @@ properties:
       Set if the output SYNCLKO clock should be disabled. Do not mix with
       microchip,synclko-125.
 
+  microchip,io-drive-strength-microamp:
+    description:
+      IO Pad Drive Strength
+    enum: [8000, 16000]
+    default: 16000
+
+  microchip,hi-drive-strength-microamp:
+    description:
+      High Speed Drive Strength. Controls drive strength of GMII / RGMII /
+      MII / RMII (except TX_CLK/REFCLKI, COL and CRS) and CLKO_25_125 lines.
+    enum: [2000, 4000, 8000, 12000, 16000, 20000, 24000, 28000]
+    default: 24000
+
+  microchip,lo-drive-strength-microamp:
+    description:
+      Low Speed Drive Strength. Controls drive strength of TX_CLK / REFCLKI,
+      COL, CRS, LEDs, PME_N, NTRP_N, SDO and SDI/SDA/MDIO lines.
+    enum: [2000, 4000, 8000, 12000, 16000, 20000, 24000, 28000]
+    default: 8000
+
   interrupts:
     maxItems: 1
 
-- 
2.39.2


