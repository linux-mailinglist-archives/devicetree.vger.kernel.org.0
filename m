Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A48A70E9C6
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 01:52:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbjEWXwm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 19:52:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238797AbjEWXwl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 19:52:41 -0400
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76004E9
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 16:52:40 -0700 (PDT)
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-55555562288so51156eaf.0
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 16:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684885960; x=1687477960;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ojbBjUwlKVt2/9+CCAjrur00lN7Lj3Zr989tamB+iNU=;
        b=K0gAhgeXV1dkUECCcaHC14wWadNNulIDBxTqK20yYytGpisoG4F25S6rG0tnzeposs
         3KKxj1C4+4vlX5DcvvzHrqOjVgDjr71MNkBCLpwB6iVERNRxRCLSZM5v3pqqqyHJdsJU
         kXq2LCdObuP7NWbhiA9eGFEWBbEsekdVQ4+8fAT0aGOxpp64LnlHDd99Yh3STfOxdQzJ
         a2sWkr1rlaPl+FsyfVYPvtTuUcx9Fv61zihOFhfl8t1Su0Hza4aXr+W80CGe+wHnDrPI
         68FMmLVPIkS49XrHkIy7KwZgDV29UwqVYOXiUU38kYSOHmwxSw6Q445w9xiUy/HT5dn9
         8LIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684885960; x=1687477960;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ojbBjUwlKVt2/9+CCAjrur00lN7Lj3Zr989tamB+iNU=;
        b=avyiI8TVUXVdXIAPucGReP9Q0V3HC7JeBTzOw2vQVozbuCyLS3ByU16VLd0olm60GA
         f6Ij8vOgwlQ6w5pE4zV0u7pBMEhmqr/K8Zf9Dw3ZtnQ4shM7bkPaKJOCtONm+/amWeTb
         uS481zF8y88/WU6/ZWZs9QKf+awFeyyPgq02z5pEKtrOFF1qKuIj4fNXR/y/ds6c6CEF
         7tnnW2qevKJ9NVCQQc1qWGe0XRNNpemoD4Q4pXvOkp+i6ZpNZAX8IGiTmR7BDWNZcFA6
         AVWVyduqnsrwxSTu+/ra1/YF1+ShIwHOQpvWSsMg47w6uuNd1rp2xA+YTSgRITzySENM
         q3Hg==
X-Gm-Message-State: AC+VfDx6HXwCk8NvIYcOoAf92tXRvyoFIIGtqJlMvjmPohfSoTwl+Cat
        E5oQ5mNKSEgccWBuxBlV+Bo=
X-Google-Smtp-Source: ACHHUZ5HUpsZrYYzlMKEfrFF9m4L4u1G2QABAgS1N668H1gkoyCXbhN3v8RaKE5Apwjg7TqAl2D7Xg==
X-Received: by 2002:aca:efc6:0:b0:385:d91:ee30 with SMTP id n189-20020acaefc6000000b003850d91ee30mr7413882oih.3.1684885959682;
        Tue, 23 May 2023 16:52:39 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:14ab:657f:c6e7:b30b])
        by smtp.gmail.com with ESMTPSA id h13-20020a4ad74d000000b00552502f3ae1sm2454559oot.39.2023.05.23.16.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 16:52:39 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v7 1/2] dt-bindings: display: bridge: ldb: Adjust imx6sx entries
Date:   Tue, 23 May 2023 20:52:31 -0300
Message-Id: <20230523235232.7358-1-festevam@gmail.com>
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

On the i.MX6SX there is a single entry for 'reg', so add some logic to
reflect that.

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Marek Vasut <marex@denx.de>
---
Dependency: This depends on bd60d98a11da ("dt-bindings: display: bridge: ldb: Adjust imx6sx entries"),
which is available on linux-next.

Changes since v6:
- None

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

