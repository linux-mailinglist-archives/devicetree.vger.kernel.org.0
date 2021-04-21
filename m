Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B7C53662F7
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 02:19:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234452AbhDUATw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 20:19:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233752AbhDUATw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 20:19:52 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FA08C06174A
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 17:19:20 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id h20so20624859plr.4
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 17:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=udOtkZZjDYxPso6eI0a9vHxz9Qn5dM9EKymdOtACQ/Y=;
        b=loH3oVgpvHTTtx+Cm+Q4516fccOHDIn3WVuFgwOzELLQGBJbxFTEfU0h7fxjh1/t7/
         pCIXvhlKcDSWzhuj6cNA7eaolw6JroiG8q657XZODQRywiWBOFMMoWlGV+KWrQ0w40e7
         p0dJrrcs+L2AU/7RmZWMu4e4BiEsFMsDE90qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=udOtkZZjDYxPso6eI0a9vHxz9Qn5dM9EKymdOtACQ/Y=;
        b=jtSuZNyckrM4BlL4rYz7DPvbTpEnoEbN2D2NNR32aeTjdwq87noX9skmu2UopYN+wa
         FCiOicRCzeXcxl57sj035vVNbQTFY/sZ8xhjwWHOR/CDdpZ1LLsSNSqg74G17qrn2D6D
         XpYW7iFfUvl5KQLfkadA99qHlzQxMllU8yrt6xAAqzIa7Js9G+w0wQnUXR0J9WUxXpnG
         IaJKMuigc3SHKw/xX1n4vLqecQZP2820KErV3mcd95aLjffzHNzlaqbCSN9L/vqXdgVa
         nEguEVoIw0xe9xf1mlcD8hIlQeo7FrwZqUFKPak8eRMWqGocrDHL91i/tifJbiRUsXap
         NhSQ==
X-Gm-Message-State: AOAM5339QLZqZp9dYfoi4/kRKdeHINAhBhkg8rkwL0Y9O2cMEC4vBqHM
        YwPekUx1XrCq3zmZkPgwbDJwWw==
X-Google-Smtp-Source: ABdhPJw0YM5F0tNQtH8BnGQocJOVnUuo5TWPyiJSGrWay1gXYG7nneFIqPf6+Zy3J5d0TfXcX8TfxQ==
X-Received: by 2002:a17:902:8bc3:b029:e9:9639:be21 with SMTP id r3-20020a1709028bc3b02900e99639be21mr31370108plo.59.1618964359731;
        Tue, 20 Apr 2021 17:19:19 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:95d2:8c89:b629:ff49])
        by smtp.gmail.com with ESMTPSA id d20sm145494pfn.166.2021.04.20.17.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 17:19:19 -0700 (PDT)
From:   Nicolas Boichat <drinkcat@chromium.org>
To:     Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Cc:     fshao@chromium.org, hsinyi@chromium.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        hoegsberg@chromium.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        boris.brezillon@collabora.com,
        Nicolas Boichat <drinkcat@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v12 1/4] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
Date:   Wed, 21 Apr 2021 08:19:05 +0800
Message-Id: <20210421081831.v12.1.Ie74d3355761aab202d4825ac6f66d990bba0130e@changeid>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
In-Reply-To: <20210421001908.813625-1-drinkcat@chromium.org>
References: <20210421001908.813625-1-drinkcat@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define a compatible string for the Mali Bifrost GPU found in
Mediatek's MT8183 SoCs.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---

Changes in v12:
 - binding: Fix min/maxItems logic (Rob Herring)

Changes in v11:
 - binding: power-domain-names not power-domainS-names

Changes in v10:
 - Fix the binding to make sure sram-supply property can be provided.

Changes in v6:
 - Rebased, actually tested with recent mesa driver.

Changes in v5:
 - Rename "2d" power domain to "core2"

Changes in v4:
 - Add power-domain-names description
   (kept Alyssa's reviewed-by as the change is minor)

 .../bindings/gpu/arm,mali-bifrost.yaml        | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 184492162e7e..b22cd8f1b015 100644
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
@@ -41,10 +42,13 @@ properties:
 
   mali-supply: true
 
+  sram-supply: true
+
   operating-points-v2: true
 
   power-domains:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   resets:
     maxItems: 2
@@ -87,6 +91,30 @@ allOf:
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
+          minItems: 3
+        power-domain-names:
+          items:
+            - const: core0
+            - const: core1
+            - const: core2
+
+      required:
+        - sram-supply
+        - power-domains
+        - power-domain-names
+    else:
+      properties:
+        power-domains:
+          maxItems: 1
+        sram-supply: false
 
 examples:
   - |
-- 
2.31.1.368.gbe11c130af-goog

