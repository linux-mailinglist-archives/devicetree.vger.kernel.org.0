Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 503EE634E4E
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 04:24:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235511AbiKWDYd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 22:24:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235516AbiKWDYc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 22:24:32 -0500
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02988B70F3
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 19:24:29 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AN3ONr1067635;
        Tue, 22 Nov 2022 21:24:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1669173863;
        bh=781KNNtp2GnyWF1CjUOW7J9MMkMck3NMwESX3iG3Zjk=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=TNy0S4YDheNj16bpdrIMhdR0bekjTOz3l+TyyExuTLWlG4Ipli/aSu/VTcQLidAa6
         PGBQIW/yIgXay92pdyqhEUkSxcEt+m9BDhOrwBxZAPKD0owcozpoZmCyqZbTWqbekG
         jMdxNv9W+Mm/Rj+brRJpsiSmqMWxCrcXO10OdM2M=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AN3ONVV004631
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 22 Nov 2022 21:24:23 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 21:24:22 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 21:24:22 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AN3OJOS005876;
        Tue, 22 Nov 2022 21:24:21 -0600
From:   Matt Ranostay <mranostay@ti.com>
To:     <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>
CC:     <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH v2 1/2] dt-bindings: phy-j721e-wiz: add j721s2 compatible string
Date:   Tue, 22 Nov 2022 19:24:12 -0800
Message-ID: <20221123032413.1193961-2-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
In-Reply-To: <20221123032413.1193961-1-mranostay@ti.com>
References: <20221123032413.1193961-1-mranostay@ti.com>
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
index a9e38739c010..c54b36c104ab 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -15,6 +15,7 @@ properties:
     enum:
       - ti,j721e-wiz-16g
       - ti,j721e-wiz-10g
+      - ti,j721s2-wiz-10g
       - ti,am64-wiz-10g
       - ti,j7200-wiz-10g
       - ti,j784s4-wiz-10g
-- 
2.38.GIT

