Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4909A70BEBC
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 14:51:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230293AbjEVMvs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 08:51:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbjEVMvr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 08:51:47 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEDA48E
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:51:46 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6af8a21556fso2777a34.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684759906; x=1687351906;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YYQC+PvpKE6bixEeuKCSpjLHIDEpJf3TOHQP6i8oRkU=;
        b=OshAi+QYS9WztNMntr7xxIBK1rrCcxLTEj9enONlb7XnTP25RAGlpUwkL/rwHvJ3zv
         MIaGEi04I6MA3nZ/umDci33LVBedSxuwTuvYtuiVu2sBwdMVx2DJLcE7O211+UrjQw8E
         Q0RyPU/CwQcBuo/BNWHyjkolMcYamFU95bUbtEB4Of2Uk7MpSHCd4Rc5Vzx9dzv/Hr0J
         2CHx1RrbcpT59ro7wgs6Lr27xxOzgW8fRjKtsuhcpwKOjO6DfGpygoquPC/qXmHiWPeJ
         hWyg8vdKMO74WR50Xr6Cnhex6VDLpviujkdpKtpLNQ7A5P0KXrozBP1DQrxtxpL9RhzE
         pM3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684759906; x=1687351906;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YYQC+PvpKE6bixEeuKCSpjLHIDEpJf3TOHQP6i8oRkU=;
        b=Ly2JwnvRcbk0vu1e4i/WTvUxACRX0N58/ZJkfYNrNRFMcxWIwzGx3yhw392QH8I9NU
         IEyo47tksmkDfUAJJff+jld10rxbAAmZrq/Vp6irEiDeqtbXa09KmQkk9j+VhU51GVzh
         Ys0KQvIQIzICtl2xkYXbRELfB4OIYc8pLbJpXWqFQA6BLvSzkiF9cdiY/o6zG/aYALYr
         KOOtGBb9rjBnMYMyXkzOnVaN2lQIIiTk87fqA+SM4ReB9ogH2PuKzCtM0ZPkA3bjM9+5
         aq12Rjlo1I1wTHJFmAwpL++7owc+vbV2w/1xic1J96cJ4x0JmaIvQUGQHn4VrAi6LHRX
         60/Q==
X-Gm-Message-State: AC+VfDziUVcrc7qczEdRKpRw8/l1o3N2XTjS0itOqmWfu99kcH45Jbry
        wx/TVlGICcB0imojCpXWO0V+x+kdi8Y=
X-Google-Smtp-Source: ACHHUZ7q6CpWKKvPeoq2ft4TtR+AJ6XK6iG152lXCNduUlOBfdr9DjY+hqrhuLJFkotdvy5dpM6efg==
X-Received: by 2002:aca:efc6:0:b0:385:d91:ee30 with SMTP id n189-20020acaefc6000000b003850d91ee30mr5061801oih.3.1684759906172;
        Mon, 22 May 2023 05:51:46 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:b71d:e403:4337:204f])
        by smtp.gmail.com with ESMTPSA id r126-20020acada84000000b003943e08ee03sm2676408oig.16.2023.05.22.05.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 05:51:45 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v5 1/4] dt-bindings: display: bridge: ldb: Adjust imx6sx entries
Date:   Mon, 22 May 2023 09:51:26 -0300
Message-Id: <20230522125129.526604-1-festevam@gmail.com>
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
Changes since v4:
- Replaced items: with const: for the single item (Conor)

 .../bindings/display/bridge/fsl,ldb.yaml      | 26 ++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 07388bf2b90d..d97064140547 100644
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
@@ -74,6 +74,26 @@ allOf:
           properties:
             port@2: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx6sx-ldb
+    then:
+      properties:
+        reg:
+          maxItems: 1
+        reg-names:
+           const: ldb
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

