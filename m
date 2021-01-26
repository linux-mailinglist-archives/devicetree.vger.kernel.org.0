Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3F10304B29
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 22:17:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728226AbhAZEtf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:49:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730734AbhAZBeK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 20:34:10 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 108F7C0698C1
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 17:18:14 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id e9so787110pjj.0
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 17:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0BZifB+iVMGmxp83gSV8xBJi4ZuHE+jJzS5b46pYB0A=;
        b=buRZJlIfAEszu7DTDxrGpStS4yJ+JlArTcXt0x76ycaU2bjFQCHidprSrOBF3N1xve
         e2RNFHNjUFXkRgFexKzldGH0QtYp6XGsa/hwV2THVKhJrBrbOYGfciG0gbWd3kkjhV6l
         hJasfeZTmZ6+c6txPNSZExg1rsZfom+QZAd74=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0BZifB+iVMGmxp83gSV8xBJi4ZuHE+jJzS5b46pYB0A=;
        b=Wweasr31dBKEng3brjYrp1Meu3m1BbHF6IWB8hcXVqBRva8rnEbDh+dNCE5tVypPYf
         8WXc3IXVLb9aJKtPP2dab7lWgX6EwTs+Dtmp1woMxQZNkEduntXP7vgDDQm+oc5APznb
         lt9pw2fVDOIyr1wyZZL4Rl0PKpKtQWjxsfQuGcaiWYKn9TrfB6OaEKYnEA3QxAV93o/A
         V1exGyg+cw/4F7Z3aQJi3wyATT5u9cO3mqcWTVbP96hcTRAn98Tc6oVI3XgujclFwxF4
         /pKA+SFB57EQNH870JfZyG8XnwNFpcaUE7yKFFNqGkjzRfV9Z8FOP+kTSYFcrgCjpYyN
         oL+w==
X-Gm-Message-State: AOAM531K6qMFe/6cDuuk+3aJ5mu+KtsMIt75+1Q8M2tN4shkQbJKUuP4
        CpYlByNMCPKmzKS1WaYDk3fPIQ==
X-Google-Smtp-Source: ABdhPJzq03UOZA3rzW/Jku1UL/Q9+LLv9sYit5RxxJUopLFrSfRQH8oSRCQ/AdGoGrss8ksnQD4EKg==
X-Received: by 2002:a17:90a:77c1:: with SMTP id e1mr3157796pjs.141.1611623893652;
        Mon, 25 Jan 2021 17:18:13 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:50cc:9282:4fdd:3979])
        by smtp.gmail.com with ESMTPSA id k9sm522248pji.8.2021.01.25.17.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 17:18:12 -0800 (PST)
From:   Nicolas Boichat <drinkcat@chromium.org>
To:     Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Cc:     fshao@chromium.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        hoegsberg@chromium.org, boris.brezillon@collabora.com,
        hsinyi@chromium.org, Nicolas Boichat <drinkcat@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v11 1/4] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
Date:   Tue, 26 Jan 2021 09:17:56 +0800
Message-Id: <20210126091747.v11.1.Ie74d3355761aab202d4825ac6f66d990bba0130e@changeid>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210126011759.1605641-1-drinkcat@chromium.org>
References: <20210126011759.1605641-1-drinkcat@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define a compatible string for the Mali Bifrost GPU found in
Mediatek's MT8183 SoCs.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---

Changes in v11:
 - binding: power-domain-names not power-domainS-names

Changes in v10:
 - Fix the binding to make sure sram-supply property can be provided.

Changes in v9: None
Changes in v8: None
Changes in v7: None
Changes in v6:
 - Rebased, actually tested with recent mesa driver.

Changes in v5:
 - Rename "2d" power domain to "core2"

Changes in v4:
 - Add power-domain-names description
   (kept Alyssa's reviewed-by as the change is minor)

Changes in v3: None
Changes in v2: None

 .../bindings/gpu/arm,mali-bifrost.yaml        | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 184492162e7e..3e758f88e2cd 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - amlogic,meson-g12a-mali
+          - mediatek,mt8183-mali
           - realtek,rtd1619-mali
           - rockchip,px30-mali
       - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
@@ -41,6 +42,8 @@ properties:
 
   mali-supply: true
 
+  sram-supply: true
+
   operating-points-v2: true
 
   power-domains:
@@ -87,6 +90,31 @@ allOf:
     then:
       required:
         - resets
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt8183-mali
+    then:
+      properties:
+        power-domains:
+          description:
+            List of phandle and PM domain specifier as documented in
+            Documentation/devicetree/bindings/power/power_domain.txt
+          minItems: 3
+          maxItems: 3
+        power-domain-names:
+          items:
+            - const: core0
+            - const: core1
+            - const: core2
+      required:
+        - sram-supply
+        - power-domains
+        - power-domain-names
+    else:
+      properties:
+        sram-supply: false
 
 examples:
   - |
-- 
2.30.0.280.ga3ce27912f-goog

