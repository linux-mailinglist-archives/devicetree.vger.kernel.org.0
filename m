Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF65B609EAF
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 12:07:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230475AbiJXKHj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 06:07:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230512AbiJXKHf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 06:07:35 -0400
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CBCA61D63
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 03:07:19 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29OA7Bak087898;
        Mon, 24 Oct 2022 05:07:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666606031;
        bh=kj9ErMU4fZSULVtfNbA1tO0p6AQSh+yuG3aIcgOq+7Q=;
        h=From:To:CC:Subject:Date;
        b=JxSDcli+UV61OlHgRs1AaPruTtqsdjIXLi31dgD7mWU9xBHX3jyeTsnSPJTVgoWRG
         bpFoOnpaNN16Lf25OVUjNKVJKpJip4l5gbDcLk4EvJRe6HiKdMfH2WCym5Q6jYUz8a
         j5MlACk7rOFI2Uzr79exudEYd42oYbaZ82w2XTXU=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29OA7BKC015932
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 24 Oct 2022 05:07:11 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Mon, 24
 Oct 2022 05:07:10 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Mon, 24 Oct 2022 05:07:10 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29OA78UF045981;
        Mon, 24 Oct 2022 05:07:09 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <lee@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <miquel.raynal@bootlin.com>
CC:     <devicetree@vger.kernel.org>, Matt Ranostay <mranostay@ti.com>
Subject: [PATCH] dt-bindings: mfd: ti,am3359-tscadc: change clock-names property to enum
Date:   Mon, 24 Oct 2022 03:07:06 -0700
Message-ID: <20221024100706.386286-1-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Several J7 platforms use adc_tsc_fck instead of fck for clock naming. To
avoid warnings from dt-schema on invalid clock naming; create an enum with
both fck, and adc_tsc_fck options.

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
index 34bf6a01436f..fbb44531ed88 100644
--- a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
@@ -28,7 +28,9 @@ properties:
     maxItems: 1
 
   clock-names:
-    const: fck
+    enum:
+      - fck
+      - adc_tsc_fck
 
   dmas:
     items:
-- 
2.38.GIT

