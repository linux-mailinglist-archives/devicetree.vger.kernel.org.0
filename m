Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A7A86FCE51
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 21:11:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjEITLZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 15:11:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbjEITLY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 15:11:24 -0400
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5F223AA9
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 12:11:23 -0700 (PDT)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-19206edf84cso943114fac.1
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 12:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683659483; x=1686251483;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7SBKSnGQTBkLIjNmdaQUl/gJk+HCRRsXzqznc1iL51k=;
        b=cZpW8zVQjMSQ4WoBPS9QBcy4qxm/DPFssrv5ZQm8++NC3EvLF/eY6VndM66B7+uVX7
         FbTQT5Nnt3ocW70w7jc3qaSZlqiVb1FAlLLY8t733T1c6kBlLArOQa6pBTUTF4kv/6ot
         9QkZM7/p90ZzVCYr4W60YNfEIf7X2rBPSLGwtMMTQHY6ikSf6MgeTNcCHHMgs41H4E8q
         jVQAly2hQMAlVy4KOqbr8nHmDgCxbJjb03H8ugYH96gfzmescTPhMO9CcJS4NGrHEXJd
         sOyl5X+n2Ebe8yu/l4HtX2UZK9tuqdcNbOiIq+76DF5+TYc+cyYcnd/4AlVtZgYFGwyq
         T7dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683659483; x=1686251483;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7SBKSnGQTBkLIjNmdaQUl/gJk+HCRRsXzqznc1iL51k=;
        b=gHKOUIwX3wQ1P+bUseVk7i0NOSIg6m606SqxSZ+/V/EaRz+Yv4sW5nT+Wq53XxMqBq
         VxfCb140Ab9f2F2W8cPEE76rYvLW1C+PBkcDY14mtH624EZ2ZCGZY55XKwlG8jDZ6YHP
         3jAeXS+7WZveuJSwtW3W+pLkJ+rm97GtqJFc3HYvz4q7Ftg9GVmJI0GasfXAIlJKBXqi
         k669Zu5z5onhVdKc8SyyHbDm9HdmVr9M603jQv8EKpd424sIWc5dr9JXjOI4/a1qWzB0
         AoF63RSco/nAHsF+tRO62/IsR/biWxQamgSeYJjT8lNKQ8dOtzuGPWSJP0YfCqiQ8Gw/
         MeTg==
X-Gm-Message-State: AC+VfDyE8i6sCwMWLj/zKr+hr6rD78K8NPSsEYHCafj4vlmvjUME2EqW
        fjrQhNcyrL6N2ntOG7N+B58=
X-Google-Smtp-Source: ACHHUZ7okq0CBstdAFiCtDIdIZh0aPn6yrqa+xXNMaiBiNXOqb43R0HStG8Re0WImLuw/nPHzr1vMQ==
X-Received: by 2002:a05:6870:42cb:b0:192:5e53:2e64 with SMTP id z11-20020a05687042cb00b001925e532e64mr8965273oah.1.1683659482861;
        Tue, 09 May 2023 12:11:22 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:70eb:d83f:a7c5:b735])
        by smtp.gmail.com with ESMTPSA id u1-20020a05687004c100b00192843c21b9sm6358134oam.25.2023.05.09.12.11.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 12:11:22 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        jagan@amarulasolutions.com, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3 1/2] dt-bindings: samsung,mipi-dsim: Add 'lane-polarities'
Date:   Tue,  9 May 2023 16:10:58 -0300
Message-Id: <20230509191059.3327960-1-festevam@gmail.com>
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

The Samsung DSIM IP block allows the inversion of the clock and
data lanes.

Add an optional property called 'lane-polarities' that describes the
polarities of the MIPI DSI clock and data lanes.

This property is useful for properly describing the hardware when the
board designer decided to switch the polarities of the MIPI DSI
clock and/or data lanes.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v2:
- Use video-interfaces.yaml (Rob).

 .../display/bridge/samsung,mipi-dsim.yaml     | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
index e841659e20cd..dad6d06fbdd9 100644
--- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -105,6 +105,35 @@ properties:
           DSI output port node to the panel or the next bridge
           in the chain.
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                oneOf:
+                  - minItems: 1
+                    maxItems: 4
+                    uniqueItems: true
+                    items:
+                      enum: [ 1, 2, 3, 4 ]
+                    description:
+                      See ../../media/video-interfaces.yaml for details.
+
+              lane-polarities:
+                minItems: 1
+                maxItems: 5
+                items:
+                  enum: [ 0, 1 ]
+                description:
+                  See ../../media/video-interfaces.yaml for details.
+                  The Samsung MIPI DSI IP requires that all the data lanes have
+                  the same polarity.
+
+            dependencies:
+              lane-polarities: [data-lanes]
+
 required:
   - clock-names
   - clocks
-- 
2.34.1

