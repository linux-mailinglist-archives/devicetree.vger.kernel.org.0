Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 069E36098FA
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 05:55:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbiJXDyq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 23:54:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229717AbiJXDyo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 23:54:44 -0400
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 485AE1113
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 20:54:37 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29O3sSVU007077;
        Sun, 23 Oct 2022 22:54:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666583668;
        bh=aNMp7u9Ulla+QndDqyto/VLtVRWWB3ppOYbaIR+/Q7I=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=RIFGIlWfkwMdSNQ9o5qHrqOHGQEtYKuMpS5M4HYqqnBUm/4muPt++ctzTWR4Xm3pJ
         mLipLElgBtK/D1vi70JK089C3yp6fUsHw/lMq1PfNTCUEKfE0SQv20nJKNAmOlQByZ
         yC972I86NSUx7V6UgIvG4dsNIQggz+gP+8BSLusk=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29O3sS7g053955
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sun, 23 Oct 2022 22:54:28 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Sun, 23
 Oct 2022 22:54:28 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Sun, 23 Oct 2022 22:54:28 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29O3sPYa117248;
        Sun, 23 Oct 2022 22:54:26 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <nm@ti.com>, <vigneshr@ti.com>,
        <krzysztof.kozlowski+dt@linaro.org>, <robh+dt@kernel.org>,
        <lee@kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Matt Ranostay <mranostay@ti.com>
Subject: [PATCH RESEND v2 1/2] dt-bindings: mfd: ti,j721e-system-controller: add compatible strings for other platforms
Date:   Sun, 23 Oct 2022 20:54:04 -0700
Message-ID: <20221024035405.366208-2-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
In-Reply-To: <20221024035405.366208-1-mranostay@ti.com>
References: <20221024035405.366208-1-mranostay@ti.com>
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

There are multiple J7 based platforms, and the j721e-system-controller
shouldn't be define in non-j721e devices device trees.

This is mainly for clarity; but also useful in case there are future
erratas that need to be fixed for a specific platform.

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
index 873ee0c0973f..76ef4352e13c 100644
--- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
@@ -26,7 +26,9 @@ properties:
   compatible:
     items:
       - enum:
+          - ti,j7200-system-controller
           - ti,j721e-system-controller
+          - ti,j721s2-system-controller
       - const: syscon
       - const: simple-mfd
 
-- 
2.38.GIT

