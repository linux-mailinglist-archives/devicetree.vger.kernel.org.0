Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21BC2647154
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 15:08:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbiLHOIv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 09:08:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229636AbiLHOIt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 09:08:49 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF35B314
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 06:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670508525; x=1702044525;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=o2rKyCWo/i92zJrOkGubl8HRyLvMB0jfTjO6UhKs7xc=;
  b=hXOnGZv+IROjHhvo8sBG4YrkgBqAo78vGsfd0bYF3wwvG8dUhhxDCG50
   iUbSe3Tu+hC1YVjP0VUwtHb7CA82wYFsDFHtZ0Mt7Ib+n4olSC1y4uPnx
   6KmGZ4UchiKeM5Gg3wCkaR2NFuuRNm1VSurZpDNlbo04fGSn3v4esAohr
   ZErvfQOJYcdhYe3k7Br5yqkVWt95zu8t3pSrSlWTx4jTm02n7J4fjQC3r
   ZOsN1Ox/mY5Yash3yPv5IF8CB4OXIERJJ45W8+3Kl8wq0HdJ/zuZVjsQ3
   MsjzzTWsXisw+ALTTu5dLeQnDPJxDlYXvWzbFZYLiylGa5pRUfAx5PHP7
   w==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27842106"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Dec 2022 15:08:43 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 08 Dec 2022 15:08:44 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 08 Dec 2022 15:08:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670508523; x=1702044523;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=o2rKyCWo/i92zJrOkGubl8HRyLvMB0jfTjO6UhKs7xc=;
  b=myBfQmB5Uo8LsbyG06Z499sCGkE/h581fv6Imo35n+UQxk0NNa4qKndp
   ilbNfY4VFjvtWDBqVPJv2VHVa0JVNTOAgdH6wl5E8qj85aRugj5ekopkY
   3ogR0QeD4LNcsXupd3fhGWfLTn7AqrQW0avWM0Y0XXTgMecTMNrssWjSk
   kRWJmvAcGhcruK6xBzFilWYys3fypOj+a31SmQhHmk/iJopmCGFcG+vBx
   dAV9rQJSF6soyKmBoOo6W1Vbj5glfAkXlS4QXrEKj5XSM0p7+0VNH9FTg
   cepDFjG9mTig+VS/Hrkz9k+/KqaaH+A3eSWS3ww/tnxw7iKUCjqPjoO6r
   w==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27842104"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Dec 2022 15:08:43 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 66B7B280072;
        Thu,  8 Dec 2022 15:08:43 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marek Vasut <marex@denx.de>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: [PATCH v3 1/1] dt-bindings: lcdif: Fix constraints for imx8mp
Date:   Thu,  8 Dec 2022 15:08:40 +0100
Message-Id: <20221208140840.3227035-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.MX8MP uses 3 clocks, so soften the restrictions for clocks & clock-names.
This SoC requires a power-domain for this peripheral to use. Add it as
a required property.

Fixes: f5419cb0743f ("dt-bindings: lcdif: Add compatible for i.MX8MP")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v3:
* Removed power-domains minItems: 1 constraint

Changes in v2:
* Squash both patches into one
* Split the conditionals from fsl,imx6sx-lcdif
* Mark power-domains as required for fsl,imx8mp-lcdif
* Ignored the A-b & R-b due to reorganization

 .../bindings/display/fsl,lcdif.yaml           | 29 ++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 876015a44a1e6..f449cfc767899 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -52,6 +52,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description: The LCDIF output port
@@ -81,7 +84,31 @@ allOf:
           maxItems: 3
       required:
         - clock-names
-    else:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx8mp-lcdif
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          minItems: 3
+          maxItems: 3
+      required:
+        - clock-names
+        - power-domains
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - fsl,imx6sx-lcdif
+                - fsl,imx8mp-lcdif
+    then:
       properties:
         clocks:
           maxItems: 1
-- 
2.34.1

