Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22B414262A4
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 04:55:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229562AbhJHC53 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 22:57:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbhJHC53 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 22:57:29 -0400
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com [IPv6:2607:f8b0:4864:20::549])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8937FC061570
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 19:55:34 -0700 (PDT)
Received: by mail-pg1-x549.google.com with SMTP id p19-20020a634f53000000b002877a03b293so817550pgl.10
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 19:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=X8sWSPambKP/qgtgkdxrgW4KdByfW8QTTGplZqAi3X4=;
        b=kxwws56MgQGuuHEoflZCZg9OKfZmQn71OggIYD8Ix1jn7lLhD8orccBdRkd1S6t1f7
         7UiJJr4mlLF5YyEZ1B57lwE/j/s2Jpd7w0CtSW/96IUQvYOc/gmZxmzcS+uGAeMtulce
         fqc2/ZpoeDi4HxJ5aut7DlfKALzrrIRzvrNWjPkBCfFnaNYKzfY4XGm9w5l0c2XHgQx/
         9JP26aB+7diIUF59cBfE2XDMyAQSem58/fB9C2sATCwVcws1UXpttBR3TV5V3FSe0+yE
         t6bJxdtY4XPEplUanvl6nO6KBbDamCHWmVJ02Q7iImdZqgJM1V0GN5tDB0GMgH6OxUHn
         p3NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=X8sWSPambKP/qgtgkdxrgW4KdByfW8QTTGplZqAi3X4=;
        b=lge9nKyIDCORYWwHuJQVTuLEBIrgesDMTEM5679Hvx/2mkoqTijSC9l/FRU7UQVUR5
         7J16j7wx5QZLZpZRTP4D3I90RTMoKgEBm53WjnrutJ6kqQEhuTb8A+HQXuORcxP+4qOx
         jO1AptkHlJhF6l9A0yWb8lyEZSz2QROS+J18gp+otBwRhGaOzyjX6JdNv1X7owQKD0oX
         tNzPa2u5eS0HQsL6XuLkFc49x2sPN3NbPeE43qVSZDQy0/xSOLbqgrCgHXFURSWXC6QI
         9qQQKGCfe69wCw7OOX0WWRk2hsbNERgPegoZqY3hsAiIorQn6hxCC+wmLLC+U/eL5ItT
         u7gg==
X-Gm-Message-State: AOAM533TlxrgVY0AAJnWVbEMq7h17aYUmmquNBpOIcIGYGQKSxmWNL3f
        0b14yeOkOc7DKbQxDoAzuIs0S6kK7JPL
X-Google-Smtp-Source: ABdhPJzoWu49ivuUExnKB/ZYT8C4I10Px1JjXZjA8G7Cupyq4Q3BDsg85zboUEUloHjODSl5zo1BA8y0hWyN
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:da3a:304:6b3b:6ccd])
 (user=tzungbi job=sendgmr) by 2002:a17:90a:3ee4:: with SMTP id
 k91mr235909pjc.1.1633661733584; Thu, 07 Oct 2021 19:55:33 -0700 (PDT)
Date:   Fri,  8 Oct 2021 10:55:23 +0800
Message-Id: <20211008025523.1852319-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.882.g93a45727a2-goog
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
Changes from v3
(https://mailman.alsa-project.org/pipermail/alsa-devel/2021-September/189705.html):
- Fix the indent errors.

Changes from v2
(https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189058.html):
- Simplify the commit message.

Changes from v1
(https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189048.html):
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
2.33.0.882.g93a45727a2-goog

