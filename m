Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 12947D5ABD
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 07:32:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726351AbfJNFcI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 01:32:08 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:37896 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726617AbfJNFcI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 01:32:08 -0400
Received: by mail-wr1-f65.google.com with SMTP id y18so8575311wrn.5
        for <devicetree@vger.kernel.org>; Sun, 13 Oct 2019 22:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8ehlRfTi/fq+Oy1TzUxlpwPnlRkkcugNpCvrZknIDGg=;
        b=FQ5ORjgovekCk7XGqhyn+ke278DVw0wPlJaaxeMo1a5O4thnBrnZ0ux4qmb22O+ztr
         LI3Q5AyYGkd/u/6Fs5rfH7EUzCJeINMQpQ/2bREwujfr+jeoJMoo9uOLUytI3y0ox+Cw
         uvTm2edHXCe+7eBdbWbBS324u0Vad8Fqlmuv80+RA+Gw2Kgn3TYKPaEhy9KjpqZL6MM/
         0CYCelN+RFX8cJDSgVFnauAIpGNzozZ2XUgCFlOKxD2VYWBA6Z8O8XA+QL6Vyv4WEIbS
         O1ixREOhLQqgVB4B91diAct1NeWoynDToZTqm7ZeDbNIhfsS7wiUbfslNWZ6EOiJ5iBI
         H/tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8ehlRfTi/fq+Oy1TzUxlpwPnlRkkcugNpCvrZknIDGg=;
        b=HlVVltqhprw8kHMKqZGx8GKTsckNWKrsfs1JHWb2eSfR/yME3/3qq3NHuphXlVetqs
         Luxs/PzA1hGZAEnUsa0dUiKml6Bucsh9/ctnFOHDAmMVHDV4hyOuBsHnn39v2TVMto1w
         aoDOY9qyoyR1BVpHPCMmWkp+RsUtOn8djrfLy/SDb3QSzVgBqdSvMJ0P6KA6e7SS/LtA
         eeR/XxZuRWT5do1BMY4JCbRhXpR/MS1Lo+A2LPseuPv/39VVGdGw9sFQnSE/t010t4NL
         jOFO5Kv4yIAlBW7Md2QHuSvVgHRYe5lCejhQ8/Gndgxvv8Bc0pHJ/nYB95G96fylCjXb
         ASSA==
X-Gm-Message-State: APjAAAWeAzoYw7QaFzqpy5c3iyxzEnClQurFyngST7blxzqCeieMAMnp
        Qnrz6Ps74/msmUwAuW2L2SFw6g==
X-Google-Smtp-Source: APXvYqzASzbmQ23svVZMfVmaqECJFtThTvyq6i0XHeqaL0MjTozTSVrjTQXBUc9//FwizHoJb6IEdw==
X-Received: by 2002:a5d:6581:: with SMTP id q1mr23513906wru.393.1571031124896;
        Sun, 13 Oct 2019 22:32:04 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
        by smtp.googlemail.com with ESMTPSA id o18sm44238772wrw.90.2019.10.13.22.32.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Oct 2019 22:32:04 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        khilman@baylibre.com, mark.rutland@arm.com, robh+dt@kernel.org,
        martin.blumenstingl@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 1/4] dt-bindings: crypto: Add DT bindings documentation for amlogic-crypto
Date:   Mon, 14 Oct 2019 05:31:41 +0000
Message-Id: <1571031104-6880-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
References: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds documentation for Device-Tree bindings for the
Amlogic GXL cryptographic offloader driver.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../bindings/crypto/amlogic,gxl-crypto.yaml   | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml

diff --git a/Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml b/Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml
new file mode 100644
index 000000000000..5becc60a0e28
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/amlogic,gxl-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic GXL Cryptographic Offloader
+
+maintainers:
+  - Corentin Labbe <clabbe@baylibre.com>
+
+properties:
+  compatible:
+    items:
+    - const: amlogic,gxl-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: "Interrupt for flow 0"
+      - description: "Interrupt for flow 1"
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: blkmv
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/gxbb-clkc.h>
+
+    crypto: crypto@c883e000 {
+        compatible = "amlogic,gxl-crypto";
+        reg = <0x0 0xc883e000 0x0 0x36>;
+        interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>, <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+        clocks = <&clkc CLKID_BLKMV>;
+        clock-names = "blkmv";
+    };
-- 
2.21.0

