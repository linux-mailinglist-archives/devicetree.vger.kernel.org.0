Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C2B360C5F6
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 10:00:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231394AbiJYIAl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 04:00:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230372AbiJYIAj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 04:00:39 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F5AA38A35
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 01:00:37 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29P80KjQ065816;
        Tue, 25 Oct 2022 03:00:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666684820;
        bh=s9y3I1DgYlF+7dOuCXkRS+dVVqfBONTGgTS3XPKz1Lk=;
        h=From:To:CC:Subject:Date;
        b=TBdL23bCRV2YTA6nDmDd/ZepBfw3t98VYwlZdMjgws5UzXMtOPhjD+FHEC6adPCi4
         44/OBlIu9toGYWR/p9NvaO650mP1b81hutZYjUUqZLBDY6A8u/t5hSiNH84ewhcdHG
         TK4y7CCQaKcb8Su7tSTYCiAB7ZalBznfxl5y/xpY=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29P80Kci082474
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 25 Oct 2022 03:00:20 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 25
 Oct 2022 03:00:19 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 25 Oct 2022 03:00:20 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29P80GGL114762;
        Tue, 25 Oct 2022 03:00:18 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <lee@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <miquel.raynal@bootlin.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH] dt-bindings: mfd: ti,am3359-tscadc: add missing power-domains property
Date:   Tue, 25 Oct 2022 01:00:14 -0700
Message-ID: <20221025080014.403457-1-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add optional power-domains property to avoid the following dt-schema
failures:

tscadc@40200000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
index 34bf6a01436f..23a63265be3c 100644
--- a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
@@ -52,6 +52,9 @@ properties:
     type: object
     description: Magnetic reader
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.38.GIT

