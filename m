Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7FD75899E0
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 11:25:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238601AbiHDJZ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Aug 2022 05:25:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbiHDJZZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Aug 2022 05:25:25 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7A8315FC1
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 02:25:23 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id s5-20020a17090a13c500b001f4da9ffe5fso4672201pjf.5
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 02:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=pwFRNhdWx8KIASaHfdd1EeDCxr49axa1c6knP9YSvcI=;
        b=RrsOtbIJb9xJTMzlKm9TP1fkPcbVI+6k7dxfKrGM9o83RGF0KzpOMERxX0YJBRXmbt
         EmSlj6MzBXOEs0zVcF3Vx92JGTQMHNwQU3Md7edqfYIMyoXQQfA8ns/5vqHQoA/hz//f
         q5x3onLk+1MVV0UipKjigdf3UKgPKbF/slcB/1AA+DjKUF0B5bx/ZcecRqx98yPE8lkX
         eQ37HK+ZlvKP1IICzBnk8AhKkoWzBtFIVZIKAKP8kuB1QKTXkW90xAcphkrtye98yBQb
         eUS1w8q/uDSxwo1cjDazOz5x84Y3lRFneRST5OrxQzf1yz4MjVWBpMiWISVDHhu5ooaP
         iRIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=pwFRNhdWx8KIASaHfdd1EeDCxr49axa1c6knP9YSvcI=;
        b=woXtdXYOW2Kszk0cyPGOHLG9HFQlYkypj2vOQGksYCnzOgY0Zf43oZ1GbNqhbmWFXp
         UBeO7rUprEVxW9LMzQHXxmt+I/72uxxtbGFEiiGqojIzo+HNdFA5RwEskWME7M+m0DaX
         +J1Sbg6ltbAZkQarzof8TkiNGTQWSfMKfo5nme60v/Yf/QsS7VBusE6yUJCf6vc3ZpTS
         pOQm4j/yBYdHAKbd2QKe2lb1HTZxemJzrN9PsiO9oKqKBd1MnJb1j0w8W4OTgz0bDxkb
         07vDS/1QFStRTie8MqKbQQR9sbAPIFYQybRXp3CnAl/9TRRq2saIDlHcX/SmTpatw59x
         bNxA==
X-Gm-Message-State: ACgBeo1st3Ueqtti1DkaxvwYZy2sFiSv3wh/b22vGFd1Pig+++15Eojt
        TKARm6dgPfxABsqwJ1ZH5zo=
X-Google-Smtp-Source: AA6agR66jKeMmNN8UdPuXbzeYMjmM6NmKD+7AMs6YH5R7KWXrg9qMhdNnGJ+xDlKm69b96OQmNsXSQ==
X-Received: by 2002:a17:90b:4aca:b0:1f4:ea26:f589 with SMTP id mh10-20020a17090b4aca00b001f4ea26f589mr9289042pjb.142.1659605123311;
        Thu, 04 Aug 2022 02:25:23 -0700 (PDT)
Received: from a-VirtualBox.. ([116.233.75.140])
        by smtp.gmail.com with ESMTPSA id u2-20020a170902e5c200b0016ec8286733sm365901plf.243.2022.08.04.02.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Aug 2022 02:25:23 -0700 (PDT)
From:   Zhu Ning <zhuning0077@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        broonie@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
        Zhu Ning <zhuning0077@gmail.com>,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: [PATCH v5 1/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
Date:   Thu,  4 Aug 2022 17:17:59 +0800
Message-Id: <20220804091800.744316-1-zhuning0077@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
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

