Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1AAC4ADA46
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:43:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359509AbiBHNmg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:42:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359536AbiBHNmf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 08:42:35 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 130F5C03FED5
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 05:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644327754; x=1675863754;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vu8zS0jczeUtbHlyjUmW7yztnVCBsWxY9V6OA0BrJLk=;
  b=Adq73psBnEsOzLsnkzavpS9R7rc3bRjhtAyA/CbImZtSIPRdZYHxQItd
   4zkdMLb1Yr+eN6vQAm8g9JbH+1zRCrlAhs1Q2LYChqeWrax4S1QmkogZ6
   jjuC6b6jmh6yRo7Auf2P+HciUgmAY9JHFcnXstA5Ul2GPciEn3fbIPM06
   M8GwmIFGoCUko3VaJ6hi60N7erjBsoi6FtzGlZBL2K2ODWwyo2ouJzmM7
   Z6T5ieFlwwRPkA7TlW/naQN4TvV+1gGc4oTb/i4N9iEmiHsZRaD1ELK0T
   Sv5TjFnUI6G9mP5PfgEIc487GXc1go3wcQQMnn/mQj+5akIwk+UVKyDlB
   A==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21962444"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Feb 2022 14:42:30 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 08 Feb 2022 14:42:30 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 08 Feb 2022 14:42:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644327750; x=1675863750;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vu8zS0jczeUtbHlyjUmW7yztnVCBsWxY9V6OA0BrJLk=;
  b=CqHXgxMMEXw7BS3eDqFX09YuYvlSm9iYcho4v2MIQJl+5ygrFzdBT7jF
   g7ueEWnN4UlH8N1Mf2R9/0GSdj6fOZTZKfZKYEKpJIvUcQC9ZHay27KPy
   dBkv8ZsVca9n4juxBLcBkR+iLt2U6AFr7566JRYh+b3NOI/7WkfzBTcCW
   JAWyN2EsjL/6msnB4CsK2ZutHKz/VCDb9X9YwtStcnYwGZPPu2wHEFFrX
   C9AilUnUoMawdgc3+dJDjxwYowLSBY72SdTXSeqOtFUPKy9N0oatFBsX/
   X/aBz7Oc/jJGzC55Mf9KW/zLF3H0riz2Jq5EMEOFkLFhmjY9/AqTQhCz8
   A==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21962443"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Feb 2022 14:42:30 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 47FC2280075;
        Tue,  8 Feb 2022 14:42:30 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Matthias Schiffer <matthias.schiffer@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 1/5] dt-bindings: arm: fsl: add TQ Systems boards based on i.MX6UL(L)
Date:   Tue,  8 Feb 2022 14:42:19 +0100
Message-Id: <20220208134223.908757-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220208134223.908757-1-alexander.stein@ew.tq-group.com>
References: <20220208134223.908757-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Matthias Schiffer <matthias.schiffer@tq-group.com>

TQMa6ULx is a SOM family using NXP i.MX6UL CPU family.
TQMa6ULLx is a SOM family using NXP i.MX6ULL CPU family.
Both are available as a socket type as well as an LGA type.
For both variants there are the mainboards MBa6ULx and MBa6ULxL, trailing
'L' is LGA version.
Finally there is the possibility to use the socket module with an LGA
adapter on the MBa6ULxL.

The SOM needs a mainboard, therefore we provide compatibles using this
naming schema:

"tq,imx6ul-<SOM>" for the module and
"tq,imx6ul-<SOM>-<SBC>" for when mounted on the mainboard.
The i.MX6ULL version is done similar.

Signed-off-by: Matthias Schiffer <matthias.schiffer@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../devicetree/bindings/arm/fsl.yaml          | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index b50cb9b7261c..021695a82bf8 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -613,6 +613,28 @@ properties:
           - const: kontron,imx6ul-n6310-som
           - const: fsl,imx6ul
 
+      - description: TQ-Systems TQMa6UL1 SoM on MBa6ULx board
+        items:
+          - enum:
+              - tq,imx6ul-tqma6ul1-mba6ulx
+          - const: tq,imx6ul-tqma6ul1      # MCIMX6G1
+          - const: fsl,imx6ul
+
+      - description: TQ-Systems TQMa6UL2 SoM on MBa6ULx board
+        items:
+          - enum:
+              - tq,imx6ul-tqma6ul2-mba6ulx
+          - const: tq,imx6ul-tqma6ul2      # MCIMX6G2
+          - const: fsl,imx6ul
+
+      - description: TQ-Systems TQMa6ULxL SoM on MBa6ULx[L] board
+        items:
+          - enum:
+              - tq,imx6ul-tqma6ul2l-mba6ulx # using LGA adapter
+              - tq,imx6ul-tqma6ul2l-mba6ulxl
+          - const: tq,imx6ul-tqma6ul2l      # MCIMX6G2, LGA SoM variant
+          - const: fsl,imx6ul
+
       - description: i.MX6ULL based Boards
         items:
           - enum:
@@ -667,6 +689,21 @@ properties:
           - const: kontron,imx6ull-n6411-som
           - const: fsl,imx6ull
 
+      - description: TQ Systems TQMa6ULLx SoM on MBa6ULx board
+        items:
+          - enum:
+              - tq,imx6ull-tqma6ull2-mba6ulx
+          - const: tq,imx6ull-tqma6ull2      # MCIMX6Y2
+          - const: fsl,imx6ull
+
+      - description: TQ Systems TQMa6ULLxL SoM on MBa6ULx[L] board
+        items:
+          - enum:
+              - tq,imx6ull-tqma6ull2l-mba6ulx # using LGA adapter
+              - tq,imx6ull-tqma6ull2l-mba6ulxl
+          - const: tq,imx6ull-tqma6ull2l      # MCIMX6Y2, LGA SoM variant
+          - const: fsl,imx6ull
+
       - description: i.MX6ULZ based Boards
         items:
           - enum:
-- 
2.25.1

