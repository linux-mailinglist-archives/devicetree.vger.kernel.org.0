Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F09FFD5235
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2019 21:30:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387397AbfJLTal (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Oct 2019 15:30:41 -0400
Received: from mxb1.seznam.cz ([77.75.78.89]:56626 "EHLO mxb1.seznam.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387393AbfJLTal (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 12 Oct 2019 15:30:41 -0400
Received: from email.seznam.cz
        by email-smtpc14a.ko.seznam.cz (email-smtpc14a.ko.seznam.cz [10.53.11.165])
        id 1254411a495a157313fd8d44;
        Sat, 12 Oct 2019 21:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seznam.cz; s=beta;
        t=1570908636; bh=HB5UQDGAsH9CfXAzvgeUsGgU3DLX9847q5MERROiWg4=;
        h=Received:From:To:Cc:Subject:Date:Message-Id:X-Mailer:In-Reply-To:
         References:MIME-Version:Content-Transfer-Encoding;
        b=S/ye4H4KsasnhiJj215zsysABMC1kxHCNUxI7xVISAlfbQMJtrUQq/vtEmaUYI3Kh
         T4CDe2SWwxgX49h6SBukcyvbAP4Jj4yc42UnFONYZSHEYQ52fWa04tn9tlXhoDG2Z8
         iBkE/Le4Wb2h9xHOe8EYkge/Y5YVs2vRi9rsQQx0=
Received: from localhost.localdomain (212.69.128.228 [212.69.128.228])
        by email-relay8.ko.seznam.cz (Seznam SMTPD 1.3.108) with ESMTP;
        Sat, 12 Oct 2019 21:30:30 +0200 (CEST)  
From:   michael.srba@seznam.cz
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        Michael Srba <Michael.Srba@seznam.cz>
Subject: [PATCH 2/2] dt-bindings: input/touchscreen: add bindings for zinitix
Date:   Sat, 12 Oct 2019 21:27:39 +0200
Message-Id: <20191012192739.10261-2-michael.srba@seznam.cz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191012192739.10261-1-michael.srba@seznam.cz>
References: <20191012192739.10261-1-michael.srba@seznam.cz>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Srba <Michael.Srba@seznam.cz>

This patch adds dts bindings for the zinitix bt541 touchscreen.

Signed-off-by: Michael Srba <Michael.Srba@seznam.cz>
---
 .../bindings/input/touchscreen/zinitix.txt    | 36 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 ++
 2 files changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/zinitix.txt

diff --git a/Documentation/devicetree/bindings/input/touchscreen/zinitix.txt b/Documentation/devicetree/bindings/input/touchscreen/zinitix.txt
new file mode 100644
index 000000000000..250eef2ee907
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/zinitix.txt
@@ -0,0 +1,36 @@
+Device tree bindings for Zinitx BT541 touchscreen controller
+
+Required properties:
+
+ - compatible		: Should be "zinitix,bt541"
+ - reg				: I2C address of the chip. Should be 0x20
+ - interrupts		: Interrupt to which the chip is connected
+
+Optional properties:
+
+ - vdd-supply		: Analog power supply regulator on VCCA pin
+ - vddo-supply		: Digital power supply regulator on VDD pin
+
+The touchscreen-* properties are documented in touchscreen.txt in this
+directory.
+
+Example:
+
+	i2c@00000000 {
+		/* ... */
+
+		bt541@20 {
+			compatible = "zinitix,bt541";
+			reg = <0x20>;
+			interrupt-parent = <&msmgpio>;
+			interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&tsp_default>;
+			vdd-supply = <&reg_vdd_tsp>;
+			vddo-supply = <&pm8916_l6>;
+			touchscreen-size-x = <540>;
+			touchscreen-size-y = <960>;
+		};
+
+		/* ... */
+	};
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6992bbbbffab..0db46da36c7d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1043,6 +1043,8 @@ patternProperties:
     description: Shenzhen Zidoo Technology Co., Ltd.
   "^zii,.*":
     description: Zodiac Inflight Innovations
+  "^zinitix,.*":
+    description: Zinitix Co., Ltd
   "^zte,.*":
     description: ZTE Corp.
   "^zyxel,.*":
-- 
2.23.0

