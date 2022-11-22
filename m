Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3F6463383C
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 10:22:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232353AbiKVJWb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 04:22:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231300AbiKVJW3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 04:22:29 -0500
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60E9C127
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 01:22:26 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AM9MDvC105786;
        Tue, 22 Nov 2022 03:22:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1669108933;
        bh=o9i/OMGOHRPGOosaPjf4hYo2CPypwAf5yuzhoIoQpRU=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=HkYKcAxAeh0ciZHcV7jL097IP0AUUIkTu952gp6VsXBx4JmnIWaDXQ+7eo+mdi7BZ
         +N7/vcR+sML1Y7nqPU46S4S0bSYuYaNd112t/qtwTuZ+pI/oxRcvQYGfN4jxKaIEiy
         3cMRYAjQcT/bookMjbdXhmAg9ceAenq3FiA58VaU=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AM9MDil020762
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 22 Nov 2022 03:22:13 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 03:22:12 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 03:22:12 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AM9M9Kd014858;
        Tue, 22 Nov 2022 03:22:11 -0600
From:   Matt Ranostay <mranostay@ti.com>
To:     <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>
CC:     <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH 1/2] dt-bindings: phy-j721e-wiz: add j721s2 compatible string
Date:   Tue, 22 Nov 2022 01:22:02 -0800
Message-ID: <20221122092203.762308-2-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
In-Reply-To: <20221122092203.762308-1-mranostay@ti.com>
References: <20221122092203.762308-1-mranostay@ti.com>
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

Add ti,j721s2-wiz-10g compatible string to binding documentation.

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index a9e38739c010..b837748f33d1 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -18,6 +18,7 @@ properties:
       - ti,am64-wiz-10g
       - ti,j7200-wiz-10g
       - ti,j784s4-wiz-10g
+      - ti,j721s2-wiz-10g
 
   power-domains:
     maxItems: 1
-- 
2.38.GIT

