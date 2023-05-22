Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EF9570CA8B
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 22:14:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230497AbjEVUOa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 16:14:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232345AbjEVUO3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 16:14:29 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6DCDB9
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:14:27 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6af8ccb491cso18592a34.0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684786467; x=1687378467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qnNkxpreDgq26CG57fd0M0OJM5UJkONUnE3UR9s1bqM=;
        b=VYAmIGbOqs7k5HbHxThot+Ykl3Gm8VTVHflv+WQl41OQL48dR1VMdTx8R6keOZqmxX
         XduIaY9g228ZAm3zAYD4ptoRRQ2AKFJDehvAJ+OOZBlEBXf6UkkDWXu8RAQ74I7QQRsR
         nilXICPsNAiDiLK1HtgnhiZJ6lHca3/j4AQWQOgQHuSN/X1ztkL+IUDEDiNmJeNKWf0i
         zLCcwN8gAceytpW6xWUfpUSoEdW6SQf9O2uCZ7vepbMeyHN+qW6m/cDNInG+ssqlSWse
         urwcbjVJJnRReqhc8VgXXGgq+QGPo4/GYOts5ASo2zEPkrLLvcxKlAZv6IMRylJxX0x8
         PHrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684786467; x=1687378467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qnNkxpreDgq26CG57fd0M0OJM5UJkONUnE3UR9s1bqM=;
        b=XYgmFIu2DSyp+/z+Sfvmegk+TnJAa9TcoBv/OaqfH9xsmxvpSfechD4AqSXZIjWzUh
         Zod4sq9LcdJdw6J31St+SpS2ScpL4pWefMlFNELF0o5VZdlQBehMtpukCA1zQQ5MJWWV
         jwCB3mnhTcVBW8LrRfPjeWl8J4oJDnz+hIjvWOfsuqi2Xi0AXBGLmVR60Hr/yz2vYiVd
         THVDC3yP/0R+V8P+fNIgk3rGpXJquFJrdzQ85GcSI9DrOBZQWRyOpZtNkPsbPgayi8L3
         1tSr5ByqlwxP6zfgm9Ak+4RPW3CuLVKCaJJruQaRK6/j5QGDEviGLisvE+KiogdWiwua
         kloA==
X-Gm-Message-State: AC+VfDw+u3DcScMfY0PMx3zQ2EyU2FDgt4xk/+4sau/9UKt08pRZ2ibV
        QKScfkv4hDf0hoxyY8WhzKI=
X-Google-Smtp-Source: ACHHUZ43QBPidqOZayheIayd4E1WwxeTeDcjnXlor6tlDw7hDy8ua2hgxxFXIKK5CGTrIrKaUwJPLA==
X-Received: by 2002:a05:6830:3886:b0:6ad:23c2:e0ab with SMTP id bq6-20020a056830388600b006ad23c2e0abmr5756147otb.2.1684786467032;
        Mon, 22 May 2023 13:14:27 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:9a57:1c6:1c2e:4047])
        by smtp.gmail.com with ESMTPSA id q11-20020a056830018b00b006aaff32ac36sm2692857ota.66.2023.05.22.13.14.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 13:14:26 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v6 2/5] dt-bindings: display: bridge: ldb: Adjust imx6sx entries
Date:   Mon, 22 May 2023 17:14:01 -0300
Message-Id: <20230522201404.660242-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230522201404.660242-1-festevam@gmail.com>
References: <20230522201404.660242-1-festevam@gmail.com>
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

On the i.MX6SX there is a single entry for 'reg', so add some logic to
reflect that.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Dependency: This depends on bd60d98a11da ("dt-bindings: display: bridge: ldb: Adjust imx6sx entries"),
which is available on linux-next.

Changes since v5:
- Dropped reg-names for imx6sx (Marek).
- Indicated the dependency to avoid error when Rob's robot runs.

 .../bindings/display/bridge/fsl,ldb.yaml      | 24 ++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 07388bf2b90d..7ff45e3d4929 100644
--- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -28,12 +28,11 @@ properties:
     const: ldb
 
   reg:
+    minItems: 1
     maxItems: 2
 
   reg-names:
-    items:
-      - const: ldb
-      - const: lvds
+    maxItems: 2
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -57,6 +56,7 @@ properties:
 
 required:
   - compatible
+  - reg
   - clocks
   - ports
 
@@ -74,6 +74,24 @@ allOf:
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

