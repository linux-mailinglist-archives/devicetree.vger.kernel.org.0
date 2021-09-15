Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE32B40BE03
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 05:10:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbhIODLT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 23:11:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229758AbhIODLT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 23:11:19 -0400
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1727BC061574
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 20:10:01 -0700 (PDT)
Received: by mail-qv1-xf49.google.com with SMTP id w13-20020a05621412ed00b0037cc26a5659so971366qvv.1
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 20:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=jAy5ZO2AeP18Q1PLRPQevhEuoLi1BItbrfO3lZX0e/4=;
        b=QZzeguFKy9TLKw8z5mSOBfy/TDIRHtnS5H7qN/jShAO+2D7Xwv/vkvplU7REnkXTM7
         UHLW7OjxC11f1ZCxwnk5sjza3pC0w4wlMcqBgOANM7uvvMn0IMdfzhveJnY3W9HFo0B+
         YZM6HApRAA7U3+/D9cvWT80cf5XsmvMKe9S5y4/kEFCJ/CszhEH+3cjagUztSUeTtWgE
         Z0h24Otr0friyTLJWCp3RdyLij9zrBjKRS3o/JxeaQrM20U9mNZH413fuRpjwoYtb6aP
         9tboUQFCgfftuFArIU4eewPGBuMrCWFAjrk5LtLw+U2uiF7CFsjTVjmLYwYkaYmdj7ZK
         s42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=jAy5ZO2AeP18Q1PLRPQevhEuoLi1BItbrfO3lZX0e/4=;
        b=7wyHTlBx6IQ1bUBsQvQrms47CtgABhKwyBR0ZH9qQL1Kd9QEKV1VzKCN88lW93F/t8
         L9dWWxrTYez18Lfmdsi/9MCOABtEOOy3TB1ygyN1aegV6Uj6lo9QU7OsUCeBaOx0bBDW
         9zYb1PfTvL3GqBIfGZMXHVs6QnoKB7WUOOxFBQHzZcSrO8YUstgQQYBDQUA9iHBY0Shg
         t0krVBrjbiNxia8BgTlIbQ6yEvuTvLTdhiR/luYxMDbzOBLVsDIJDEZBNwUpmOQA7+dm
         xJGejbHFeYE88fV5fRrpR88koJCsydSx+G/ZDSRExJeBdI94lWimwsjet/y5do9QzXfe
         vZ4g==
X-Gm-Message-State: AOAM531HU/Q3JwFiDbwG030M2rV1G+lN4QmV7XtWONNtQ4xmCDT62TRf
        MnOWjzNDX3okCspqkYrDP6WMMrMDfqU0
X-Google-Smtp-Source: ABdhPJwvqKiGSSV6Z7HG2VYx+JKVRocjK1EXbL1IOtUvsjZjxJPnw/pSxdUioCC3EZSjArZHuu9B8+exbi1K
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:1d24:4827:7125:1e19])
 (user=tzungbi job=sendgmr) by 2002:a0c:9146:: with SMTP id
 q64mr8784899qvq.38.1631675400230; Tue, 14 Sep 2021 20:10:00 -0700 (PDT)
Date:   Wed, 15 Sep 2021 11:09:53 +0800
Message-Id: <20210915030953.2347176-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v4] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe document
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
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

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
Changes from v3 (https://mailman.alsa-project.org/pipermail/alsa-devel/2021-September/189705.html):
- Fix the indent errors.

Changes from v2 (https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189058.html):
- Simplify the commit message.

Changes from v1 (https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189048.html):
- Add more context to the commit message.

 .../bindings/sound/mt8192-afe-pcm.yaml        | 100 ++++++++++++++++++
 1 file changed, 100 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml

diff --git a/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
new file mode 100644
index 000000000000..5e9fe067f440
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
+  - Jiaxin Yu <jiaxin.yu@mediatek.com>
+  - Shane Chien <shane.chien@mediatek.com>
+
+properties:
+  compatible:
+    const: mediatek,mt8192-audio
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

