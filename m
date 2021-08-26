Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0CF93F8C41
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 18:33:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242493AbhHZQeb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 12:34:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243173AbhHZQe0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 12:34:26 -0400
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com [IPv6:2607:f8b0:4864:20::549])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44AE2C061757
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 09:33:39 -0700 (PDT)
Received: by mail-pg1-x549.google.com with SMTP id q23-20020a6562570000b029023cbfb4fd73so1808223pgv.14
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 09:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=H30b6LzNg0OHS6v2pMLtjQ9Qa3GaaOYpmdNMxAiioqM=;
        b=GzIEp3/6sSrIXD4uBUq8GTvlkveyNjCr2sam5+z8FAnP5prWE0Kh8V/mnFZmmF8X4J
         b/9tnc8wjxo2rVYcYRnZr8djt/UyW5Z52hqZY3pfSq8dbd6iS74aJI8sKfOZHRy266UZ
         rHA4KRUwGO9aSDCaJK1tS3pWFG8WPgH92Fkl8+/dCj9z6FVeOBnuzfzK8nY0palLbMPE
         kN9CNbniqiWEOkaPbjUX1d/ebIP0WMP+4O6S572hqFg8F1jxrTlCBHxRs1dSeNd9uHjX
         QOm3t5i2ulg95R0TnHycmCtNSXC3b0CVHsHIOwhlkwt4Au4SNTgrlUwm8CQ1myTw0/Rq
         cqrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=H30b6LzNg0OHS6v2pMLtjQ9Qa3GaaOYpmdNMxAiioqM=;
        b=FxBvxwGQx5f2dcM9+Mb9jK7sm/1popRFx0fWDac5IJ7TE2uVh2zfN/4BCi/WNz5A4P
         jPC2MOoOujjI0UKMUPOyCAyRs+C1TdJBW7gjNayB0C46qp1VwY9REmd06qTWNnOyTvQA
         WQkOy8UCa1VNBJBc+Z8Dr2Td18xtUvdc9MtalJDKJH+6SlwaNmNtD0ek5Nb7uZIDqeDt
         BA5opzivyNyyD2uZVJHNQyVkRDpRfoeXv2mDDnoEZupsc085obrh4CuFeLGmtMhLsEXm
         +wMOK/VQ+fBH2V5OkolnFyMuHob+CLgppl1nGP5BRnYhHk7qXmSOxNculTi0K3E3W2xM
         UBJg==
X-Gm-Message-State: AOAM5318gVw5C/e+Wwg4GJ4FRUTpndoUZJuotFEGDjwfs/t+/ckuF48a
        AaQWKIRxonDVUZkogSwmNGGamNIg76jH
X-Google-Smtp-Source: ABdhPJxJI2a1EQZQHU97ZvLgn3AQXTSRHyn8TOb8KHqA4uBo7gJv/2Dss8k64w25x+X8yw367ZxWtM9GHZ+E
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:2061:3627:c077:944c])
 (user=tzungbi job=sendgmr) by 2002:a17:90b:ed7:: with SMTP id
 gz23mr85887pjb.1.1629995618409; Thu, 26 Aug 2021 09:33:38 -0700 (PDT)
Date:   Fri, 27 Aug 2021 00:33:29 +0800
Message-Id: <20210826163329.3903340-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe document
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        jiaxin.yu@mediatek.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The document was sent in [1] and merged to ASoC for-next branch as
commit 1afc60e00de3 ("dt-bindings: mediatek: mt8192: add audio afe
document").

However, [2] revealed that the commit 1afc60e00de3 breaks
dt_binding_check in linux-next due to dt-bindings/clock/mt8192-clk.h
doesn't exist.

[3] reverted the commit 1afc60e00de3 and merged as commit
7d94ca3c8acd ("ASoC: mt8192: revert add audio afe document").

dt-bindings/clock/mt8192-clk.h now can be found in linux-next per [4],
re-adds the document back.

[1]: https://mailman.alsa-project.org/pipermail/alsa-devel/2020-November/176577.html
[2]: https://mailman.alsa-project.org/pipermail/alsa-devel/2020-November/176873.html
[3]: https://mailman.alsa-project.org/pipermail/alsa-devel/2020-November/176897.html
[4]: https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git/commit/?h=clk-next&id=f35f1a23e0e12e3173e9e9dedbc150d139027189

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
Changes from v1 (https://patchwork.kernel.org/project/alsa-devel/list/?series=537817):
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
2.33.0.rc2.250.ged5fa647cd-goog

