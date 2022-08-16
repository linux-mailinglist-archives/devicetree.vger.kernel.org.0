Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60A83595361
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 09:07:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231669AbiHPHHP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 03:07:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiHPHG5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 03:06:57 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF48B12AB2
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 19:45:06 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id c19-20020a17090ae11300b001f2f94ed5c6so357345pjz.1
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 19:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=pwFRNhdWx8KIASaHfdd1EeDCxr49axa1c6knP9YSvcI=;
        b=VFPWaQL+arhfyR1JA9mAc6+dzdGRmxmPIXA05etl5ogkt4bbbEPX6nH+B37BXJSYLj
         tC2vnrLgBTvaKvwtvTUMhBn+QbP46eYQiH4oL0nev0lXE6ImZffTwo/7HS6E2/ePwZhd
         5ar7ga5pBIbH8qM4kaBapW44MvsHIiqDcrYhsPAvXoZi+Dxj7UBJquVFaOyz/qFJWYLN
         jzPfS679J8jAPteoAoV/PwA3GRTGnViFejCU8JZGzoIh5rOV5UnBFkJXG43lBj4A+sTI
         d24q0euPzisAzcxbwDVjoFu+JOGiTcIa+WdN7M1Bnw8A1fsuBnbQXFchwzk81r/N2iub
         ulYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=pwFRNhdWx8KIASaHfdd1EeDCxr49axa1c6knP9YSvcI=;
        b=Ai6XATEQ50Xbx6n12b69xoq0VbWiSAgQKMGsjAGeEWrgDLt3dbGZgV0VQiCBA3IEtw
         d08QQMhV09fG/PGWrfPAz3Wcmgx3EoeWnHou8HVIIttwDW8ya4vvmfyOMenG0ApnOJ+v
         RrjI8e6M5d1zWCFUgznKRUq1Cbx7GsCGlGLcK8Lp1tmW+NSGCjSyFQe6KLjxLHX9d4QM
         fisd7lGM/uum4Wmp9u4Er9aUinrQRg+5S8j+qJNK6YdUkEigt7dSrCwLj0Ps5uvq6o//
         fuPMMdA76PsJOLHR9zUDDraCBjN4UiA5sZRTMuj6nTVJOrMGx0lIY37Mv4lipwWmjCX/
         iMSg==
X-Gm-Message-State: ACgBeo1Y9f+vj0g61sKTbSUzIAAHdweVQUB97WHFYmgU1m9hV1+NvlFi
        NmjQuzwORPjZ20zDSu5QnLQ=
X-Google-Smtp-Source: AA6agR4Gb2V3Ai2U0U+wXtCTLstq9Q00/NLbTFYGuzOXypLAlOOu4lO4s5FIkvcM7ThVShVyC81rbg==
X-Received: by 2002:a17:902:e549:b0:16d:d024:2de2 with SMTP id n9-20020a170902e54900b0016dd0242de2mr19615206plf.66.1660617906150;
        Mon, 15 Aug 2022 19:45:06 -0700 (PDT)
Received: from a-VirtualBox.. ([140.207.23.215])
        by smtp.gmail.com with ESMTPSA id n68-20020a634047000000b0041b29fd0626sm6493837pga.88.2022.08.15.19.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Aug 2022 19:45:05 -0700 (PDT)
From:   Zhu Ning <zhuning0077@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     amadeusz.slawinski@tieto.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, broonie@kernel.org, devicetree@vger.kernel.org,
        robh@kernel.org, Zhu Ning <zhuning0077@gmail.com>,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: [PATCH v6 1/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
Date:   Tue, 16 Aug 2022 10:44:55 +0800
Message-Id: <20220816024456.4475-1-zhuning0077@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree binding documentation for Everest ES8326

Signed-off-by: David Yang <yangxiaohua@everest-semi.com>
Signed-off-by: Zhu Ning <zhuning@everest-semi.com>
----
v5 tested by dtschema
---
 .../bindings/sound/everest,es8326.yaml        | 116 ++++++++++++++++++
 1 file changed, 116 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/sound/everest,es8326.yaml

diff --git a/Documentation/devicetree/bindings/sound/everest,es8326.yaml b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
new file mode 100755
index 000000000000..07781408e788
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
@@ -0,0 +1,116 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/everest,es8326.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Everest ES8326 audio CODEC
+
+maintainers:
+  - David Yang <yangxiaohua@everest-semi.com>
+
+properties:
+  compatible:
+    const: everest,es8326
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock for master clock (MCLK)
+
+  clock-names:
+    items:
+      - const: mclk
+
+  "#sound-dai-cells":
+    const: 0
+
+  everest,jack-pol:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: |
+      just the value of reg 57. Bit(3) decides whether the jack polarity is inverted.
+      Bit(2) decides whether the button on the headset is inverted.
+      Bit(1)/(0) decides the mic properity to be OMTP/CTIA or auto.
+    minimum: 0x00
+    maximum: 0x0f
+    default: 0x0f
+
+  everest,mic1-src:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description:
+      the value of reg 2A when headset plugged.
+    minimum: 0x00
+    maximum: 0x77
+    default: 0x22
+
+  everest,mic2-src:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description:
+      the value of reg 2A when headset unplugged.
+    minimum: 0x00
+    maximum: 0x77
+    default: 0x44
+
+  everest,jack-detect-inverted:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Defined to invert the jack detection.
+
+  everest,interrupt-src:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: |
+      value of reg 0x58, Defines the interrupt source.
+      Bit(2) 1 means button press triggers irq, 0 means not.
+      Bit(3) 1 means PIN9 is the irq source for jack detection. When set to 0,
+      bias change on PIN9 do not triggers irq.
+      Bit(4) 1 means PIN27 is the irq source for jack detection.
+      Bit(5) 1 means PIN9 is the irq source after MIC detect.
+      Bit(6) 1 means PIN27 is the irq source after MIC detect.
+    minimum: 0
+    maximum: 0x3c
+    default: 0x08
+
+  everest,interrupt-clk:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: |
+     value of reg 0x59, Defines the interrupt output behavior.
+     Bit(0-3) 0 means irq pulse equals 512*internal clock
+       1 means irq pulse equals 1024*internal clock
+       2 means ...
+       7 means irq pulse equals 65536*internal clock
+       8 means irq mutes PA
+       9 means irq mutes PA and DAC output
+     Bit(4) 1 means we invert the interrupt output.
+     Bit(6) 1 means the chip do not detect jack type after button released.
+       0 means the chip detect jack type again after button released.
+    minimum: 0
+    maximum: 0x7f
+    default: 0x45
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      es8326: codec@19 {
+        compatible = "everest,es8326";
+        reg = <0x19>;
+        clocks = <&clks 10>;
+        clock-names = "mclk";
+        #sound-dai-cells = <0>;
+        everest,mic1-src = [22];
+        everest,mic2-src = [44];
+        everest,jack-pol = [0e];
+        everest,interrupt-src = [08];
+        everest,interrupt-clk = [45];
+      };
+    };
-- 
2.36.1

