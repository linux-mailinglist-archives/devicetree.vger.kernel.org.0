Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CEEE39762C
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 17:11:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234336AbhFAPNX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 11:13:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234297AbhFAPNW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 11:13:22 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64FA2C061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 08:11:40 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id j14so14722541wrq.5
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 08:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rf5ScR4953iWLG2fnkUfQoXs8ZEh2JQxh9w/4557fmU=;
        b=khOFHvMH8u6Rh08o15vkiH5R/TLUE39XFeUJTFO7mV+6q5UylM2O4xkj/SNhm3AlHq
         5yTIVXVht05qoxhal49M6scu/LHZ0Yacj0ZTwSQ2nUFTeq5ELhxTghI2J7WW6IJK/aFJ
         euXUdoXi2Y4MgIGYeK83u+iom+/xb4q8hN+KOwP7NQtOo6EFvKLG2QFsXA2u8Y4lerP7
         7jAsJX+JkTz7whMZO1KYUNad9Ke0X6iCzcHN/fUZgvVixnnW1mWpSfUBUDa1YFjxxwtF
         ezs0Zh64jyZPhMc/xcdoyM2Rq077oGf+esiJAPSC02nyPZHUHcxFcB8/0ujX0Us9oJOZ
         9m/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rf5ScR4953iWLG2fnkUfQoXs8ZEh2JQxh9w/4557fmU=;
        b=h0DfDc2oz0052HjrGOizFoiDo8sBiMrvWW+0YGZYctPD+yd0RYmjiTKNJv/5rD9XNh
         qVMJLe0RGfpE6kY4bFPfSpiZM0p+M6WsN2I04NtDckohaozQ7+ZZkRyYXvEA3UeC+cOu
         KFlxTXn/K7ptSeeQm28VJ+/WJwQdmha08LXN1MHdAn3q3C8lam+ATP86o+FfkuXEBrZs
         1oTwMlAmBYpVYveWa3uImrbnuMUPGA1Ifi5ADxjT7RO7FGRZS92MrXdqEGMgylkTKv/D
         y3cL2jkAafxJmnzD1LqeVdfBqAuSR96/e6x+AiGLAtHbdmYGIVhe/Gmceo2MEfZaqpbv
         4kFg==
X-Gm-Message-State: AOAM53100zHQ89UNa6nqFsbHwAVn94oUCNx4IZidQ2heVP3uWfFx9uhb
        LeqiH2ghJ0l53cbOVYboP+t9xA==
X-Google-Smtp-Source: ABdhPJz6AJNwILZgvSBuVpQHorawz56JRYWZNYqzVFhVBhmFN5/xHe7c/TbTiMtTIdudTM++WVKXAA==
X-Received: by 2002:adf:f842:: with SMTP id d2mr8409350wrq.52.1622560299083;
        Tue, 01 Jun 2021 08:11:39 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id f20sm22344163wmh.41.2021.06.01.08.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 08:11:38 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        linus.walleij@linaro.org, linux@armlinux.org.uk,
        robh+dt@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/5] dt-bindings: crypto: Add documentation for sl3516-ce
Date:   Tue,  1 Jun 2021 15:11:28 +0000
Message-Id: <20210601151132.1893443-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210601151132.1893443-1-clabbe@baylibre.com>
References: <20210601151132.1893443-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds documentation for Device-Tree bindings for the
SL3516-ce cryptographic offloader driver.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/cortina,sl3516-crypto.yaml         | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/cortina,sl3516-crypto.yaml

diff --git a/Documentation/devicetree/bindings/crypto/cortina,sl3516-crypto.yaml b/Documentation/devicetree/bindings/crypto/cortina,sl3516-crypto.yaml
new file mode 100644
index 000000000000..8330b16a07e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/cortina,sl3516-crypto.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/cortina,sl3516-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SL3516 cryptographic offloader driver
+
+maintainers:
+  - Corentin Labbe <clabbe@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - cortina,sl3516-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/cortina,gemini-clock.h>
+    #include <dt-bindings/reset/cortina,gemini-reset.h>
+
+    crypto@62000000 {
+        compatible = "cortina,sl3516-crypto";
+        reg = <0x62000000 0x10000>;
+        interrupts = <7 IRQ_TYPE_EDGE_RISING>;
+        resets = <&syscon GEMINI_RESET_SECURITY>;
+        clocks = <&syscon GEMINI_CLK_GATE_SECURITY>;
+    };
-- 
2.31.1

