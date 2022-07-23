Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E10757F161
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:44:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232294AbiGWUoO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:44:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiGWUoO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:44:14 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97D861B795
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:44:13 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id b7-20020a17090a12c700b001f20eb82a08so10954082pjg.3
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ya3Nv1BTlUUpwGAncPsDfdl2nqFWAnDiqXbLgPZdXYg=;
        b=HTFeQ7kucR3M2+AUfUpXXnIYYsgtk8UBbjxiWQ3Wm53QGLhyjJAd/GSLzQ4zzFSk0T
         YCkxoaFSOs34z2PzuWZHosX3/UvLV4Qgrqpgw5U4KyfvPyBtIZIol9qRgFu5nwoJLfCz
         vv5t0OO8pRckOTBNAeYVQ8BCRDY8NqpGwezWdZJJFDjzhomhXODgfvKBYfu63FRX3raD
         i/U9aK+KS1MqsAeK2UA2zbB/yjLB3PuVEm+VMRbbcySEyH+UFAsfkkgxdtCZbOfGmmgo
         O1i+uzC5JeaP2iCHqnXBjN06YZS75ccwNUjdQPIm0ZNXgT19yFyVOK9Wfty2vyC6t3JQ
         6/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ya3Nv1BTlUUpwGAncPsDfdl2nqFWAnDiqXbLgPZdXYg=;
        b=kpKTyviiZd3LpBDflmQgQy5CHjmJz2IHgn3wKxf4dnpmWbbzufgyL2RbIykDDpYzpL
         MAyGG0PCaYTQrQFaoGNiQVEnNGmDWAoAVM2sqXET/6+uM0W7Jkc1UlX1M3HEU+koPbHW
         qaa/vjcogJZJrmCCOmtz2Uyy5SEOB3Svm4XvEl/iVvI8w+CvxbSMbQN2OPy9hobTS/Pn
         0M4KdOvWlzWCFVWC1nMBMugZdl5AJWZ02A4qmBYbl5OXiNUv9hJhmeDCQwWENfg64ycT
         G3ZwWbZDNEhGtQ8YaAWd05sIpGJWPmcDrYcz9aG8v89WBhVSLSBrbJFVJcZkhgRVhfxi
         +kMQ==
X-Gm-Message-State: AJIora8HizRiszPdvbfoJFD37gCiRt7xtOJ+Bseit4XbTecEYo90JUi2
        ymo9UwlLb7JjX6D5vOXstMrxcQ==
X-Google-Smtp-Source: AGRyM1vBB0eSjNmpQs3DSZOBgAS25ovghKKNEzKyk544KKusygz70CWKQNKSfDSroiZdY4fhQhc7wA==
X-Received: by 2002:a17:902:e886:b0:16d:5184:11fa with SMTP id w6-20020a170902e88600b0016d518411famr3908270plg.2.1658609053254;
        Sat, 23 Jul 2022 13:44:13 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:12 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 04/22] dt-bindings: power: rockchip: Document RV1126 PMU IO domains
Date:   Sun, 24 Jul 2022 02:13:17 +0530
Message-Id: <20220723204335.750095-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document dt-bindings for RV1126 PMU IO domains.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../bindings/power/rockchip-io-domain.yaml    | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
index 1727bf108979..d71fc72d4464 100644
--- a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
@@ -58,6 +58,7 @@ properties:
       - rockchip,rk3568-pmu-io-voltage-domain
       - rockchip,rv1108-io-voltage-domain
       - rockchip,rv1108-pmu-io-voltage-domain
+      - rockchip,rv1126-pmu-io-voltage-domain
 
 required:
   - compatible
@@ -78,6 +79,7 @@ allOf:
   - $ref: "#/$defs/rk3568-pmu"
   - $ref: "#/$defs/rv1108"
   - $ref: "#/$defs/rv1108-pmu"
+  - $ref: "#/$defs/rv1126-pmu"
 
 $defs:
   px30:
@@ -344,6 +346,34 @@ $defs:
         pmu-supply:
           description: The supply connected to PMUIO_VDD.
 
+  rv1126-pmu:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rv1126-pmu-io-voltage-domain
+
+    then:
+      properties:
+        vccio1-supply:
+          description: The supply connected to VCCIO1.
+        vccio2-supply:
+          description: The supply connected to VCCIO2.
+        vccio3-supply:
+          description: The supply connected to VCCIO3.
+        vccio4-supply:
+          description: The supply connected to VCCIO4.
+        vccio5-supply:
+          description: The supply connected to VCCIO5.
+        vccio6-supply:
+          description: The supply connected to VCCIO6.
+        vccio7-supply:
+          description: The supply connected to VCCIO7.
+        pmuio0-supply:
+          description: The supply connected to PMUIO0.
+        pmuio1-supply:
+          description: The supply connected to PMUIO1.
+
 examples:
   - |
     io-domains {
-- 
2.25.1

