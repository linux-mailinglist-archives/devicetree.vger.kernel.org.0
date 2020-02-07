Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF781551FC
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2020 06:27:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726573AbgBGF0y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Feb 2020 00:26:54 -0500
Received: from mail-pg1-f195.google.com ([209.85.215.195]:40906 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725837AbgBGF0y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Feb 2020 00:26:54 -0500
Received: by mail-pg1-f195.google.com with SMTP id z7so513877pgk.7
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2020 21:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CIn5sKN4KiBio0RDhfFCPXTE80uz5ajGK0muKh5dKSI=;
        b=jehEAPOlDHxOIf658U57Pz+Lxc9WjB5npjsc5eIfdKKIgLI6wIasqGvVPkiVpdJQ0G
         Hzpf9s+Mrm6ErGv53ZanL5Ar8j551dwPz09ideYJ5ExThnUtNvN841ZIU2L4qTBXCsLw
         CUJvrrL1JkluseTv3rUysxVHovsnV10a4Qg0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CIn5sKN4KiBio0RDhfFCPXTE80uz5ajGK0muKh5dKSI=;
        b=a7YTkOu0AMf4nU8Ti+vyO/FRhY0elG3+V6i1egRcqsPDaVILflo1Jpa70qp/t7LHdu
         GLI2qRy3++wCYx3/c3ytON6NdrFLw4O9j98p/KDpQVl8ZbJMOyrt+slneNfoblUFtPZp
         2UOC3V26VsCV//A1zr3+QJa9xf6Pv55nWwSxkuN0IlKljeWEXaZU+hUJqg6GZmmQzf/A
         z1uRrsaBcAOgL8CAgmFesJ8/W/LReBns0vfMa32ZjsHBIHYLsjWdVyUpbTXwo3GniMcL
         Y4PindHo66FDa0rBlxT1Cav0HXsidOXqPEV2VhRdnhyqcnpHvh52R3bVkb3lVjSz243H
         Jkjg==
X-Gm-Message-State: APjAAAWnZdZ5ynHP/XlZSzJIk0dwbZDx5ep8ytmUXuG9sQEYerx0R0p0
        vCBIKonOT1rby0NonVATocROFLCE1LI=
X-Google-Smtp-Source: APXvYqx5i7f7z7/eMVnpdL5X2gaY4KuXn3Lv/gF5m1NmEIhVV0KooOh59/YHin0f3dnQN5ufHFD66g==
X-Received: by 2002:a63:5558:: with SMTP id f24mr7314186pgm.92.1581053213363;
        Thu, 06 Feb 2020 21:26:53 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:d8b7:33af:adcb:b648])
        by smtp.gmail.com with ESMTPSA id i66sm1174485pfg.85.2020.02.06.21.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2020 21:26:52 -0800 (PST)
From:   Nicolas Boichat <drinkcat@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
        ulf.hansson@linaro.org
Subject: [PATCH v4 1/7] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
Date:   Fri,  7 Feb 2020 13:26:21 +0800
Message-Id: <20200207052627.130118-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200207052627.130118-1-drinkcat@chromium.org>
References: <20200207052627.130118-1-drinkcat@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define a compatible string for the Mali Bifrost GPU found in
Mediatek's MT8183 SoCs.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Reviewed-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
---

v4:
 - Add power-domain-names description
   (kept Alyssa's reviewed-by as the change is minor)
v3:
 - No change

 .../bindings/gpu/arm,mali-bifrost.yaml        | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 4ea6a8789699709..0d93b3981445977 100644
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
@@ -62,6 +63,30 @@ allOf:
           minItems: 2
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
+            - const: 2d
+
+      required:
+        - sram-supply
+        - power-domains
+        - power-domains-names
 
 examples:
   - |
-- 
2.25.0.341.g760bfbb309-goog

