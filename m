Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CF564BDEDA
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:47:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379824AbiBUQFE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 11:05:04 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379837AbiBUQFD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 11:05:03 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF1C026AF6
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 08:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645459480; x=1676995480;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=qVfsUtEKp+x8O41F2tW67FgG0Ziy8k7baERGbcFiYng=;
  b=T3NZHAJPy9ehsA7hIJVENSIVobqYrdk0LtETpy/k7Qp0hVofemOYKc7D
   lAlUFHPOeTkUbm4dYC1vxikEgU8NLHKucCXJPVsaStvDRcgRPtMOTTPny
   NIp4FZvClZY2z2PE3cxekG7YULeV+KLedrwg4IOGIsTm5TArjdkZQIBmw
   LcSmDPN7Ap+4mSi10rHy/cjqJOxVDA/V03ZD00qYynYSpnYwxYjBsmN9U
   vVLMRaDfC6rFFAmQOliYN1yhZQGA8DkwHTRCUjLAvrAxjc0CRGcfo27rs
   cIEnIC9PwAEIcahQgzfm4nbAZwW5fl9BjeyI/ZIi/cpsVeu4OfBCc/Gab
   A==;
X-IronPort-AV: E=Sophos;i="5.88,386,1635199200"; 
   d="scan'208";a="22216139"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 21 Feb 2022 17:04:37 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 21 Feb 2022 17:04:37 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 21 Feb 2022 17:04:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645459477; x=1676995477;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=qVfsUtEKp+x8O41F2tW67FgG0Ziy8k7baERGbcFiYng=;
  b=N4Ss68+meapreRsfr2OpwPHTx72F8kys+0jFnWVa2WMV4ROwZZE3cNtO
   qivyCmNLdjkE6gtJ537ukIIqowk4XRhvrzCHQPRv5pF0LyRLDJmTSA6oK
   S6gV4LEmFeQISaVAAbtAxJUJBUOnBWOWNaIToWprYr1oDY9d9HZYmlD0I
   2ATxACFOlmwUoL5s7XlBaSxTSCNkDbRM1J8Cbd7iTPY1Cr/GxSecrUBLZ
   Ef41reXv3s4wBvhzssjL+TXnGi+kk4kkal3pTO0pTBYSlKZ+BimqE+NqB
   XPMkiH9xpk987OrXdaN8CbBtADGMm0zx9xlwHFKY/EoXo3gcl2H02SM/X
   w==;
X-IronPort-AV: E=Sophos;i="5.88,386,1635199200"; 
   d="scan'208";a="22216138"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Feb 2022 17:04:37 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DE696280075;
        Mon, 21 Feb 2022 17:04:36 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Matthias Schiffer <matthias.schiffer@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh@kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH v2 1/5] dt-bindings: arm: fsl: add TQ Systems boards based on i.MX6UL(L)
Date:   Mon, 21 Feb 2022 17:04:15 +0100
Message-Id: <20220221160419.550640-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220221160419.550640-1-alexander.stein@ew.tq-group.com>
References: <20220221160419.550640-1-alexander.stein@ew.tq-group.com>
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
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Acked-by: Rob Herring

 .../devicetree/bindings/arm/fsl.yaml          | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 23e678232451..9343b64ce55e 100644
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

