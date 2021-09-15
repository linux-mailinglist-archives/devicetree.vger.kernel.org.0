Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F17E40CD0C
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 21:16:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231386AbhIOTRf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 15:17:35 -0400
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168]:34142 "EHLO
        mx0b-001ae601.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230230AbhIOTRe (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Sep 2021 15:17:34 -0400
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
        by mx0b-001ae601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18F5eGcZ026124;
        Wed, 15 Sep 2021 14:16:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PODMain02222019;
 bh=Z8ib6lB8KbLTkwjVRcR7h5XbX7gB8drrTq0rGeKBV64=;
 b=daLNMkQ9/xFoKHHF8t7xKuzTVozAjOdkaMcGIFxwYl6+ZCGfOy1ZfyoFhv/2/uf3FWKF
 rRuJvc3OQdL2lphAjH9K5G1LssdcRi69PhNACNon6yQ8KBYQANegGiWO/HzyTb+q/Vgh
 dflKuT107sCqitrw4hAMjQW6zXwVmDLiNYyQds9gOfUO3T06U9OUc63BpFfjTWTzoIrH
 d6uqnd8ANVP3oWAPY6tAaT9JeNZtGhvbZqaV4FMrxoRBi+YZea5LukS42JxkGB3Ary6E
 GYOFjHPhRIIi7YgdEjZaoLeSwa/JtJQhsNIK4Zij2CkKBlLfmfgzIUUrGZDC7adFPTJi 3g== 
Received: from ediex02.ad.cirrus.com ([87.246.76.36])
        by mx0b-001ae601.pphosted.com with ESMTP id 3b3287h8qw-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
        Wed, 15 Sep 2021 14:16:06 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.12; Wed, 15 Sep
 2021 20:14:45 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2242.12 via Frontend
 Transport; Wed, 15 Sep 2021 20:14:45 +0100
Received: from david-ubuntu20.crystal.cirrus.com (macC02XQ1DJJG5K.ad.cirrus.com [141.131.65.58])
        by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 19AADB2F;
        Wed, 15 Sep 2021 19:14:31 +0000 (UTC)
From:   David Rhodes <drhodes@opensource.cirrus.com>
To:     <broonie@kernel.org>, <robh@kernel.org>,
        <ckeepax@opensource.cirrus.com>, <patches@opensource.cirrus.com>,
        <alsa-devel@alsa-project.org>, <david.rhodes@cirrus.com>,
        <devicetree@vger.kernel.org>
CC:     David Rhodes <drhodes@opensource.cirrus.com>
Subject: [PATCH] ASoC: cs35l41: Binding fixes
Date:   Wed, 15 Sep 2021 14:14:22 -0500
Message-ID: <20210915191422.2371623-1-drhodes@opensource.cirrus.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: CIhnUgtVIHg3DyDhhuJTP042U3bvzEXE
X-Proofpoint-ORIG-GUID: CIhnUgtVIHg3DyDhhuJTP042U3bvzEXE
X-Proofpoint-Spam-Reason: safe
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix warnings and errors in DT bindings

Add newline at end of file
Replace 'unevaluatedProperties' with 'additionalProperties'
Add spi context to DT example
Add #sound-dai-cells to DT example
Rename to 'cirrus,cs35l41.yaml'

Signed-off-by: David Rhodes <drhodes@opensource.cirrus.com>
---
 .../{cs35l41.yaml => cirrus,cs35l41.yaml}     | 30 +++++++++++--------
 1 file changed, 18 insertions(+), 12 deletions(-)
 rename Documentation/devicetree/bindings/sound/{cs35l41.yaml => cirrus,cs35l41.yaml} (87%)

diff --git a/Documentation/devicetree/bindings/sound/cs35l41.yaml b/Documentation/devicetree/bindings/sound/cirrus,cs35l41.yaml
similarity index 87%
rename from Documentation/devicetree/bindings/sound/cs35l41.yaml
rename to Documentation/devicetree/bindings/sound/cirrus,cs35l41.yaml
index fde78c850286..3235702ce402 100644
--- a/Documentation/devicetree/bindings/sound/cs35l41.yaml
+++ b/Documentation/devicetree/bindings/sound/cirrus,cs35l41.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/sound/cs35l41.yaml#
+$id: http://devicetree.org/schemas/sound/cirrus,cs35l41.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Cirrus Logic CS35L41 Speaker Amplifier
@@ -135,17 +135,23 @@ required:
   - cirrus,boost-ind-nanohenry
   - cirrus,boost-cap-microfarad
 
-unevaluatedProperties: false
+additionalProperties: false
 
 examples:
   - |
-      cs35l41: cs35l41@2 {
-        compatible = "cirrus,cs35l41";
-        reg = <2>;
-        VA-supply = <&dummy_vreg>;
-        VP-supply = <&dummy_vreg>;
-        reset-gpios = <&gpio 110 0>;
-        cirrus,boost-peak-milliamp = <4500>;
-        cirrus,boost-ind-nanohenry = <1000>;
-        cirrus,boost-cap-microfarad = <15>;
-      };
\ No newline at end of file
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        cs35l41: cs35l41@2 {
+          #sound-dai-cells = <1>;
+          compatible = "cirrus,cs35l41";
+          reg = <2>;
+          VA-supply = <&dummy_vreg>;
+          VP-supply = <&dummy_vreg>;
+          reset-gpios = <&gpio 110 0>;
+          cirrus,boost-peak-milliamp = <4500>;
+          cirrus,boost-ind-nanohenry = <1000>;
+          cirrus,boost-cap-microfarad = <15>;
+        };
+    };
-- 
2.25.1

