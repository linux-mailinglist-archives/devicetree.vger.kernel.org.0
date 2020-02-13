Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 50CDF15C508
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2020 16:54:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729345AbgBMPwt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Feb 2020 10:52:49 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:54807 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729953AbgBMPwN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Feb 2020 10:52:13 -0500
Received: by mail-wm1-f67.google.com with SMTP id g1so6797170wmh.4
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2020 07:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6YhrzCi95LftKcnPaWRcj71zpUelsdIguZJo9dP4H/c=;
        b=uzfpKBfeVATiA0cT3Ut5HPxkUFwA0xjWgzJwbGxwYRDN9d0N+xqCxAxu89JjjH5DBT
         IKu0xoyRGJukUN42Hs9dlZnVBIZaYGAlpOmZ9zd5Px6GgaO91upfgt4Uy7G6twTjhI24
         juXlEwBd7EMPCxQLo5Lf8Pv5bd7M9movwRvKvjk83is1zuQRk6fw3AwAPYd2m31HJfKu
         MMGlqEDW7YKKtr5jscWL4RtriaiX2qd/RcuanWacmFYHme66JcSRplBuirOOA0vdPJBL
         ke416sMATXnSlbfMpffFfAesdFmLcEkw6BWOivyeEgxef7eZ4FVvePUnYOtqAHrxNTNa
         dJYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6YhrzCi95LftKcnPaWRcj71zpUelsdIguZJo9dP4H/c=;
        b=PLZHLU75puOll5TgDiAgvfazGMVOllEKQf/cHcjPGM8DMy5lomTCLVGXmKZ7dixdNQ
         9zLw3BJR0sbCilp1bEei9ufxTp5ICLU86xLdKXf2sKnfUa5GGT3pjvIV9oNVd6Lb9UHf
         NVjE58D+XjmuYZ1SpwcO8qLHlt1DxWMYLO+Qt7lblz5+6jS6pMKJp+y8ktRu5F5k89Xy
         xCLUG0W1F1P7pj9OrO34EmMTreN0HyTCQLpyd0yj2XTVS4Q6+aBczUbEBQO42Y1VxUZ7
         q3sBbq9+OfLmxgM+MwTUcbsLRJQmEMv8TOHrIo6PK/k0GsUkCHiwi1nMx82jiQhaSKRU
         5sGw==
X-Gm-Message-State: APjAAAX9g+HGF0fdzq3RzHf4rgwDfFuLik3x1DeQamiN8DaYziF/udBA
        68TE2bvPa3dNfdPJcuynYuCf0Q==
X-Google-Smtp-Source: APXvYqz/3hR6MBoFcwP1f0vbSeUJb+sFQI9maPj9mek2Phcd0eRR4aVLSkGyFWfQ2VyWqCd0zHCu5Q==
X-Received: by 2002:a1c:ac46:: with SMTP id v67mr6274807wme.153.1581609130878;
        Thu, 13 Feb 2020 07:52:10 -0800 (PST)
Received: from starbuck.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id e1sm3319814wrt.84.2020.02.13.07.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2020 07:52:10 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 3/9] ASoC: meson: aiu: add audio output dt-bindings
Date:   Thu, 13 Feb 2020 16:51:53 +0100
Message-Id: <20200213155159.3235792-4-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213155159.3235792-1-jbrunet@baylibre.com>
References: <20200213155159.3235792-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the dt-bindings and documentation of the AIU audio controller.
This component provides most of the audio outputs found on the Amlogic
Gx SoC family.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../bindings/sound/amlogic,aiu.yaml           | 111 ++++++++++++++++++
 include/dt-bindings/sound/meson-aiu.h         |  18 +++
 2 files changed, 129 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
 create mode 100644 include/dt-bindings/sound/meson-aiu.h

diff --git a/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml b/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
new file mode 100644
index 000000000000..3ef7632dcb59
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/amlogic,aiu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic AIU audio output controller
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+properties:
+  $nodename:
+    pattern: "^audio-controller@.*"
+
+  "#sound-dai-cells":
+    const: 2
+
+  compatible:
+    items:
+      - enum:
+        - amlogic,aiu-gxbb
+        - amlogic,aiu-gxl
+      - const:
+          amlogic,aiu
+
+  clocks:
+    items:
+      - description: AIU peripheral clock
+      - description: I2S peripheral clock
+      - description: I2S output clock
+      - description: I2S master clock
+      - description: I2S mixer clock
+      - description: SPDIF peripheral clock
+      - description: SPDIF output clock
+      - description: SPDIF master clock
+      - description: SPDIF master clock multiplexer
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: i2s_pclk
+      - const: i2s_aoclk
+      - const: i2s_mclk
+      - const: i2s_mixer
+      - const: spdif_pclk
+      - const: spdif_aoclk
+      - const: spdif_mclk
+      - const: spdif_mclk_sel
+
+  interrupts:
+    items:
+      - description: I2S interrupt line
+      - description: SPDIF interrupt line
+
+  interrupt-names:
+    items:
+      - const: i2s
+      - const: spdif
+
+  reg:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - "#sound-dai-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - reg
+  - resets
+
+examples:
+  - |
+    #include <dt-bindings/clock/gxbb-clkc.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/amlogic,meson-gxbb-reset.h>
+
+    aiu: audio-controller@5400 {
+        compatible = "amlogic,aiu-gxl", "amlogic,aiu";
+        #sound-dai-cells = <2>;
+        reg = <0x0 0x5400 0x0 0x2ac>;
+        interrupts = <GIC_SPI 48 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 50 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names = "i2s", "spdif";
+        clocks = <&clkc CLKID_AIU_GLUE>,
+                 <&clkc CLKID_I2S_OUT>,
+                 <&clkc CLKID_AOCLK_GATE>,
+                 <&clkc CLKID_CTS_AMCLK>,
+                 <&clkc CLKID_MIXER_IFACE>,
+                 <&clkc CLKID_IEC958>,
+                 <&clkc CLKID_IEC958_GATE>,
+                 <&clkc CLKID_CTS_MCLK_I958>,
+                 <&clkc CLKID_CTS_I958>;
+        clock-names = "pclk",
+                      "i2s_pclk",
+                      "i2s_aoclk",
+                      "i2s_mclk",
+                      "i2s_mixer",
+                      "spdif_pclk",
+                      "spdif_aoclk",
+                      "spdif_mclk",
+                      "spdif_mclk_sel";
+        resets = <&reset RESET_AIU>;
+    };
+
diff --git a/include/dt-bindings/sound/meson-aiu.h b/include/dt-bindings/sound/meson-aiu.h
new file mode 100644
index 000000000000..1051b8af298b
--- /dev/null
+++ b/include/dt-bindings/sound/meson-aiu.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_MESON_AIU_H
+#define __DT_MESON_AIU_H
+
+#define AIU_CPU			0
+#define AIU_HDMI		1
+#define AIU_ACODEC		2
+
+#define CPU_I2S_FIFO		0
+#define CPU_SPDIF_FIFO		1
+#define CPU_I2S_ENCODER		2
+#define CPU_SPDIF_ENCODER	3
+
+#define CTRL_I2S		0
+#define CTRL_PCM		1
+#define CTRL_OUT		2
+
+#endif /* __DT_MESON_AIU_H */
-- 
2.24.1

