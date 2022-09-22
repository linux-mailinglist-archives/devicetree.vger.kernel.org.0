Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25F1E5E6D47
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 22:44:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbiIVUox (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 16:44:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229740AbiIVUou (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 16:44:50 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 448B9814C7
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 13:44:49 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28MKijnL070985;
        Thu, 22 Sep 2022 15:44:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1663879485;
        bh=L4nwi1Dr9PJPTrvCgOGMknOZq4MyXg6aj+GxNtU5xSA=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=uSNGqey/1Ia0hwihFhjA87r7sYC90exJJCYKnGoPD6qgcQJnP7oIWiHjqgj8uFVrC
         12UqSS39/dk+IuBGEkd/hDJUifeg2vnDA4AfyjkLMJSGq8AwzsOzikMM2s+0UVqJep
         I/RuDvq4u9AjzQx9f8iBn663fljEnmcv81PMhJJw=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28MKijpK009241
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 22 Sep 2022 15:44:45 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Thu, 22
 Sep 2022 15:44:45 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Thu, 22 Sep 2022 15:44:45 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28MKihLn023063;
        Thu, 22 Sep 2022 15:44:44 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <vigneshr@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH 2/2] dt-bindings: PCI: ti,j721e-pci-*: Add missing interrupt properties
Date:   Thu, 22 Sep 2022 13:44:34 -0700
Message-ID: <20220922204434.74764-3-mranostay@ti.com>
X-Mailer: git-send-email 2.38.0.rc0.52.gdda7228a83
In-Reply-To: <20220922204434.74764-1-mranostay@ti.com>
References: <20220922204434.74764-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Both interrupts, and interrupt names weren't defined in both EP and host
yaml. Also define the only possible interrupt-name as link_state, and
maxItems of interrupts to one.

This patch resolves the following warning:

arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dtb: pcie-ep@2910000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
        From schema Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml | 7 +++++++
 .../devicetree/bindings/pci/ti,j721e-pci-host.yaml         | 7 +++++++
 2 files changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
index aed437dac363..10e6eabdff53 100644
--- a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
@@ -58,6 +58,13 @@ properties:
   dma-coherent:
     description: Indicates that the PCIe IP block can ensure the coherency
 
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    items:
+      - const: link_state
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
index 0f5914a22c14..d9df7cd922f1 100644
--- a/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
+++ b/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
@@ -76,6 +76,13 @@ properties:
 
   msi-map: true
 
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    items:
+      - const: link_state
+
   interrupt-controller:
     type: object
     additionalProperties: false
-- 
2.38.0.rc0.52.gdda7228a83

