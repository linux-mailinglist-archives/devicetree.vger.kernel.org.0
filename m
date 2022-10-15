Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1090E5FFBDB
	for <lists+devicetree@lfdr.de>; Sat, 15 Oct 2022 22:11:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229666AbiJOULw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Oct 2022 16:11:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbiJOULv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Oct 2022 16:11:51 -0400
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C278045F47
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 13:11:50 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBYMu109094;
        Sat, 15 Oct 2022 15:11:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1665864694;
        bh=3W8w7YFCxLwMM646wryVFkXGy2Rq3g7xmmUtsBKbeTI=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=AiZSzQCzMhctn+ejXUd5oLWqvq/OKVEdwl4BlfUZA7SgNJNbO1LQNF1gzJNmxbg4l
         a3TUf27eaBLNDaKhUEfIjshauZqOW6eYvxgCzsjouf7pcSIHbkAkj4zypMAOGYOg0j
         q5Wot77preiXM65ls11vdMQ90H3M+YPi6e3uIUL4=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29FKBY08124379
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sat, 15 Oct 2022 15:11:34 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Sat, 15
 Oct 2022 15:11:33 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Sat, 15 Oct 2022 15:11:34 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBVV5013992;
        Sat, 15 Oct 2022 15:11:32 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <vkoul@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <vigneshr@ti.com>
CC:     <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH 1/2] dt-bindings: phy-j721e-wiz: add j784s4 compatible string
Date:   Sat, 15 Oct 2022 13:11:22 -0700
Message-ID: <20221015201123.195477-2-mranostay@ti.com>
X-Mailer: git-send-email 2.38.0.rc0.52.gdda7228a83
In-Reply-To: <20221015201123.195477-1-mranostay@ti.com>
References: <20221015201123.195477-1-mranostay@ti.com>
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

Add ti,j784s4-wiz-10g compatible string to binding documentation.

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index 2225925b6dad..a9e38739c010 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -17,6 +17,7 @@ properties:
       - ti,j721e-wiz-10g
       - ti,am64-wiz-10g
       - ti,j7200-wiz-10g
+      - ti,j784s4-wiz-10g
 
   power-domains:
     maxItems: 1
-- 
2.38.0.rc0.52.gdda7228a83

