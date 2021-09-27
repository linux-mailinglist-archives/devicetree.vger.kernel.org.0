Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C397041957E
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 15:56:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234641AbhI0N6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 09:58:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234660AbhI0N6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 09:58:09 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F371C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:31 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id l18-20020a05600c4f1200b002f8cf606262so658714wmq.1
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3Z5Vb1RSBflZ+7ZLNkpjt6NBAFfXXldbHtQ/st8v0lA=;
        b=tZXURVze3Gecje/XiDOBrZzfyd9AbrarsPdu8eqBx6bLju1fsqtddu1WkNKH9+9NJM
         JPwUfM1EzDOwYfugZtwzjqURbuUhetY5ejvbuNNd6+md9GRrmsu5+iUXCaW0qn/P4B4d
         z3Bj8/dQrCCVJrxZfgFM/HemEDi0wjut5DJRZ5iyK6OHXI8fwGSCNwfhIpcroEal+oGi
         b1Z15qfvIepYO5a19FkyhNP4xomtT7YAtvN1oaS+I9X9PnnQc4KOEDPJLfkYHgET5J0F
         zvIi2SvZN9r/b6kTraNtGi7ygl3zj7q9M+0FyQ34TbZAG8b7Te9l/aQjOnfE/xkDKXmH
         V2Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3Z5Vb1RSBflZ+7ZLNkpjt6NBAFfXXldbHtQ/st8v0lA=;
        b=shGeJNP9HW0ZJ8e79EAs2u4CMkR/AKtPeFVH3xN5tX2m+HVWQIMmYzEhpSrKli5i/X
         zvX+3nL0TIN9p1BbrR+5TMg/AqjvwEngg1OMHqkBnCnkZHOfq5ptRmSb+owGli++3I4v
         bhXFBJU8OxXgCK/bFHI0eLtqHq9qc7bN+g+JNwfcSyn/BjzuE3RHiJUpUptCyhHG6bgf
         rtJVXviabjunEVPJNPnZ6uml8rkDQ3xS7Fpdf2zEOzMFcTJ7txF3AovAWel7Z8/UuKqG
         9l+23az3EW/ZVmGXWDIIzxSaYVuQhTkFf22QNCk+hUf2iAqiFkoRNPPF0hP6cExsFrXO
         VJfA==
X-Gm-Message-State: AOAM531zzZLKhNpfAWYFRRWEuZvQ3mGMw+qHDZ3xz4Oqco1c7baZRind
        b+ASjvHf7MVZOVTEq2QAyMi6bA==
X-Google-Smtp-Source: ABdhPJwx8520vWaLNSUxL8ZMhtweWpmmKZ/nnjWHftoDhFi2w7dGkDsNqznuig9tIqk8JThxzgcX6A==
X-Received: by 2002:a1c:9a07:: with SMTP id c7mr6544086wme.106.1632750989999;
        Mon, 27 Sep 2021 06:56:29 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b7sm20485606wrm.9.2021.09.27.06.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 06:56:29 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 06/22] ASoC: dt-bindings: move LPASS dai related bindings out of q6afe
Date:   Mon, 27 Sep 2021 14:55:43 +0100
Message-Id: <20210927135559.738-7-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

q6afe (Audio Front End) is one of the DSP service that handles both
LPASS (Low Power Audio SubSystem) Audio ports and LPASS clocks.
As LPASS is a hardwware IP and commonly used by Qualcomm Audio DSP.
In order to allow  multiple DSP frameworks to use these bindings
its best to move it out from the dsp specific bindings.

For compatibility reasons and not breaking which is already working
we still maintain same compatible string "qcom,q6afe-dais"

Also as part of this change convert these LPASS dai related bindings
into yaml format.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/sound/qcom,q6afe.txt  | 158 ----------------
 .../sound/qcom,q6dsp-lpass-ports.yaml         | 178 ++++++++++++++++++
 2 files changed, 178 insertions(+), 158 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6afe.txt b/Documentation/devicetree/bindings/sound/qcom,q6afe.txt
index 2d6fb2ea75a0..fcf81058504c 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6afe.txt
+++ b/Documentation/devicetree/bindings/sound/qcom,q6afe.txt
@@ -12,92 +12,6 @@ used by all apr services. Must contain the following properties.
 		  from DSP.
 		  example "qcom,q6afe"
 
