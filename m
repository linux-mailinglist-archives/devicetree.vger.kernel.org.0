Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 328E2560975
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 20:44:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230240AbiF2Sox (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 14:44:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231195AbiF2Sos (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 14:44:48 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 661AE24F25
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:44:47 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id s1so23770567wra.9
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XaslqtLsV+OGpzKiKNY3XRrWRC9HWQsSJkmanlRgE+c=;
        b=PZV96m+zSyDuombLQGewWnFBGvnedyQ3+dI1hcr7LVvBrxTm/bGvVqpkPGNxe9GZuS
         fRsI5nulPZJ86uidhXVECCni41C0vA1BzT5G0jxBqiaoo7CX3Kxq3zMyJrX0vHpp6Txf
         p44qFHV0ArI/Y05Xelf6D6yAh06YaA1xxlvz9miA+iu0m+pfBrQ47FFpznq0DZKe/hy4
         SUAN6ilIXPV9TpJlClLX0/YNPHZSgZOrl/1hoPuZDPhRyM7csXJ0DbpLgqJpVUzMy2eM
         +/w65a7y1Ox3yxOnJdn2omseoOfCdKxZv0N5ZS2ufAnjnfGQ7/aqoSXEVEQbgXX6e8nd
         76kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XaslqtLsV+OGpzKiKNY3XRrWRC9HWQsSJkmanlRgE+c=;
        b=4MPimwRXQNy0ffmxIwUtNnA5ouLEIdVdnGjTCDLiDMNiC0+x1v1176X9SKkYS0wvhe
         rMOuzNZqCz33usdbRCS42J+kH5UhoAC+LfgnBTdWuVLxsnZUHtYMcgJlpXiqf8UfXEvg
         fPhi2OszbqYF+pVn6UhfjUYw1kKFBNg9d4zTveFNooXGeaLQQO7rJljqrYy+QwNjjuQq
         cIT8UxUCahg5kDpbPJlcA7bBXEFOFWJDWpxExVUvmGLpu+z4AA0+e4WBghPCihI2L1sL
         nbqWbRbXOCRTECmM5XgMFe2j8KhbmvPAVA0D7Cmi3I/NOa9lDGFEaljB1m60pMytFVFX
         0WUw==
X-Gm-Message-State: AJIora83E9gEZDN6fTHh//D6Violu/yf7lmoOV6TZWjOFThBUr52wX7d
        wzdqlxfW04wsIg/NEa7a7fXEOw==
X-Google-Smtp-Source: AGRyM1tKU6P+9J1S7EvrvcajpfEPLPWHYJ9QIIulL1WwyNt4gXk7nuljdIlSl36redwFztsprn60iw==
X-Received: by 2002:a5d:64cc:0:b0:21b:ba06:4d4d with SMTP id f12-20020a5d64cc000000b0021bba064d4dmr4603873wri.157.1656528285879;
        Wed, 29 Jun 2022 11:44:45 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id u23-20020a7bcb17000000b0039aef592ca0sm3834371wmj.35.2022.06.29.11.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:44:45 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
        Vinod Koul <vkoul@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Palmer Dabbelt <palmer@rivosinc.com>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor.dooley@microchip.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Niklas Cassel <niklas.cassel@wdc.com>,
        Dillon Min <dillon.minfei@gmail.com>,
        Jose Abreu <joabreu@synopsys.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-spi@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v3 06/15] dt-bindings: memory-controllers: add canaan k210 sram controller
Date:   Wed, 29 Jun 2022 19:43:35 +0100
Message-Id: <20220629184343.3438856-7-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629184343.3438856-1-mail@conchuod.ie>
References: <20220629184343.3438856-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

The k210 U-Boot port has been using the clocks defined in the
devicetree to bring up the board's SRAM, but this violates the
dt-schema. As such, move the clocks to a dedicated node with
the same compatible string & document it.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../memory-controllers/canaan,k210-sram.yaml  | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/canaan,k210-sram.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/canaan,k210-sram.yaml b/Documentation/devicetree/bindings/memory-controllers/canaan,k210-sram.yaml
new file mode 100644
index 000000000000..82be32757713
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/canaan,k210-sram.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/canaan,k210-sram.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Canaan K210 SRAM memory controller
+
+description: |
+  The Canaan K210 SRAM memory controller is initialised and programmed by
+  firmware, but an OS might want to read its registers for error reporting
+  purposes and to learn about the DRAM topology.
+
+maintainers:
+  - Conor Dooley <conor@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - canaan,k210-sram
+
+  clocks:
+    minItems: 1
+    items:
+      - description: sram0 clock
+      - description: sram1 clock
+      - description: aisram clock
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: sram0
+      - const: sram1
+      - const: aisram
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/k210-clk.h>
+    memory-controller {
+        compatible = "canaan,k210-sram";
+        clocks = <&sysclk K210_CLK_SRAM0>,
+                 <&sysclk K210_CLK_SRAM1>,
+                 <&sysclk K210_CLK_AI>;
+        clock-names = "sram0", "sram1", "aisram";
+    };
-- 
2.36.1

