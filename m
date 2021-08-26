Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1ACE3F89DD
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 16:13:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230281AbhHZOOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 10:14:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230273AbhHZOOP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 10:14:15 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2D7EC061757
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 07:13:27 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id r15-20020a056902154f00b00598b87f197cso3119741ybu.13
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 07:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=nm+oiHEoErhLfJkTgcszJpOfbpflkR0r1rY3Z0g5QV0=;
        b=CsGke3pT3fJP6JLQT+9VD+YgQExAPN4tlPZTSDIwom9RNnEjrP8ZgfHyk96mjzc1pa
         zSuj/5PAt0BwQIuVIrOoitm9EyZ6R7UP4a2lrQhtoW57Tear0WpfAtTOsX/RZadnyy8z
         WsORYtgLCbJ/QEwdxlMdfaK4iQc1MpIWbasm+v//tvB4pY1UvYFYgGXOSuan2uzqbF3m
         j+b0vIETiJZt0U+KpnhunkofN20OwfH+wBMye8XnWbSk6DcrbSko15CtLbTc8xodrryQ
         1VcZdvbavRM/j4VuwhuU5fPwdIvUq/4wp3M6jgTlF1RHS64y5+/Vd7C346nZ5G3fnCOY
         HZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=nm+oiHEoErhLfJkTgcszJpOfbpflkR0r1rY3Z0g5QV0=;
        b=mi+JSLEL/+f9KoNEcjqPKkYqP5jt1A5eSxHZFbZfu7G0/0VEGhvEg3xaGe11/OE8VA
         CqUODAdwhvRQdjuNdvI5xyql4SSY+umUtdqmOlURu/BH0fMtuy267hb4zT7CzFgih6OM
         PEglVfCUMIuFjDVCRaNchqSbEbvMX+UGyP2iF7U/9MoAo8PFpWGcUCwbtACKaaagpwE2
         1INJFdFIEMaZbeYd6TKyYD1M3mrLhruzwryeW6OIlrbO7UCq8w2984IjzffvfrrvBN6C
         U6jOsT47aB08pu1oroGLEJMwdiTnsoqMobeezZNzpnFp8w7918qKCg7wSYRuA3G2XMsZ
         Cp7w==
X-Gm-Message-State: AOAM532Kw63A+VV0855o00s8fJqJ0ztqfiozdHP4Ib6nOAkf42+7t/Ek
        UgEaRpzT4uOkEV2o6Or12Qo3ZSZncBty
X-Google-Smtp-Source: ABdhPJyyldb60iXwXIUmLQ2NRoZGUEHnOlHcar0/lCfrUXEuWf+dZk4mQi7FUgmLBrmg7kr5Fef/Yjg8/K4s
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:2061:3627:c077:944c])
 (user=tzungbi job=sendgmr) by 2002:a25:4f55:: with SMTP id
 d82mr5579894ybb.365.1629987206815; Thu, 26 Aug 2021 07:13:26 -0700 (PDT)
Date:   Thu, 26 Aug 2021 22:13:14 +0800
Message-Id: <20210826141314.3720975-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe document
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        jiaxin.yu@mediatek.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The document was removed temporarily by commit 7d94ca3c8acd ("ASoC:
mt8192: revert add audio afe document") because the dependency
was not merged at that time.

The dependency has merged.  Re-adds back the document.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---

More context:
- [1] reported `dt_binding_check` was broken.
- [2] reverted.
- The dependency has merged in [3] and it can be found from linux-next.

[1]: https://patchwork.kernel.org/project/alsa-devel/patch/1604390378-23993-8-git-send-email-jiaxin.yu@mediatek.com/#23736701
[2]: https://patchwork.kernel.org/project/alsa-devel/patch/1605081920-11848-1-git-send-email-jiaxin.yu@mediatek.com/
[3]: https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git/commit/?h=clk-next&id=f35f1a23e0e12e3173e9e9dedbc150d139027189

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