-= AFE DAIs (Digial Audio Interface)
-"dais" subnode of the AFE node. It represents afe dais, each afe dai is a
-subnode of "dais" representing board specific dai setup.
-"dais" node should have following properties followed by dai children.
-
-- compatible:
-	Usage: required
-	Value type: <stringlist>
-	Definition: must be "qcom,q6afe-dais"
-
-- #sound-dai-cells
-	Usage: required
-	Value type: <u32>
-	Definition: Must be 1
-
-- #address-cells
-	Usage: required
-	Value type: <u32>
-	Definition: Must be 1
-
-- #size-cells
-	Usage: required
-	Value type: <u32>
-	Definition: Must be 0
-
-== AFE DAI is subnode of "dais" and represent a dai, it includes board specific
-configuration of each dai. Must contain the following properties.
-
-- reg
-	Usage: required
-	Value type: <u32>
-	Definition: Must be dai id
-
-- qcom,sd-lines
-	Usage: required for mi2s interface
-	Value type: <prop-encoded-array>
-	Definition: Must be list of serial data lines used by this dai.
-	should be one or more of the 0-3 sd lines.
-
- - qcom,tdm-sync-mode:
-	Usage: required for tdm interface
-	Value type: <prop-encoded-array>
-	Definition: Synchronization mode.
-		0 - Short sync bit mode
-		1 - Long sync mode
-		2 - Short sync slot mode
-
- - qcom,tdm-sync-src:
-	Usage: required for tdm interface
-	Value type: <prop-encoded-array>
-	Definition: Synchronization source.
-		0 - External source
-		1 - Internal source
-
- - qcom,tdm-data-out:
-	Usage: required for tdm interface
-	Value type: <prop-encoded-array>
-	Definition: Data out signal to drive with other masters.
-		0 - Disable
-		1 - Enable
-
- - qcom,tdm-invert-sync:
-	Usage: required for tdm interface
-	Value type: <prop-encoded-array>
-	Definition: Invert the sync.
-		0 - Normal
-		1 - Invert
-
- - qcom,tdm-data-delay:
-	Usage: required for tdm interface
-	Value type: <prop-encoded-array>
-	Definition: Number of bit clock to delay data
-		with respect to sync edge.
-		0 - 0 bit clock cycle
-		1 - 1 bit clock cycle
-		2 - 2 bit clock cycle
-
- - qcom,tdm-data-align:
-	Usage: required for tdm interface
-	Value type: <prop-encoded-array>
-	Definition: Indicate how data is packed
-		within the slot. For example, 32 slot width in case of
-		sample bit width is 24.
-		0 - MSB
-		1 - LSB
-
 = AFE CLOCKSS
 "clocks" subnode of the AFE node. It represents q6afe clocks
 "clocks" node should have following properties.
