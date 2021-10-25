Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D5F2439D44
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 19:17:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231802AbhJYRTh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 13:19:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232051AbhJYRTh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 13:19:37 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C864CC061767
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:14 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id w15so10477159wra.3
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=imP3Ut5HB4n6q2DrZyy9qRcidcMnxdcc3SMVUqr3MKw=;
        b=ytmeHT7b8bD7ME97opCDFy9ymvzz2JSucp5wAIyAREAmRulcGoqIU+peD/bWfwDpfL
         yZClh9WJRvqdxt+OkseIl+/JhiqineYwgX+ldMA8gBenYIfbycbmOH2+q9ZSMOoRzC8k
         r4ZYrCpFOWKNnjWJ4gsrEE08uLD4LsbCjO2I1+tgbJUeUAwJtBb6ONxCu+Z6QZDNr5/J
         wVCZK/AtT4hdPgM2+Qs5OcMP/L53oUD6Lzl2+DHKEWgm/2/nTiotpaYuaIsbfjmuUARG
         6oJlauTUh+GsPd0GOXZ8M3Md9t3lTr90CLG3aHOzIZCkMFcvJJpc+ntXzW/MQl2HOk7l
         lG3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=imP3Ut5HB4n6q2DrZyy9qRcidcMnxdcc3SMVUqr3MKw=;
        b=h4ssf3xVN5tpmVbAHBAIjl8BS0qxLTazQVc6BhNWppTq743/lKxsDWGVO9zBTsg4vy
         akWRXNyXEiQFdW5K25mDxQdBaEiBPU3Kc+8YF15X3V5kTRztjtpw6jJriPjqzrZzebvT
         iy3ScqJqm1dmWSmvB5s8Yj0zh/6/2MZkcc8ptjkSSFYxfDaJNT/04vmo07yMlZbja0Mb
         VP69Q3hkzGLt/BhMr+WcpalvY5ZnQHtEHMNTK310PAUdjlT7UgqoNVxl1fyGm1idDa8t
         RRgOHtNMtbJ0BNleheuEnzVNVP76PdLDK6FMwOE28Zv4wBEZa3389G84576h3mqxqd7b
         4PYQ==
X-Gm-Message-State: AOAM5328hIAbp9OI5BT2nimZDcYAfiEQIaXyaKNdUUUtpUxvh4shPOSR
        vm3GGZ1idRwjupIggf0N0xc6VA==
X-Google-Smtp-Source: ABdhPJzQSTTPH8B996xcbO7hA8Gu01AB4NaazJBxaMjqu5rGhZl+exkX3x2ifxKoptxXfvC1g5em3A==
X-Received: by 2002:adf:a1cc:: with SMTP id v12mr25227806wrv.48.1635182232872;
        Mon, 25 Oct 2021 10:17:12 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id r11sm5181012wrt.42.2021.10.25.10.17.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 10:17:12 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v10 02/17] ASoC: dt-bindings: move LPASS clocks related bindings out of q6afe
Date:   Mon, 25 Oct 2021 18:16:34 +0100
Message-Id: <20211025171649.17730-3-srinivas.kandagatla@linaro.org>
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
we still maintain same compatible string "qcom,q6afe-clocks"

Also as part of this change convert these LPASS clocks related bindings
into yaml format.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/sound/qcom,q6afe.txt  | 23 --------
 .../sound/qcom,q6dsp-lpass-clocks.yaml        | 56 +++++++++++++++++++
 2 files changed, 56 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6afe.txt b/Documentation/devicetree/bindings/sound/qcom,q6afe.txt
index fcf81058504c..bc6b5f1fe4f1 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6afe.txt
+++ b/Documentation/devicetree/bindings/sound/qcom,q6afe.txt
@@ -12,32 +12,9 @@ used by all apr services. Must contain the following properties.
 		  from DSP.
 		  example "qcom,q6afe"
 
-= AFE CLOCKSS
-"clocks" subnode of the AFE node. It represents q6afe clocks
-"clocks" node should have following properties.
-- compatible:
-	Usage: required
-	Value type: <stringlist>
-	Definition: must be "qcom,q6afe-clocks"
-
-- #clock-cells:
-	Usage: required
-	Value type: <u32>
-	Definition: Must be 2. Clock Id followed by
-		below valid clock coupling attributes.
-		1 - for no coupled clock
-		2 - for dividend of the coupled clock
-		3 - for divisor of the coupled clock
-		4 - for inverted and no couple clock
-
 = EXAMPLE
 
 apr-service@4 {
 	compatible = "qcom,q6afe";
 	reg = <APR_SVC_AFE>;
-
-	clocks {
-		compatible = "qcom,q6afe-clocks";
-		#clock-cells = <2>;
-	};
 };
diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
new file mode 100644
index 000000000000..c686164732aa
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/sound/qcom,q6dsp-lpass-clocks.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm DSP LPASS Clock Controller binding
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  This binding describes the Qualcomm DSP Clock Controller
+
+properties:
+  compatible:
+    enum:
+      - qcom,q6afe-clocks
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 2
+    description:
+      Clock Id is followed by clock coupling attributes.
+        1 = for no coupled clock
+        2 = for dividend of the coupled clock
+        3 = for divisor of the coupled clock
+        4 = for inverted and no couple clock
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
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
+            clock-controller@2 {
+              compatible = "qcom,q6afe-clocks";
+              reg = <2>;
+              #clock-cells = <2>;
+            };
+        };
+      };
-- 
2.21.0

