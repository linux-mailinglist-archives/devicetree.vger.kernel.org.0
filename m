Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2835393DB5
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 09:24:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235770AbhE1HZu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 03:25:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235727AbhE1HZt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 03:25:49 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEC95C061574
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 00:24:15 -0700 (PDT)
Received: from mail-internal.denx.de (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: noc@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 6EE4D82CAC;
        Fri, 28 May 2021 09:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1622186654;
        bh=FxlnUYuVBD/ayVoM48CgGS8f69ngxanfNpwZzowWZ3E=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=brT5kpwS0FWp5rQXzGHr5ysQXqEKoH0Hlwzt7D00LTbK5G3HbxQlq/YsjmIsvLLQ8
         ZeFl0EDKBeRhSAA14zYT9eFhfBdpAuEuQl071ivzl0dAGJHpM0qFXU4m52VQ0PdyCC
         Dm9pCv2eJsRdVzW0xiyJ1rP58pa2s2Tabdk43IRul67rSSgUHuQFNr0MfZ8u0g0pBt
         /Fb6W0cHhBGTgZh1eRApY53654GUVExiSOURS/ctIJsLcH0dkNtdIl1lpjEMvSsh6U
         KY60I8gvdjBmX90LFMzukjfofBoPWZPCCedmlEavYkGH/70flVevShka5cWuvY+nC2
         +usRrVtMTb1qQ==
Received: from pollux.denx.de (pollux [192.168.1.1])
        by mail-internal.denx.de (Postfix) with ESMTP id 9572C182BA1;
        Fri, 28 May 2021 09:23:53 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 515)
        id 8356F1A8BC6; Fri, 28 May 2021 09:23:53 +0200 (CEST)
From:   Heiko Schocher <hs@denx.de>
To:     linux-mtd@lists.infradead.org
Cc:     Heiko Schocher <hs@denx.de>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] mtd: devices: add devicetree documentation for microchip 48l640
Date:   Fri, 28 May 2021 09:23:50 +0200
Message-Id: <20210528072351.1639575-2-hs@denx.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210528072351.1639575-1-hs@denx.de>
References: <20210528072351.1639575-1-hs@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.102.4 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Microchip 48l640 is a 8KByte EERAM connected via SPI.
Add devicetree bindings documentation.

Signed-off-by: Heiko Schocher <hs@denx.de>
---
I must admit that I created the file

Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml

by hand, looking into other yaml files...

Is there a way to check such a file to its correctness?

 .../bindings/mtd/microchip,mchp48l640.yaml    | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml

diff --git a/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml b/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
new file mode 100644
index 0000000000000..f0290d09d4b25
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+title: MTD SPI driver for Microchip 48l640 (and similar) serial EERAM
+
+maintainers:
+  - Heiko Schocher <hs@denx.de>
+
+description: |
+  The Microchip 48l640 is a 8KByte EERAM connected via SPI.
+
+  datasheet: http://ww1.microchip.com/downloads/en/DeviceDoc/20006055B.pdf
+
+properties:
+  compatible:
+    items:
+      - const: microchip,48l640
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency: true
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      spi-eeram@0 {
+        compatible = "microchip,48l640";
+        reg = <0>;
+        spi-max-frequency = <20000000>;
+      };
+    };
+...
-- 
2.30.2

