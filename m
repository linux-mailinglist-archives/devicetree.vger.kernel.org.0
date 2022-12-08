Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21DBB646C2A
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 10:46:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230449AbiLHJqM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 04:46:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230416AbiLHJp4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 04:45:56 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AE1973F7E
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 01:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670492738; x=1702028738;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=yhjU3FouTLZkNXCNcABeX9zaLe4WwPV4oXIVd2IeUko=;
  b=gEF96UbtCUA/cMiVwQW8JuYQ5dEcaU2/3P7PmVKNLRslCJ+8mvIik1fj
   871nvtSEeAWMX+WhtLSFEb9cuX3p9M8nVF3lQDZvwCtGWuHqGcX6I3UB2
   qji3PYAc3ldqgw65xG9zw3uD7PqK/bUYVTc2KtOF7Q5fOsljtXRyPC6h5
   UQPXGklSJxJ0TDth04ul1fxo0z+bldhZIBsfBlNk9F4eXobGA408ADbN5
   oGgk0xWZXy3S7bkL3gNYg9qshnzLDHZNMtyLbkyKYPS+idUoQCmxKVV2o
   AVTukOeJbhmAY0/mzgbumJn7CD3ziXVOgNfQ7nGHFAvcjfM5SqNyajyI9
   w==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27832957"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Dec 2022 10:45:33 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 08 Dec 2022 10:45:33 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 08 Dec 2022 10:45:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670492733; x=1702028733;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=yhjU3FouTLZkNXCNcABeX9zaLe4WwPV4oXIVd2IeUko=;
  b=Mbljh1T0u+Kd9ObhAOPEQSbdDECnGsuI/VFjq/qKUuqAlR3Z5PMq9j+3
   gKFSyDVzjGiFS2nTIHRudtZFLcH61LEquqWjNug5XY3RZbDAxUM5Tl+mV
   SFgdmdv3CIPydJpsPClHELZHhMPqZEM++XJTINrUa8+nPaZj6UwMPJS0o
   mPS5arasIYlbPW+nldg74luLyq5yb4Gjw7LxmOK2Yei7bxNMl9g/clTXj
   3BaEBZx0V8Oge1DcYfvj5QuCqvA/MP4SrvOsFlz0ZGVZ1vk+3I09Yy1oS
   0p3Pyesgga1qVNs4IDyp7HZV1cqtPNUvYZ57uj0MOvCpLIWjokJR2F2KV
   A==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27832953"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Dec 2022 10:45:31 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F3764280071;
        Thu,  8 Dec 2022 10:45:29 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marek Vasut <marex@denx.de>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/1] dt-bindings: lcdif: Fix constraints for imx8mp
Date:   Thu,  8 Dec 2022 10:45:19 +0100
Message-Id: <20221208094519.3561610-1-alexander.stein@ew.tq-group.com>
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
Changes in v2:
* Squash both patches into one
* Split the conditionals from fsl,imx6sx-lcdif
* Mark power-domains as required for fsl,imx8mp-lcdif
* Ignored the A-b & R-b due to reorganization

I'm not sure if this is the best way to add the constraints. I noticed that
imx6sx also uses a power-domain, but imx6ul which is compatible to imx6sx does
not, so they can't be merged.

I also have noticed that dtbs_check doesn't raise a warning when
power-domains is actually missing.

 .../bindings/display/fsl,lcdif.yaml           | 31 ++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 876015a44a1e6..24014651f7dc8 100644
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
@@ -81,7 +84,33 @@ allOf:
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
+        power-domains:
+          minItems: 1
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

