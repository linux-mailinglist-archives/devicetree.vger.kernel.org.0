Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 250613664D3
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 07:29:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235061AbhDUF3i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 01:29:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235050AbhDUF3h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 01:29:37 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B69DC06138D
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 22:29:05 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id p67so22659857pfp.10
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 22:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kxnhLi78DPDSYFjxJIM+qzcCyplsSYCFm1pDPKchpRM=;
        b=hmTmxKk7RkXuD+YrXgXMT7YbIC9neJ63/n1UtLtvvY3ocKbGWYT7FRURBUJSutrmJW
         qxVfRy5vX/W6NqaKXQNqwkiwlb7RR0HTYRciruFEEb8N2oQPOaTQsSbNON3gBZ2l/Bdi
         FZqMALQbvzzM42Np2JYnVdxQGwEWEkli7Uq6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kxnhLi78DPDSYFjxJIM+qzcCyplsSYCFm1pDPKchpRM=;
        b=A5C0Yfu9f3x552TIEplFpT0p7DVlihdLe5RxapBlJmHx6WnXamYOtMkafhX4KGV7vr
         miS4qrPP9Lrg7qqJZh7XcRfChWPUxZzkXICmzate59RCwNLUWA6laqku6Yck8Rwq5ebP
         SqKwDhK21ty1z/eykZpK61mvRK2nl8SRlSlX43TUHqJDHqSTuqBYIh0Zx5TmRu7Pcvwp
         +I9ZOHWBv2qSGXsfkLhAGKlUv0y+NCde4H4+a3LQ8PvPW191EO2JnxmNtA66rEQZ41Ee
         tcTDL/57PXv5nolPApHa6el8l28Ia1wRoVDfsc9r/8kEA24oi8c9q3YL4fmRrJsHDLoL
         QR+g==
X-Gm-Message-State: AOAM531YPwsJhjRlag9gBrsd/TM6yvKAD1eAxEw0mHoHqROQ1axizYzO
        UzFTFVDi8VNX8B7gkMNhifYAxg==
X-Google-Smtp-Source: ABdhPJyhb2uM0S9Pz4wG6iMzL3FZiBTC1btTNtARSLk++FAK0bWUnZI684adzhBP8AOcY3vu81YTNg==
X-Received: by 2002:a62:aa09:0:b029:25c:3c28:e2b with SMTP id e9-20020a62aa090000b029025c3c280e2bmr18791955pff.39.1618982945075;
        Tue, 20 Apr 2021 22:29:05 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:b3e5:49c0:4843:2bbe])
        by smtp.gmail.com with ESMTPSA id b6sm602537pfa.185.2021.04.20.22.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 22:29:04 -0700 (PDT)
From:   Nicolas Boichat <drinkcat@chromium.org>
To:     Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Cc:     fshao@chromium.org, hsinyi@chromium.org, hoegsberg@chromium.org,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        boris.brezillon@collabora.com,
        Nicolas Boichat <drinkcat@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v13 1/4] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
Date:   Wed, 21 Apr 2021 13:28:52 +0800
Message-Id: <20210421132841.v13.1.Ie74d3355761aab202d4825ac6f66d990bba0130e@changeid>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
In-Reply-To: <20210421052855.1279713-1-drinkcat@chromium.org>
References: <20210421052855.1279713-1-drinkcat@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define a compatible string for the Mali Bifrost GPU found in
Mediatek's MT8183 SoCs.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---

(no changes since v12)

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

