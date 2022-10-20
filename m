Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CD9D6055F3
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 05:28:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229464AbiJTD2i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 23:28:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbiJTD2f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 23:28:35 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7D7F1DC4CD
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 20:28:34 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29K3SOPA081623;
        Wed, 19 Oct 2022 22:28:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666236504;
        bh=aNMp7u9Ulla+QndDqyto/VLtVRWWB3ppOYbaIR+/Q7I=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=PIzCB9sdVQ5QE6oM0Oe7IsareduCx10EMKoIJW5chdDvbM4j4865+FNHEkmpSIw/1
         52QqKSsW7kBYM0sRlwP1boLmwYTCC0O9zwWQ12WjsCYMVTM+PODOR7GIt3LSMyIizP
         +YXHoLk7gIyNkVYQ5/VoADBGemuTu+O6Xdxint+o=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29K3SOdC120109
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 19 Oct 2022 22:28:24 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 19
 Oct 2022 22:28:24 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 19 Oct 2022 22:28:24 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29K3SKVJ071500;
        Wed, 19 Oct 2022 22:28:22 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <nm@ti.com>, <vigneshr@ti.com>,
        <krzysztof.kozlowski+dt@linaro.org>, <robh+dt@kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Matt Ranostay <mranostay@ti.com>
Subject: [PATCH v2 1/2] dt-bindings: mfd: ti,j721e-system-controller: add compatible strings for other platforms
Date:   Wed, 19 Oct 2022 20:28:01 -0700
Message-ID: <20221020032802.308545-2-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
In-Reply-To: <20221020032802.308545-1-mranostay@ti.com>
References: <20221020032802.308545-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
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

