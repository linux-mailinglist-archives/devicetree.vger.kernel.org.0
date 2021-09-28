Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EAFE941A5D9
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 05:03:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238771AbhI1DF3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 23:05:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238769AbhI1DF2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 23:05:28 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D86DC061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 20:03:50 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id w4-20020a056902100400b005b6b29d9a27so3852658ybt.20
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 20:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=KsTiqLz5nah56eaJPdLQpIjEU/EofkShSKUy8lI2hyQ=;
        b=dL+4nAoZuGm4aNP5itgjzvN4wG8K9bftsbuyMiru+AJT59d5ORquQONcCClLp3l1ac
         0OpUJXuFJS+qEZzWO05pnDGFkXMk6Jcj/By1Gy+FgCQOVg5jtTv5fpsq52zdMjrE4GXu
         LdURoXk+nmB34mtCrsUc9Pd8mOqDSCuQaxmaAdZuMzBwy+lgz5dK4afD53nYDZVfWklw
         1ggxt0aAZf657UFXJJSl5gW3u8tvJCZaFA0raJfloxhiFhL05E32qeKBsUmMPKm+6BIs
         /YyN6mxHjg8JrXAAZg5CqjawkbffO6TqjIA9C2tUemKwZtcr+/lxatC+3enbnwSqivoh
         dBIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=KsTiqLz5nah56eaJPdLQpIjEU/EofkShSKUy8lI2hyQ=;
        b=I8Tp4DIwGoP9u6cwjLhWVL//HeS+xaf7EaKAdZcP0VTpBOzSQFD6wmIWsMTNswjLuW
         8bUfkKZt/HNwwhH+XBhJOphKbhIaP9RoP4oT2OFNi1K4/zT/0Io+YRGrnVVdI+MpLEiB
         C1wfzt7zJB0/ZvZt6hfu4LF+wulKd/xTy/CyI1kJjBS6pEzi7UfK73yPESdGGb7+TRej
         tCj04CTl2kGRbFVZnWmiSYKyvpijRxH/h7EZsAUV8q0MlVXXsQtCcrTgfcQsDHV7prvQ
         qv8KqxhkF4eDSrN+9Mid7eJwW3Y/m3BBK3SQn0Sq7ud4SD4tTHW2chCemLncc16/EoNb
         WbJw==
X-Gm-Message-State: AOAM5316840eqfdCGhHozm3A7cBP9HqNz/JxzUoRxLFYOrG1w3wHm/fa
        Y8hJU3Ct1lyooPzF97zmKRbdT9631Ur6
X-Google-Smtp-Source: ABdhPJz1nsrfytd99INIpMBDoXfiMBv7DoMihoInZPu47ZUCSKn6IO7K5b9oPkuXlLp7wdU6Hbc3u49FKYrh
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:17f:bc7f:958e:ac0b])
 (user=tzungbi job=sendgmr) by 2002:a25:b7d0:: with SMTP id
 u16mr3859570ybj.342.1632798229290; Mon, 27 Sep 2021 20:03:49 -0700 (PDT)
Date:   Tue, 28 Sep 2021 11:03:43 +0800
Message-Id: <20210928030343.2200141-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
Subject: [RESEND PATCH v4] ASoC: dt-bindings: mediatek: mt8192: re-add audio
 afe document
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
2.33.0.685.g46640cef36-goog

