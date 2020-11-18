Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B97F2B7E42
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 14:25:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725823AbgKRNYy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 08:24:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725747AbgKRNYy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Nov 2020 08:24:54 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9D41C0613D4
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 05:24:53 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id h23so2289453ljg.13
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 05:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3N2esFsIGWUTFtHzENJGsO9/7dSA49dyE5n+htP2/ew=;
        b=S6KipKfr21+DzmBxXzkM4ltiOL5T4nVo+WRlguYEspJsiMbL22+02m9NDDtLlll4L2
         D/UcJs2Kp8Iez7QQF4/CPLIpP5cYIvJhHOSROyAsymcNLDdgKxRIq0vlPzEFoLL71yCL
         jXUASrkEEahEkgl/OhDGi6VlRIf5NX0es0mKlw7D68v7JJ4AaKCCtwZhhOImwTteXhne
         FdO7jorpARJhaFf6w4x6WCpQT5PE3Kz5qqHHSptdNEbz/Bkb8ZHeLPzoxPtVHEuwSkxo
         g6VIu+tHpANBI3rfCY6iikbQs4IIglYcrvyha5/tB3+mZzMshCN6Qn87JQuEaBORRjr2
         x13g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3N2esFsIGWUTFtHzENJGsO9/7dSA49dyE5n+htP2/ew=;
        b=LLpBlXUAHHq2w+/UcqHxHlNAap3V2+h7/LBhIopcEh7wkW6vyv/bQPksPa8VPETWz7
         hoSmZSWicQ/azv+1dP5I0R0pRifOId29i2MW4MYa0OSMB6mogTRtoYEJoGlKp4D2nS+u
         BHEyq/j+9IiZQVNWoQcaaRcCf8L/raM+di9AimOpHOysC+fYKrf1MfzOsGU1FvKWM5z2
         ndVCD5msJa9xk8kCA8NmYj3V9I5H7W/ttCrSvQdxZiHnpfto7WTQtTb3IQ3+hM57cEeJ
         QAyZWB/TRG/L9v9UisBueYt0ksfQuKzHH/dzdOYeZgD3LDnAybaa8+ooivytrYrqTWYd
         ViIw==
X-Gm-Message-State: AOAM533YEXmXM8PqUeW0Kku9Usg/KxBuzBzV5Sp6KGr/mRWPdt/GnZZc
        uiFoL9dDbJk1ObBo0obf6tw=
X-Google-Smtp-Source: ABdhPJxBhukIfW9kUr/gm913dRjQOfYPUWyf6UpSH1E6Df81oYg9Y4dzffcuKtBBakpBZ6BLgE5MKA==
X-Received: by 2002:a2e:9f08:: with SMTP id u8mr3677414ljk.352.1605705890480;
        Wed, 18 Nov 2020 05:24:50 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id m67sm3262522lfa.285.2020.11.18.05.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 05:24:49 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] dt-bindings: reset: document Broadcom's PMB binding
Date:   Wed, 18 Nov 2020 14:24:39 +0100
Message-Id: <20201118132440.15862-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201118132440.15862-1-zajec5@gmail.com>
References: <20201118132440.15862-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Broadcom's PMB is reset controller used for disabling and enabling SoC
devices.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../devicetree/bindings/reset/brcm,pmb.yaml   | 51 +++++++++++++++++++
 include/dt-bindings/reset/brcm,pmb.h          |  9 ++++
 2 files changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/brcm,pmb.yaml
 create mode 100644 include/dt-bindings/reset/brcm,pmb.h

diff --git a/Documentation/devicetree/bindings/reset/brcm,pmb.yaml b/Documentation/devicetree/bindings/reset/brcm,pmb.yaml
new file mode 100644
index 000000000000..ea78ab629c45
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/brcm,pmb.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/brcm,pmb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom PMB Master reset controller
+
+description: This document describes Broadcom's PMB controller. It supports
+  resetting various types of connected devices (e.g. PCIe, USB, SATA). It
+  requires specifying device address.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm4908-pmb # PMB on BCM4908 and compatible SoCs
+
+  reg:
+    maxItems: 1
+
+  big-endian:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Flag to use for block working in big endian mode.
+
+  "#reset-cells":
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/reset/brcm,pmb.h>
+
+    pmb: reset-controller@802800e0 {
+        compatible = "brcm,bcm4908-pmb";
+        reg = <0x802800e0 0x20>;
+        #reset-cells = <2>;
+    };
+
+    foo {
+        resets = <&pmb BRCM_PMB_USB 17>;
+    }
diff --git a/include/dt-bindings/reset/brcm,pmb.h b/include/dt-bindings/reset/brcm,pmb.h
new file mode 100644
index 000000000000..1b724e451de1
--- /dev/null
+++ b/include/dt-bindings/reset/brcm,pmb.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later OR MIT */
+
+#ifndef _DT_BINDINGS_RESET_BRCM_PMB
+#define _DT_BINDINGS_RESET_BRCM_PMB
+
+#define BRCM_PMB_USB		0x01
+#define BRCM_PMB_PCIE		0x02
+
+#endif
-- 
2.27.0

