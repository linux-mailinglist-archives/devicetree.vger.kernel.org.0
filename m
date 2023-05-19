Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36288709688
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 13:29:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230486AbjESL30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 07:29:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229929AbjESL3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 07:29:25 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A191132
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 04:29:25 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-19a175f6901so483630fac.1
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 04:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684495764; x=1687087764;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pv4K+qiU1O4o8owbKu+jiaXfleyVInvL+71QwhxE4qo=;
        b=hLUNg+CEJwuxnfC4QvugTTW6++MLbFlnLM30RfeFRh+qQJvBpLwqg63agS5sAZ8CW9
         UMGZ3ICcKk4DcL4NY+q10+asR6Ms5ggTvKQ6Y99GwBFJixSawOgLQUtmSt+yBNO/aRPU
         XqKUdY9DU+eNugWX+xZflJDBBoNRcKSJeNI+inMt5XoH4EG4vLf/rsHCL5etF0lYPv1R
         fVRg+6JiBwfIJz+m+7yUsnSdCQYm/TihGXiLDP5OCI9qECH2NXvcz4f38GwE9/WHmZC8
         NvTjOlWa80rR7GlO0beCnikHiBqbrr64VGLavRlu89XCoDlGWidfiEn//dIAOEkd6ee6
         C53A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684495764; x=1687087764;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pv4K+qiU1O4o8owbKu+jiaXfleyVInvL+71QwhxE4qo=;
        b=Rl0yDgFTbHThJC0x5397NT2GK5rVTeGB1jzMH+BUizt5Su2ai7rf9d56qM103qbrwP
         8DtQmL0C3H3jDmu0fnhq8KwOtbt8krPe4BEzNFbWrQFerwnZUHo+Yzda7GHzdAumpYlr
         lOujUT405TYc/GUH3PMuJHv3q+9Ib4d66J5BAepHwsPDm7stI6AQhmGXWEELQjIgjcSG
         dgbYwl5DIG4loXM38y2Ade4C+mBgTt1HGigXkPenjK0Z5naFibdLIqRUhpZjElcPfMWg
         cZdNwStplL+ScHxr3eqT14RMW5pBv6EWiNBgiTfUhS6tfGsBEQKMHODeQxXekMH0zzdB
         HaEg==
X-Gm-Message-State: AC+VfDyxizUJjR3ygtzrPYDKghkjpplS1ZX/7gZPyy3iCJwkKXvTWWeU
        qc/ivcQH35y/ied+p/sWtHQ=
X-Google-Smtp-Source: ACHHUZ7VxDjfQos10tGqW88CSYV8XKWr+Vg+fHUv0h2JGafB5OlJ5XKLUbAyKuq9Kfca0MQMIoMurw==
X-Received: by 2002:aca:efc6:0:b0:385:d91:ee30 with SMTP id n189-20020acaefc6000000b003850d91ee30mr885517oih.3.1684495764248;
        Fri, 19 May 2023 04:29:24 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:3a54:c40b:8f0c:b968])
        by smtp.gmail.com with ESMTPSA id u1-20020a4ae681000000b00549f4d87eecsm1327679oot.30.2023.05.19.04.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 04:29:23 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3 1/4] dt-bindings: display: bridge: ldb: Adjust imx6sx entries
Date:   Fri, 19 May 2023 08:29:11 -0300
Message-Id: <20230519112914.309669-1-festevam@gmail.com>
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
Changes since v2:
- Newly introduced.

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

