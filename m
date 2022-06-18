Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E11F355048B
	for <lists+devicetree@lfdr.de>; Sat, 18 Jun 2022 14:32:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234290AbiFRMcJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Jun 2022 08:32:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234444AbiFRMcI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Jun 2022 08:32:08 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D99761B7BB
        for <devicetree@vger.kernel.org>; Sat, 18 Jun 2022 05:32:06 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id q9so8799787wrd.8
        for <devicetree@vger.kernel.org>; Sat, 18 Jun 2022 05:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=n9g/PqG7lJoC3tmWnVa7QkZ4DkjcrfTJ4GH+uywTgjo=;
        b=YKP/o6CNE+lQ/JvutgsR0jZOXfHfDWCY/dQhqMKd5OzvitLi7mgxOOlC22neXUi3t3
         BN9TvFhMfSVyIRalfKp0Va337xJ573OA/jlHmNvKMC9gL9WCqqIk9PYa0TsCVpUjtR8B
         tbSkAAYjMwonv2CjEuI0NKpP3MKNtmcrz4U2Kau04jp49doWSVikIYXLNtIJ0CbxpRRk
         ACyFnBPLFEDO8mQ9dOPY47H5osv138u3PU28fgbHfr0fyUMw+29W9vwD1hyvLo5Y4+V/
         UZtdS0DFsqY5lgkZ/53LD/FQ/OdBPmTBXN7bsmN9ILMpN1rxcP2HcJnRbBzUtni7FWjs
         qlYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=n9g/PqG7lJoC3tmWnVa7QkZ4DkjcrfTJ4GH+uywTgjo=;
        b=C/iVqZz30ekJ7g1A/KSR3Jz2KVFqqgWNrrSxg7fTu8AxSJBjGwNRAJaMxLp+vVVNxO
         CiSvDVfzFuLYMB0cknRLsi+rNV8i4BxwrDt1zvg9gQKu+TmwkppnDV48yUpE9o5Ofyw4
         9/7djtepzNsH7U5HcZWHsyqGRCQH1+8dH7cdvb8/eZUbv29YVLO8gjifbf3K9fzKwE56
         oyFm5riaxIWO2KIDbWHrZDSOXeM41e7UMgG/iW+kYXYl7LKPlwRyslDcyb9/plrMinG1
         DGGTOFq8GfR53A53ye55IkHgfQ9yRunt6gUdq+PxKmoKxEGq4Sfn4fg8ccl0hDyjt4/M
         24IQ==
X-Gm-Message-State: AJIora9BOzL/vd5fV/IgogEjJkJLTlTGiga6bi/AhuJ6Koal7q7LrFLU
        aihhE/wMRA8GersWmkNb/bOtCw==
X-Google-Smtp-Source: AGRyM1uLcJx1fdLcx/uXs4UMpQTYdcZbfApX1+t2jE32dzxYMzfs1UyeNBdv+e0Fp23i7qfwRgxtPQ==
X-Received: by 2002:a5d:4251:0:b0:21b:885b:2fcc with SMTP id s17-20020a5d4251000000b0021b885b2fccmr1452539wrr.52.1655555526382;
        Sat, 18 Jun 2022 05:32:06 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id az10-20020adfe18a000000b00210396b2eaesm9292305wrb.45.2022.06.18.05.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 05:32:05 -0700 (PDT)
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
        Heng Sia <jee.heng.sia@intel.com>,
        Jose Abreu <joabreu@synopsys.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-spi@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH 04/14] dt-bindings: dma: add Canaan k210 to Synopsys DesignWare DMA
Date:   Sat, 18 Jun 2022 13:30:26 +0100
Message-Id: <20220618123035.563070-5-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220618123035.563070-1-mail@conchuod.ie>
References: <20220618123035.563070-1-mail@conchuod.ie>
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

The Canaan k210 apparently has a Sysnopsys Designware AXI DMA
controller, but according to the documentation & devicetree it has 6
interrupts rather than the standard one. Add a custom compatible that
supports the 6 interrupt configuration which falls back to the standard
binding which is currently the one in use in the devicetree entry.

Link: https://canaan-creative.com/wp-content/uploads/2020/03/kendryte_standalone_programming_guide_20190311144158_en.pdf #Page 58
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/dma/snps,dw-axi-dmac.yaml        | 35 ++++++++++++++-----
 1 file changed, 26 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
index 4324a94b26b2..bc85598151ef 100644
--- a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
@@ -18,9 +18,13 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - snps,axi-dma-1.01a
-      - intel,kmb-axi-dma
+    oneOf:
+      - items:
+          - const: canaan,k210-axi-dma
+          - const: snps,axi-dma-1.01a
+      - enum:
+          - snps,axi-dma-1.01a
+          - intel,kmb-axi-dma
 
   reg:
     minItems: 1
@@ -33,9 +37,6 @@ properties:
       - const: axidma_ctrl_regs
       - const: axidma_apb_regs
 
-  interrupts:
-    maxItems: 1
-
   clocks:
     items:
       - description: Bus Clock
@@ -92,6 +93,22 @@ properties:
     minimum: 1
     maximum: 256
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: canaan,k210-axi-dma
+
+then:
+  properties:
+    interrupts:
+      maxItems: 6
+
+else:
+  properties:
+    interrupts:
+      maxItems: 1
+
 required:
   - compatible
   - reg
@@ -105,7 +122,7 @@ required:
   - snps,priority
   - snps,block-size
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
@@ -113,12 +130,12 @@ examples:
      #include <dt-bindings/interrupt-controller/irq.h>
      /* example with snps,dw-axi-dmac */
      dmac: dma-controller@80000 {
-         compatible = "snps,axi-dma-1.01a";
+         compatible = "canaan,k210-axi-dma", "snps,axi-dma-1.01a";
          reg = <0x80000 0x400>;
          clocks = <&core_clk>, <&cfgr_clk>;
          clock-names = "core-clk", "cfgr-clk";
          interrupt-parent = <&intc>;
-         interrupts = <27>;
+         interrupts = <27>, <28>, <29>, <30>, <31>, <32>;
          #dma-cells = <1>;
          dma-channels = <4>;
          snps,dma-masters = <2>;
-- 
2.36.1

