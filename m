Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B985709796
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 14:53:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229675AbjESMxB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 08:53:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbjESMxB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 08:53:01 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E425E106
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 05:52:59 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-19a336df959so255661fac.0
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 05:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684500779; x=1687092779;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a9av7E+KBFnnteqRg304+qgwLrRa6+hP4lNySNm1b0Y=;
        b=n02a3/skcMhxOIEqClk3apqbCxVbGKx2A7B0CKl72UHfmVe+7uBbqfMJ3eGDo06TQv
         CC7OfYVde3gYu0B4+YurAU95zCOxXGH+jRuO6aKaTQijHn7NWWAC5ElmxJFia5AfXUDE
         EDzepm+PU01oPnm5KIKGcwf+iVTs5WCcuPm7iObJK/k3lQxaTUk920nh0tsqAN5hSe3t
         sf3zm2YD5eKM3gbq7SnZXNNI8EWCzuPEvWJI0M5BoxXsNlB+vImob2n1NqpgBy4swvdQ
         yu61EKlLpUwNsomMDq0k8ajvv+ew9wr6WQe2XXT4mXV/dhvqaGd/yhaCZY+PgEJUEUoe
         NX+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684500779; x=1687092779;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a9av7E+KBFnnteqRg304+qgwLrRa6+hP4lNySNm1b0Y=;
        b=mH3iiWEhNFXBFX7VLHt4Imfh7YbE93yVB86TzcYJXNymrliE0xaBtkKNTGn/C0zsjZ
         F9mwmTnsJrIsYvgTRKQF+voyEDH23r7abob5UXeXCZx0QZpPY2YIgwYoBBtBaTaIvGTh
         GiWxvCfI5U4bCUQwDWhHP9l8IO5+wAd5x8qTEK0hWi7Ibmu1OYdbDNo5DA8LKdzAN5uF
         HW7XWBOiHRk6EbEQ0lit2BpPbkqw0hl7vO0T1hN3Hbr1P1Iqx6XP7jCv7XPVjDIYJTdn
         LvLcLVa1hDAr0GjsGIxiESr3qKiPvsLvfJbrD6ws0PAyNntnBLYXLAxG9hc4EMA/6qbg
         6qlQ==
X-Gm-Message-State: AC+VfDzNuVyyAM6sQ/OkAsshpc6bNN3+e+3PECZVAS+0uAX0MK0FkBAK
        dSdu0F6vcLJ+vugAzh7rGpI=
X-Google-Smtp-Source: ACHHUZ4i8pe55U16XOrGqFfMv2LgK9rTaEddNJJB83XQ5Fn5sF788AUKu/2why1Md6ZW3QGFTFH4Bg==
X-Received: by 2002:a05:6870:14d2:b0:196:3ce8:42da with SMTP id l18-20020a05687014d200b001963ce842damr1223318oab.3.1684500779192;
        Fri, 19 May 2023 05:52:59 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:3a54:c40b:8f0c:b968])
        by smtp.gmail.com with ESMTPSA id i19-20020a4ad093000000b0055278f297f8sm1375321oor.33.2023.05.19.05.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 05:52:58 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v4 1/4] dt-bindings: display: bridge: ldb: Adjust imx6sx entries
Date:   Fri, 19 May 2023 09:52:33 -0300
Message-Id: <20230519125236.352050-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

On the i.MX6SX there is a single entry for 'reg' and 'reg-names', so add
some logic to reflect that.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v3:
- None.

 .../bindings/display/bridge/fsl,ldb.yaml      | 28 +++++++++++++++++--
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 07388bf2b90d..cd63f9ef9484 100644
--- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -28,12 +28,12 @@ properties:
     const: ldb
 
   reg:
+    minItems: 1
     maxItems: 2
 
   reg-names:
-    items:
-      - const: ldb
-      - const: lvds
+    minItems: 1
+    maxItems: 2
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -74,6 +74,28 @@ allOf:
           properties:
             port@2: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx6sx-ldb
+    then:
+      properties:
+        reg:
+          maxItems: 1
+        reg-names:
+          items:
+            - const: ldb
+    else:
+      properties:
+        reg:
+          minItems: 2
+        reg-names:
+          items:
+            - const: ldb
+            - const: lvds
+
 additionalProperties: false
 
 examples:
-- 
2.34.1