@@ -122,78 +36,6 @@ apr-service@4 {
 	compatible = "qcom,q6afe";
 	reg = <APR_SVC_AFE>;
 
-	dais {
-		compatible = "qcom,q6afe-dais";
-		#sound-dai-cells = <1>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		dai@1 {
-			reg = <HDMI_RX>;
-		};
-
-		dai@24 {
-			reg = <PRIMARY_TDM_RX_0>;
-			qcom,tdm-sync-mode = <1>:
-			qcom,tdm-sync-src = <1>;
-			qcom,tdm-data-out = <0>;
-			qcom,tdm-invert-sync = <1>;
-			qcom,tdm-data-delay = <1>;
-			qcom,tdm-data-align = <0>;
-
-		};
-
-		dai@25 {
-			reg = <PRIMARY_TDM_TX_0>;
-			qcom,tdm-sync-mode = <1>:
-			qcom,tdm-sync-src = <1>;
-			qcom,tdm-data-out = <0>;
-			qcom,tdm-invert-sync = <1>;
-			qcom,tdm-data-delay <1>:
-			qcom,tdm-data-align = <0>;
-		};
-
-		dai@16 {
-			reg = <PRIMARY_MI2S_RX>;
-			qcom,sd-lines = <0 2>;
-		};
-
-		dai@17 {
-			reg = <PRIMARY_MI2S_TX>;
-			qcom,sd-lines = <1>;
-		};
-
-		dai@18 {
-			reg = <SECONDARY_MI2S_RX>;
-			qcom,sd-lines = <0 3>;
-		};
-
-		dai@19 {
-			reg = <SECONDARY_MI2S_TX>;
-			qcom,sd-lines = <1>;
-		};
-
-		dai@20 {
-			reg = <TERTIARY_MI2S_RX>;
-			qcom,sd-lines = <1 3>;
-		};
-
-		dai@21 {
-			reg = <TERTIARY_MI2S_TX>;
-			qcom,sd-lines = <0>;
-		};
-
-		dai@22 {
-			reg = <QUATERNARY_MI2S_RX>;
-			qcom,sd-lines = <0>;
-		};
-
-		dai@23 {
-			reg = <QUATERNARY_MI2S_TX>;
-			qcom,sd-lines = <1>;
-		};
-	};
-
 	clocks {
 		compatible = "qcom,q6afe-clocks";
 		#clock-cells = <2>;
diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
new file mode 100644
index 000000000000..e6148c17419b
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
@@ -0,0 +1,178 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/sound/qcom,q6dsp-lpass-ports.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm DSP LPASS(Low Power Audio SubSystem) Audio Ports binding
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  This binding describes the Qualcomm DSP LPASS Audio ports
+
+properties:
+  compatible:
+    enum:
+      - qcom,q6afe-dais
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
+      Q6DSP Digital Audio Interfaces.
+
+    properties:
+      reg:
+        description:
+          Digital Audio Interface ID
+
+      qcom,sd-lines:
+        $ref: /schemas/types.yaml#/definitions/uint32-array
+        description:
+          List of serial data lines used by this dai.should be one or more of the 0-3 sd lines.
+        minItems: 1
+        maxItems: 4
+        uniqueItems: true
+        items:
+          minimum: 0
+          maximum: 3
+
+      qcom,tdm-sync-mode:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2]
+        description:
+          TDM Synchronization mode
+            0 = Short sync bit mode
+            1 = Long sync mode
+            2 = Short sync slot mode
+
+      qcom,tdm-sync-src:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+        description:
+          TDM Synchronization source
+            0 = External source
+            1 = Internal source
+
+      qcom,tdm-data-out:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+        description:
+          TDM Data out signal to drive with other masters
+            0 = Disable
+            1 = Enable
+
+      qcom,tdm-invert-sync:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+        description:
+          TDM Invert the sync
+            0 = Normal
+            1 = Invert
+
+      qcom,tdm-data-delay:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2]
+        description:
+          TDM Number of bit clock to delay data
+            0 = 0 bit clock cycle
+            1 = 1 bit clock cycle
+            2 = 2 bit clock cycle
+
+      qcom,tdm-data-align:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+        description:
+          Indicate how data is packed within the slot. For example, 32 slot
+          width in case of sample bit width is 24TDM Invert the sync.
+            0 = MSB
+            1 = LSB
+
+    required:
+      - reg
+
+    allOf:
+      - if:
+          properties:
+            reg:
+              contains:
+                # TDM DAI ID range from PRIMARY_TDM_RX_0 - QUINARY_TDM_TX_7
+                items:
+                  minimum: 24
+                  maximum: 103
+        then:
+          required:
+            - qcom,tdm-sync-mode
+            - qcom,tdm-sync-src
+            - qcom,tdm-data-out
+            - qcom,tdm-invert-sync
+            - qcom,tdm-data-delay
+            - qcom,tdm-data-align
+
+      - if:
+          properties:
+            reg:
+              contains:
+                # MI2S DAI ID range PRIMARY_MI2S_RX - QUATERNARY_MI2S_TX and
+                # QUINARY_MI2S_RX - QUINARY_MI2S_TX
+                items:
+                  oneOf:
+                    - minimum: 16
+                      maximum: 23
+                    - minimum: 127
+                      maximum: 128
+        then:
+          required:
+            - qcom,sd-lines
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
+    #include <dt-bindings/sound/qcom,q6afe.h>
+    apr {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        apr-service@4 {
+            reg = <APR_SVC_AFE>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            q6afedai@1 {
+              compatible = "qcom,q6afe-dais";
+              reg = <1>;
+              #address-cells = <1>;
+              #size-cells = <0>;
+              #sound-dai-cells = <1>;
+
+              dai@22 {
+                reg = <QUATERNARY_MI2S_RX>;
+                qcom,sd-lines = <0 1 2 3>;
+              };
+            };
+        };
+      };
-- 
2.21.0

