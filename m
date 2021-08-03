Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ABA13DEE4E
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 14:54:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235635AbhHCMyt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 08:54:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235946AbhHCMyp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 08:54:45 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D995C06179C
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 05:54:32 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id k4so14389983wrc.0
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 05:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=srjL+CjaMsC+td6kJ/KJXLzzpzYR+bTd3helCWOhv3s=;
        b=fnXtAII90N3qUIMkvucVX1eXqXiMt43kp3SWqNK9UwWsGVovkl6VxfWDwjTV7VnD71
         hf1N2CjE2V985JVP8PJv7YlscCCYIJa49Uf4/yl/VAFazVxQ1qKNW8RTB3AJ8H5g0bCj
         FWnej9PpVNHs+5iu38dYgUVXPzTZ7k7RWxF1VU3zyvbG+0KKAl5PzCeqIUlW7U/kKf/P
         ku/UM/UeJ77c8Kaj41F/NsHbS3qEkoW7AMDnh5GIIqBIuZHtH5pZ7peKsNwZ3mUFm8po
         hryaOfPKCqTwoJ+/D2ueQ0cKyvz7z10npOi7o67WYvkYXcCzHYeyDfxTLOZarD4LLMyD
         JiGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=srjL+CjaMsC+td6kJ/KJXLzzpzYR+bTd3helCWOhv3s=;
        b=MVGcoPpalOMfZ0ylhCEzWU4o/KED5R/cH1zlE1Fpr7Um/6jSIUI3dBvg0Rog4BkOrx
         /udy/40zyEMf+19yetOCJmSB7hWGj7HqoGU9z5NU3bE1WjvZ/De3DMPXz8K965Bto7Nl
         GUb8aHhwsRstW18b7l7XVLKgL5JeWsgQF2/WLabdvj3MSGSnBBhQnFdczIYza1jRxKPW
         eO1BgZK+egAJUiTwt7v1cR4lD3WZwz7K6vlTN8vC3x6DZbgfRo4td4Hv4UKlCOEKCDJH
         TqUF0OUiZHP0SvrmpGDcPFFcjXq6PCCIz5JZP+y3y388iRUU2+X16du5ogPLZ1U57qup
         v3Xg==
X-Gm-Message-State: AOAM533/lhYWq5gG8BEvm9V2kCneDNYQfJKmne/9Gt1Lb+p0hglLXc1k
        kZcGaNO0NO5IY/9t5Tdfxnol0g==
X-Google-Smtp-Source: ABdhPJxLXKHQ2laoK+Irqvkzqjef2sVBopk2gQP9LMUhszrAhx1kmno6gnNgTKYCgtU0lU+8Zn2wXg==
X-Received: by 2002:adf:f68a:: with SMTP id v10mr22935528wrp.366.1627995271039;
        Tue, 03 Aug 2021 05:54:31 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h14sm14695574wrp.55.2021.08.03.05.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 05:54:30 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 07/20] ASoC: dt-bindings: replace q6asm with q6dsp audio stream bindings
Date:   Tue,  3 Aug 2021 13:53:58 +0100
Message-Id: <20210803125411.28066-8-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DSP Audio Strem bindings have been documented with DSP services bindings
which makes it difficult to reuse them, so pull them out in to a dedicated
bindings.
Also as part of this change convert them into yaml format.

This patch also removes q6asm bindings as dsp services are now documented in
apr bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../devicetree/bindings/sound/qcom,q6asm.txt  | 70 --------------
 .../sound/qcom,q6dsp-audio-stream.yaml        | 94 +++++++++++++++++++
 2 files changed, 94 insertions(+), 70 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/qcom,q6asm.txt
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-stream.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6asm.txt b/Documentation/devicetree/bindings/sound/qcom,q6asm.txt
deleted file mode 100644
index 8c4883becae9..000000000000
--- a/Documentation/devicetree/bindings/sound/qcom,q6asm.txt
+++ /dev/null
@@ -1,70 +0,0 @@
-Qualcomm Audio Stream Manager (Q6ASM) binding
-
-Q6ASM is one of the APR audio service on Q6DSP.
-Please refer to qcom,apr.txt for details of the common apr service bindings
-used by the apr service device.
-
-- but must contain the following property:
-
-- compatible:
-	Usage: required
-	Value type: <stringlist>
-	Definition: must be "qcom,q6asm-v<MAJOR-NUMBER>.<MINOR-NUMBER>".
-		    Or "qcom,q6asm" where the version number can be queried
-		    from DSP.
-		    example "qcom,q6asm-v2.0"
-
-= ASM DAIs (Digial Audio Interface)
-"dais" subnode of the ASM node represents dai specific configuration
-
-- compatible:
-	Usage: required
-	Value type: <stringlist>
-	Definition: must be "qcom,q6asm-dais".
-
-- #sound-dai-cells
-	Usage: required
-	Value type: <u32>
-	Definition: Must be 1
-
-== ASM DAI is subnode of "dais" and represent a dai, it includes board specific
-configuration of each dai. Must contain the following properties.
-
-- reg
-	Usage: required
-	Value type: <u32>
-	Definition: Must be dai id
-
-- direction:
-	Usage: Required for Compress offload dais
-	Value type: <u32>
-	Definition: Specifies the direction of the dai stream
-			Q6ASM_DAI_TX_RX (0) for both tx and rx
-			Q6ASM_DAI_TX (1) for only tx (Capture/Encode)
-			Q6ASM_DAI_RX (2) for only rx (Playback/Decode)
-
-- is-compress-dai:
-	Usage: Required for Compress offload dais
-	Value type: <boolean>
-	Definition: present for Compress offload dais
-
-
-= EXAMPLE
-#include <dt-bindings/sound/qcom,q6asm.h>
-
-apr-service@7 {
-	compatible = "qcom,q6asm";
-	reg = <APR_SVC_ASM>;
-	q6asmdai: dais {
-		compatible = "qcom,q6asm-dais";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		#sound-dai-cells = <1>;
-
-		dai@0 {
-			reg = <0>;
-			direction = <Q6ASM_DAI_RX>;
-			is-compress-dai;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-stream.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-stream.yaml
new file mode 100644
index 000000000000..0e70b486b51a
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-stream.yaml
@@ -0,0 +1,94 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/sound/qcom,q6dsp-audio-stream.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm DSP Audio Stream binding
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  This binding describes the Qualcomm DSP Audio stream
+
+properties:
+  compatible:
+    const: qcom,q6asm-dais
+
+  reg:
+    maxItems: 1
+
+  '#sound-dai-cells':
+    const: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+#Digital Audio Interfaces
+patternProperties:
+  '^dai@[0-9]+$':
+    type: object
+    description:
+      Q6DSP Audio Stream Digital Audio Interfaces.
+
+    properties:
+      reg:
+        description:
+          Digital Audio Interface ID
+
+      direction:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2]
+        description:
+          Compress DAI direction
+            0 = bi-directional
+            1 = tx only
+            2 = rx only
+
+      is-compress-dai:
+        type: boolean
+        description:
+          Indicate if DAI is for compress offload
+
+    required:
+      - reg
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/soc/qcom,apr.h>
+    apr {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        apr-service@7 {
+            reg = <APR_SVC_ASM>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            q6asmdai@1 {
+              compatible = "qcom,q6asm-dais";
+              reg = <1>;
+              #address-cells = <1>;
+              #size-cells = <0>;
+              #sound-dai-cells = <1>;
+
+              dai@1 {
+                reg = <1>;
+                is-compress-dai;
+              };
+            };
+        };
+      };
-- 
2.21.0

