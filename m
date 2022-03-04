Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DC064CD43A
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 13:25:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239704AbiCDM0D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 07:26:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234479AbiCDM0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 07:26:00 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 152D71B370F
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 04:25:11 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 48F553F5FD
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 12:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646396706;
        bh=kgcW8NoeEKgqEQpiOeMGrdb/y3sIE8kBcUfOjO129hk=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=pktsgqpu+Df2G9BpHzpZofcm7YEktB2HzRXqgRWN+ag14nOiJxjjRcOHYPu4ccjbE
         cgLiQ8omvNPbHoySRGMTgg5ihCKpDS2DmaJOyMgaJto18Fwsi67OJ8VsIt1BqouYwO
         UUQzVhZ3cZyKUL5h0kVz+FRO/7/JWpPiWVNWs/8RcNbOgaCc9/jnc6qm7SYmB2bXyQ
         IrX16FXXa9LudID7reLxnxjzN3Piwifp0N/+XLvusZUDkrltEh2CXCDb1tH58K3bZ+
         /pCX1z0cx8PHnPyohkFVIZKTfH3J63Q81zBOy/4EyMBST+kVlfQYbYIKhAnsvCkKrl
         BAiqDzx65yPCA==
Received: by mail-ej1-f70.google.com with SMTP id ey18-20020a1709070b9200b006da9614af58so2283006ejc.10
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 04:25:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kgcW8NoeEKgqEQpiOeMGrdb/y3sIE8kBcUfOjO129hk=;
        b=m+5ymAHxiVQHgd9GDpHFAgatfQAzgUcqw7Jhn8a8ogf608BBv4rLqmF/8HMBJm80xY
         wioKN9Ap8L9n3aTZXcpk0r7xckLw+qbSLDORAJmBFKfIl2HFOcO852cDpcko0Wj/0jgJ
         BPL5iHccXY0PbRncdUSFk2aq0VYlCg/cNYfKQ35Ee6m/+3GxK5bQMLdbdOUpizRKQIaz
         ccZKH6DiZdQ422N9XJ2um6x1drcfgN7i5yOs+gfHTve0FLFr9SYYdqvc+FkiWMPiNhnK
         BSZAr4LAMEVeowDGeBHcVpJ5fXG/5fndWKYw94xnLbV2UAwCnlDUZSuhQegii0QhF0O3
         EEvA==
X-Gm-Message-State: AOAM533/JFklw7u4q+Pa+ZIlnqcv3uTLmpLjb5E/5Zo4vvqTq7USfy1v
        FoDNZTrJ+E0ql3ht8+ddjPlN5fnLWBey5TzGpaMdFnrxczijekKKhwTJ3ogWedYTfKXrpemqI0/
        zbFj3ibpbb+4F2dFujzuv18pHGWo1ErzJXz45yuM=
X-Received: by 2002:a17:907:70c1:b0:6ce:78ff:bad4 with SMTP id yk1-20020a17090770c100b006ce78ffbad4mr31164817ejb.68.1646396701950;
        Fri, 04 Mar 2022 04:25:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy6Wvt1ALjXyOY5O7427bhp34XMAl6I3Ap8zIOpaKncvQpm4/ZUjYymTNh6SzZvWw89ZXr/bw==
X-Received: by 2002:a17:907:70c1:b0:6ce:78ff:bad4 with SMTP id yk1-20020a17090770c100b006ce78ffbad4mr31164791ejb.68.1646396701612;
        Fri, 04 Mar 2022 04:25:01 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id r23-20020aa7da17000000b00415a1431488sm2047368eds.4.2022.03.04.04.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 04:25:00 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: timer: exynos4210-mct: describe known hardware and its interrupts
Date:   Fri,  4 Mar 2022 13:24:21 +0100
Message-Id: <20220304122424.307885-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220304122424.307885-1-krzysztof.kozlowski@canonical.com>
References: <20220304122424.307885-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Most of the Samsung Exynos SoCs use almost the same Multi-Core Timer
block, so only two compatibles were used so far (for Exynos4210 and
Exynos4412 flavors) with Exynos4210-one being used in most of the SoCs.
However the Exynos4210 flavor actually differs by number of interrupts.

Add new compatibles, maintaining backward compatibility with Exynos4210,
and constraints for number of interrupts.  This allows to exactly match
the Exynos MCT hardware.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../timer/samsung,exynos4210-mct.yaml         | 67 ++++++++++++++++++-
 1 file changed, 64 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
index f11cbc7ccc14..1584944c7ac4 100644
--- a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
+++ b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
@@ -19,9 +19,20 @@ description: |+
 
 properties:
   compatible:
-    enum:
-      - samsung,exynos4210-mct
-      - samsung,exynos4412-mct
+    oneOf:
+      - enum:
+          - samsung,exynos4210-mct
+          - samsung,exynos4412-mct
+      - items:
+          - enum:
+              - samsung,exynos3250-mct
+              - samsung,exynos5250-mct
+              - samsung,exynos5260-mct
+              - samsung,exynos5420-mct
+              - samsung,exynos5433-mct
+              - samsung,exynos850-mct
+              - tesla,fsd-mct
+          - const: samsung,exynos4210-mct
 
   clocks:
     minItems: 2
@@ -63,6 +74,56 @@ required:
   - interrupts
   - reg
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos3250-mct
+    then:
+      properties:
+        interrupts:
+          minItems: 8
+          maxItems: 8
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos5250-mct
+    then:
+      properties:
+        interrupts:
+          minItems: 6
+          maxItems: 6
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos5260-mct
+              - samsung,exynos5420-mct
+              - samsung,exynos5433-mct
+              - samsung,exynos850-mct
+    then:
+      properties:
+        interrupts:
+          minItems: 12
+          maxItems: 12
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - tesla,fsd-mct
+    then:
+      properties:
+        interrupts:
+          minItems: 16
+          maxItems: 16
+
 additionalProperties: false
 
 examples:
-- 
2.32.0

