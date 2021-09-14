Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52FCF40AA5D
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 11:12:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230442AbhINJNp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 05:13:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230282AbhINJNe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 05:13:34 -0400
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05AD7C061767
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 02:12:16 -0700 (PDT)
Received: by mail-qt1-x849.google.com with SMTP id j23-20020ac86657000000b0029cb70967ebso59059642qtp.14
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 02:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=JN3m/MpfuUecWmdVnxg//YZchm1bk52GTAi9/UcnHho=;
        b=mvSW9aVGQkSnDPqgFlIEhRrskk/XsDMv7zGEJcmlMiMw3UIjbvjT3YHPheQwS3Ac84
         crsyy0R1UgGQAte3/n81DQxS5NbbjZjwuNcHdQn0OUTE/AOaW45byfwYD/uY4BDNPdYd
         N/yUnFsAmlB9jtokJLpGQFuE0SrgTFkR07HXH3hQopvcoilv9g8xzz04T9+9Djm73IBa
         OiJcEEZ1xVQgj6jYbilktyqAJSd2DP2/JV6sylpSJrpbQzSzc6KaLp5maSGdJ+/PvupL
         0YZl9+47Q/HFd3X6zlvBCGlM6WJarV0u10q3Zvmysd8gzmz3fs7Sp0qhcOglZhzRYI6h
         x5Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=JN3m/MpfuUecWmdVnxg//YZchm1bk52GTAi9/UcnHho=;
        b=dKW5NxQn4cAaEIKE1YQHYNeNsjNNtt7ZOBLhnP/35d4+Rhcb1AyjvFNnNbZ3NPJV7j
         IvlPDSLfkEPuFn9ACpGVyYeSXaUzRjATVwY1WUcbgmKgcPsqSQIe6mfe2sAn+vHWorNS
         swZx/0AVK9tdjRjNdUcKeWzqDvOA3+wj8PTJhnQheWnBXIeW/4LKZMohcHkgw2kJEvJt
         9foav2s1Mtq4ZZ41MQWWikwLJwT8Jh5IvovNSjFrMaOVxmfsL51HHxICj1RBpSZLxKOU
         n/T/T8nG7xjmMaLQ6nd6a/4UKjC82jlUeetQLWu8jbMe8EpHlCRkzYgXaShPzFakOm10
         26Hw==
X-Gm-Message-State: AOAM532ySYRsR68fUokcLgMBEloxTMgFFVuaRJRnPa79L7tDNykcnU+/
        xlccfQQcR96XKqPA5wTkfhCsi6AeqgXO
X-Google-Smtp-Source: ABdhPJzazYfOZJLl/NCPeXGQ5GECIjOdSMhDfyy+2k7Lq6XVBHpCh8g4CHrfzAPXlC9v2GvJYAr8FqCEgbLc
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:1d24:4827:7125:1e19])
 (user=tzungbi job=sendgmr) by 2002:a05:6214:1271:: with SMTP id
 r17mr4114073qvv.48.1631610735139; Tue, 14 Sep 2021 02:12:15 -0700 (PDT)
Date:   Tue, 14 Sep 2021 17:12:04 +0800
Message-Id: <20210914091204.2204278-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe document
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The document was merged as commit 1afc60e00de3 ("dt-bindings:
mediatek: mt8192: add audio afe document").

However, [1] revealed that the commit 1afc60e00de3 breaks
dt_binding_check due to dt-bindings/clock/mt8192-clk.h doesn't
exist.

As a temporary fix, commit 7d94ca3c8acd ("ASoC: mt8192: revert
add audio afe document") reverted commit 1afc60e00de3.

dt-bindings/clock/mt8192-clk.h is in mainline per commit
f35f1a23e0e1 ("clk: mediatek: Add dt-bindings of MT8192 clocks").
Re-adds the document back.

[1]: https://mailman.alsa-project.org/pipermail/alsa-devel/2020-November/176873.html

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
Changes from v2 (https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189058.html):
- Simplify the commit message.

Changes from v1 (https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189048.html):
- Add more context to the commit message.

 .../bindings/sound/mt8192-afe-pcm.yaml        | 100 ++++++++++++++++++
 1 file changed, 100 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml

diff --git a/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
new file mode 100644
index 000000000000..0170c93802d2
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/mt8192-afe-pcm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek AFE PCM controller for mt8192
+
+maintainers:
+   - Jiaxin Yu <jiaxin.yu@mediatek.com>
+   - Shane Chien <shane.chien@mediatek.com>
+
+properties:
+  compatible:
+      const: mediatek,mt8192-audio
+
+  interrupts:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: audiosys
+
+  mediatek,apmixedsys:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description: The phandle of the mediatek apmixedsys controller
+
+  mediatek,infracfg:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description: The phandle of the mediatek infracfg controller
+
+  mediatek,topckgen:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description: The phandle of the mediatek topckgen controller
+
+  power-domains:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: AFE clock
+      - description: ADDA DAC clock
+      - description: ADDA DAC pre-distortion clock
+      - description: audio infra sys clock
+      - description: audio infra 26M clock
+
+  clock-names:
+    items:
+      - const: aud_afe_clk
+      - const: aud_dac_clk
+      - const: aud_dac_predis_clk
+      - const: aud_infra_clk
+      - const: aud_infra_26m_clk
+
+required:
+  - compatible
+  - interrupts
+  - resets
+  - reset-names
+  - mediatek,apmixedsys
+  - mediatek,infracfg
+  - mediatek,topckgen
+  - power-domains
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt8192-clk.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/mt8192-power.h>
+    #include <dt-bindings/reset-controller/mt8192-resets.h>
+
+    afe: mt8192-afe-pcm {
+        compatible = "mediatek,mt8192-audio";
+        interrupts = <GIC_SPI 202 IRQ_TYPE_LEVEL_HIGH>;
+        resets = <&watchdog MT8192_TOPRGU_AUDIO_SW_RST>;
+        reset-names = "audiosys";
+        mediatek,apmixedsys = <&apmixedsys>;
+        mediatek,infracfg = <&infracfg>;
+        mediatek,topckgen = <&topckgen>;
+        power-domains = <&scpsys MT8192_POWER_DOMAIN_AUDIO>;
+        clocks = <&audsys CLK_AUD_AFE>,
+                 <&audsys CLK_AUD_DAC>,
+                 <&audsys CLK_AUD_DAC_PREDIS>,
+                 <&infracfg CLK_INFRA_AUDIO>,
+                 <&infracfg CLK_INFRA_AUDIO_26M_B>;
+        clock-names = "aud_afe_clk",
+                      "aud_dac_clk",
+                      "aud_dac_predis_clk",
+                      "aud_infra_clk",
+                      "aud_infra_26m_clk";
+    };
+
+...
-- 
2.33.0.309.g3052b89438-goog

