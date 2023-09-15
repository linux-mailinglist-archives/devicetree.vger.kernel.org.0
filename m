Return-Path: <devicetree+bounces-634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 556E57A2416
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 19:00:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F483281625
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 17:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3312F125D0;
	Fri, 15 Sep 2023 17:00:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA57C15E82
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 17:00:27 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 890642736;
	Fri, 15 Sep 2023 09:59:53 -0700 (PDT)
Received: from Monstersaurus.local (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7E3D2741;
	Fri, 15 Sep 2023 18:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1694797098;
	bh=x+VTjBYOuva4onGwdWAu8P326nYuNXsxOu5lC9qDMdc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nfxfMqbnws04tUwuPuAzecwj5WU9ydqTE/aw/xb2aKXrt41tszsJjVqUwNJecyv1Y
	 xMkTzygRqOaiDeM7fornXNRM2ZFjAYgi02mebuD1VlPo4C+IfUFRtQoyw1zD+5KWil
	 VQ6RXbqql/ytJF/4dogMC7TAGG8DuNMKCwZ3/ThM=
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/2] Documentation: dt-bindings: media: i2c: Add ROHM BU64754 bindings
Date: Fri, 15 Sep 2023 17:59:45 +0100
Message-Id: <20230915165946.4183839-2-kieran.bingham@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230915165946.4183839-1-kieran.bingham@ideasonboard.com>
References: <20230915165946.4183839-1-kieran.bingham@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add YAML device tree bindings for the ROHM BU64754 VCM Motor Driver for
Camera Autofocus.

Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
---
 .../bindings/media/i2c/rohm,bu64754.yaml      | 48 +++++++++++++++++++
 MAINTAINERS                                   |  7 +++
 2 files changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/rohm,bu64754.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/rohm,bu64754.yaml b/Documentation/devicetree/bindings/media/i2c/rohm,bu64754.yaml
new file mode 100644
index 000000000000..22da4a46bb0c
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/rohm,bu64754.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2023 Ideas on Board Oy.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/rohm,bu64754.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ROHM BU64754 Actuator Driver for Camera Autofocus
+
+maintainers:
+  - Kieran Bingham <kieran.bingham@ideasonboard.com>
+
+description: |
+  The BU64754 is an actuator driver IC which can control the actuator
+  position precisely using an internal Hall Sensor.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - rohm,bu64754
+
+  reg:
+    maxItems: 1
+
+  vdd-supply:
+    description:
+      Definition of the regulator used as VDD power supply to the driver.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        lens@76 {
+            compatible = "rohm,bu64754";
+            reg = <0x76>;
+            vdd-supply = <&cam1_reg>;
+        };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 90f13281d297..f43e0ffcaf56 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18570,6 +18570,13 @@ S:	Supported
 F:	drivers/iio/light/rohm-bu27008.c
 F:	drivers/iio/light/rohm-bu27034.c
 
+ROHM BU64754 MOTOR DRIVER FOR CAMERA AUTOFOCUS
+M:	Kieran Bingham <kieran.bingham@ideasonboard.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+T:	git git://linuxtv.org/media_tree.git
+F:	Documentation/devicetree/bindings/media/i2c/rohm,bu64754.yaml
+
 ROHM MULTIFUNCTION BD9571MWV-M PMIC DEVICE DRIVERS
 M:	Marek Vasut <marek.vasut+renesas@gmail.com>
 L:	linux-kernel@vger.kernel.org
-- 
2.34.1


