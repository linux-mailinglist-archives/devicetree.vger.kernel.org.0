Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 647D0580C27
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 09:08:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237797AbiGZHIJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 03:08:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232155AbiGZHII (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 03:08:08 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65B862A738
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 00:08:07 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id b21so8522174ljk.8
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 00:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CQeBl6bdxDYeiutOoPw95UwPjf3Fy7w8iw/mWArASvw=;
        b=zN85OL0I7XcwDr5+NXdtzJE9Fh3X0ESA9e60K/bAmY6lQrfN2CIkjbxud/H/HRN2fw
         muTda+NOORh3cEyWpi5ozfGxPXzvtigjCWdz4AIk8MUlCHZkp7rNa9RgGg6nAPXnrJ5F
         4yYZ+IoOWFP2YNiSz9lnmoiafKNxzZ2aCNd3mrgfI70ksFwdRwGRKVf6NmlJ6BzXalX9
         MBGiQGnySWa8nbgtlLJti+8eFDBXfMPeKJMcwv9TOE7meEDePeDxl7AjeUMzaGUGNoxB
         vUlxM+fhzkgizMJIEpR4phP1vxNhJdRcAxRCS2kuz1jnutS92Uy5m/6bQSKZazfwBucD
         zhew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CQeBl6bdxDYeiutOoPw95UwPjf3Fy7w8iw/mWArASvw=;
        b=inCXlCqovI2VC3qzmGoweh6QEQ6IJeZgCu0KvrwN1L0FQXE9B8EPhgo+dQRnavO7Mc
         tj4CfxuGSHKo+4KXBzyNlVq7YbiP7aDaUxQvqawwV9ohx4ZHupbrtdZ5fBFwdZOdtf3V
         17LidDvduezWMody8bryh2TbT+ecwVQqBtuHF3TTdF9eQQK2A+bbVsFHH1naI44LxNbf
         ELXarwyjj7Nryovx3YYUvwGaVX5XQqtHtnVDjlqO65F7asPG3DQ++Q96tr7/gZWdq5SA
         h0QuYcRrEcVqytReH/YB5lCx9867kUri4LS+eAnyO8vfw12/OBmjctZbMtxvuJxqtSeB
         80LQ==
X-Gm-Message-State: AJIora8/FbNWDiIYB3bIW+WJ99BGZT12TvDJsW/fIma5g4K9ebXgxwMw
        rDrQkp3zkehHjz0w3JH9UcNROg==
X-Google-Smtp-Source: AGRyM1s9JECEg8k5On7lZDQn848nND8BHmVl/cB0lI4TDayD/8sEB5lu+MN960QDnjoslc2ylg71sA==
X-Received: by 2002:a05:651c:516:b0:25d:e010:fb97 with SMTP id o22-20020a05651c051600b0025de010fb97mr5315117ljp.445.1658819285763;
        Tue, 26 Jul 2022 00:08:05 -0700 (PDT)
Received: from krzk-bin.lan (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id q23-20020a05651232b700b0047f6b4a53cdsm3045061lfe.172.2022.07.26.00.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 00:08:05 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Harini Katakam <harini.katakam@xilinx.com>,
        Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH v2 1/2] dt-bindings: net: cdns,macb: use correct xlnx prefix for Xilinx
Date:   Tue, 26 Jul 2022 09:08:01 +0200
Message-Id: <20220726070802.26579-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use correct vendor for Xilinx versions of Cadence MACB/GEM Ethernet
controller.  The Versal compatible was not released, so it can be
changed.  Zynq-7xxx and Ultrascale+ has to be kept in new and deprecated
form.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>

---

Changes since v1:
1. Correct deprecated:true.
2. Add Rb tag.

Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
---
 Documentation/devicetree/bindings/net/cdns,macb.yaml | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/cdns,macb.yaml b/Documentation/devicetree/bindings/net/cdns,macb.yaml
index 762deccd3640..dfb2860ca771 100644
--- a/Documentation/devicetree/bindings/net/cdns,macb.yaml
+++ b/Documentation/devicetree/bindings/net/cdns,macb.yaml
@@ -20,10 +20,17 @@ properties:
 
       - items:
           - enum:
-              - cdns,versal-gem       # Xilinx Versal
               - cdns,zynq-gem         # Xilinx Zynq-7xxx SoC
               - cdns,zynqmp-gem       # Xilinx Zynq Ultrascale+ MPSoC
           - const: cdns,gem           # Generic
+        deprecated: true
+
+      - items:
+          - enum:
+              - xlnx,versal-gem       # Xilinx Versal
+              - xlnx,zynq-gem         # Xilinx Zynq-7xxx SoC
+              - xlnx,zynqmp-gem       # Xilinx Zynq Ultrascale+ MPSoC
+          - const: cdns,gem           # Generic
 
       - items:
           - enum:
@@ -183,7 +190,7 @@ examples:
             #address-cells = <2>;
             #size-cells = <2>;
             gem1: ethernet@ff0c0000 {
-                    compatible = "cdns,zynqmp-gem", "cdns,gem";
+                    compatible = "xlnx,zynqmp-gem", "cdns,gem";
                     interrupt-parent = <&gic>;
                     interrupts = <0 59 4>, <0 59 4>;
                     reg = <0x0 0xff0c0000 0x0 0x1000>;
-- 
2.34.1

