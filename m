Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADF965E6D46
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 22:44:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbiIVUox (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 16:44:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229841AbiIVUou (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 16:44:50 -0400
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4481F814C4
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 13:44:48 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28MKigS4055439;
        Thu, 22 Sep 2022 15:44:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1663879482;
        bh=0sy7ZHg4ZGJDDF3rNGXFcw4vzafcApD9vAlUgJkdA7o=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=RUjltenmAPy0CVKWBrtTkYCF6jHsoxHNDH9G7aJ/yQN7RVDQVRFmuF2Oe7XL1w4Ov
         zJc9FwYGObMkQYX82hk6aWUDO8Qb2GNkwNDhDXp3D5zGjrnjadeG2plLqhZjjY1dBJ
         C5twldcF/SD997H9DBV0/Jp6uISk4rVwTH2Bsv6U=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28MKigap081546
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 22 Sep 2022 15:44:42 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Thu, 22
 Sep 2022 15:44:41 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Thu, 22 Sep 2022 15:44:42 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28MKidaQ064176;
        Thu, 22 Sep 2022 15:44:41 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <vigneshr@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH 1/2] dt-bindings: PCI: ti,j721e-pci-host: add interrupt controller definition
Date:   Thu, 22 Sep 2022 13:44:33 -0700
Message-ID: <20220922204434.74764-2-mranostay@ti.com>
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

Add missing 'interrupt-controller' property and related subnodes to resolve
the following warning:

arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dtb: pcie@2910000: Unevaluated properties are not allowed ('interrupt-conroller' was unexpected)
        From schema: Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 .../devicetree/bindings/pci/ti,j721e-pci-host.yaml  | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
index 2115d5a3f0e1..0f5914a22c14 100644
--- a/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
+++ b/Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
@@ -76,6 +76,19 @@ properties:
 
   msi-map: true
 
+  interrupt-controller:
+    type: object
+    additionalProperties: false
+
+    properties:
+      interrupt-controller: true
+
+      '#interrupt-cells':
+        const: 1
+
+      interrupts:
+        maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.38.0.rc0.52.gdda7228a83

