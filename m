Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B4D0439D42
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 19:17:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231686AbhJYRTg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 13:19:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231802AbhJYRTf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 13:19:35 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3331EC061745
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:13 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id v17so12829888wrv.9
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0sqozBq+aXNpDnMO1F1fpUtm2LewFLxPBuJo7vey+3c=;
        b=LKclu6SaBqhTgfIomva1urEsQC7HK41HTgVlE4kwot0qJTvGeMcVlVPQLU4LQyazha
         oNfSFuchFvtCYXVFwWCCEI02XvG+EVcm1A+y2mCvZvVx/yBfaIrtZxWEP/5KQOrf/yqR
         ohDPDi3/DPlLYWm3IWqDBHUdTq2Lh7Obz+bo4rjKBNzwKFmmmyYcl82m0+jOVoJlFTZN
         hCwLRxNYchwuWlUtC0bCDMox8YfBFctk+Zu404GVZ02iOIVjBDnjZbBBEBUkcX1vQCxC
         mInJqpo51VhgLAdWer0ZFZDIUWRHlo3fqhX8OXHkOJYMHGGUKcpmVmnqW3LM/qV27okC
         u0bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0sqozBq+aXNpDnMO1F1fpUtm2LewFLxPBuJo7vey+3c=;
        b=M/T8Ne9D8PO5TZ+vMW7OKwapfw4H2sZz+hmCcEWEQBRaizJ8D/FMuhVpiFrJWmTavN
         H3+3VPy7q50n0onKTvBEzBHOFTStqevy04aFkZbhspQjquqGP6aYRc2LUdYtVXVYEeer
         jt/J0b6pLA2r3Z8fuxtLmbCap6LY9TR7yxex7O3PBXFSUwdzjuKiasJw518iaRJmq6fm
         3ktpu38YuMYuyuPS3lBHoGynGtlv7WAX3LAz9MQuB4i1dp6Rujw58SCxA4UZTKLx4mYt
         wCy74KQzOITe8Ui5SpCgiqOMl9tMtu21Zp81YkMjvzXs02j6LTcBVNACBHlpTIwESmB6
         PKNg==
X-Gm-Message-State: AOAM533YP8Rn2E2x3dIvuIANER0QWhDqwt2jz/dNgXwxuF9VqSVvVlxA
        +YlY7K5j7gXLmv3FQgcAXrJQhg==
X-Google-Smtp-Source: ABdhPJz3bpjZhDyhWe1dzyBfIY5pNqjiRvc6PQoJSMRO0cS1RD5XGbNeieCgYhPK8Lq141Wpy5DjHA==
X-Received: by 2002:a5d:6941:: with SMTP id r1mr13478593wrw.373.1635182231744;
        Mon, 25 Oct 2021 10:17:11 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id r11sm5181012wrt.42.2021.10.25.10.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 10:17:11 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v10 01/17] ASoC: dt-bindings: move LPASS dai related bindings out of q6afe
Date:   Mon, 25 Oct 2021 18:16:33 +0100
Message-Id: <20211025171649.17730-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
References: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
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
index 1677448347da..fcf81058504c 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6afe.txt
+++ b/Documentation/devicetree/bindings/sound/qcom,q6afe.txt
@@ -12,92 +12,6 @@ used by all apr services. Must contain the following properties.
 		  from DSP.
 		  example "qcom,q6afe"
 
-= AFE DAIs (Digital Audio Interface)
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

