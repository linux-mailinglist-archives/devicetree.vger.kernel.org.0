Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E0EF2EEABD
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 02:12:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729790AbhAHBLG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 20:11:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729557AbhAHBLB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 20:11:01 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B703FC0612F9
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 17:10:21 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id x12so4794702plr.10
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 17:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uW2DZ7++hBKvfAfIb4cUFZ4hOVC2XsuncgcT5bF8JnM=;
        b=LRt6wt6zwQgeeZf8xg4HcyENMcrZzQVkz9tGJoA6djOlZ1N3MP4kaflXq2plSxgFmc
         OlhEnQnmrC8TvP7M9bX4FqBN3JKXxILyCyrcCFl9eeA6qrVHyURp7SrTKiUiffsJq/QG
         R0gPecLoLZ4tk+CgPSbefZeAEnWiaCcVyEEQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uW2DZ7++hBKvfAfIb4cUFZ4hOVC2XsuncgcT5bF8JnM=;
        b=TzNwUXkBMgV7hhrpBHUTbX7uP5ynbQ3XqZxBU4+yXDsXAR6PXmQUpoP2wdqQj1dw3i
         6TEULjNnVOX6tJ/PhOe50XPMO3HT7/vRW4tufHmP80S2Qll/HMJ+sLRhrAaf6vVr1aJU
         VlIM/Ww2wSwoZ1NKb+tVWf1LpUO9TSicbEMa6YQV5MFOnGP3t0WLoWu8JOnqwmXOeoJo
         oo86vKwu2QlPBo32zhV+CLVSaxWtx6XtRbKjukQ9Hi6ewcaB2fOzyrw2TSNBN2kYONfJ
         kdfxeGkEfeK9E8cyE9svPmDvQvkRCfM71SsyEDY08CREnQGyB+nsQuNHfVX40vWno96f
         y+GA==
X-Gm-Message-State: AOAM531nyz0XR4hcrow3iHv2/95dQcO/cd/4DG3LSAyQEuLinqgPiYTm
        kb2PgtaF4KaUuzW2u+lSL5Ip3Q==
X-Google-Smtp-Source: ABdhPJwdO6ZcHG1U4ALrAyJ4b4UCm4nWNkd1/YwfnuNlNEfcdJ5LV471yb4CJzOXi1o8bg+Vgh3XJw==
X-Received: by 2002:a17:90a:7e18:: with SMTP id i24mr1163773pjl.72.1610068221365;
        Thu, 07 Jan 2021 17:10:21 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:7220:84ff:fe09:41dc])
        by smtp.gmail.com with ESMTPSA id s1sm6400083pfb.103.2021.01.07.17.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 17:10:20 -0800 (PST)
From:   Nicolas Boichat <drinkcat@chromium.org>
To:     Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Cc:     fshao@chromium.org, hoegsberg@chromium.org, hsinyi@chromium.org,
        boris.brezillon@collabora.com,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v9 1/4] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
Date:   Fri,  8 Jan 2021 09:10:08 +0800
Message-Id: <20210108091005.v9.1.Ie74d3355761aab202d4825ac6f66d990bba0130e@changeid>
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
In-Reply-To: <20210108011011.4061575-1-drinkcat@chromium.org>
References: <20210108011011.4061575-1-drinkcat@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define a compatible string for the Mali Bifrost GPU found in
Mediatek's MT8183 SoCs.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Reviewed-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
---

(no changes since v6)

Changes in v6:
 - Rebased, actually tested with recent mesa driver.
 - No change

Changes in v5:
 - Rename "2d" power domain to "core2"

Changes in v4:
 - Add power-domain-names description
   (kept Alyssa's reviewed-by as the change is minor)

Changes in v3:
 - No change

 .../bindings/gpu/arm,mali-bifrost.yaml        | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 184492162e7e..71b613ee5bd7 100644
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
@@ -87,6 +88,30 @@ allOf:
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
+        sram-supply: true
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
+
+      required:
+        - sram-supply
+        - power-domains
+        - power-domains-names
 
 examples:
   - |
-- 
2.29.2.729.g45daf8777d-goog

