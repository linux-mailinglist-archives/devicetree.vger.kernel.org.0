Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C626B3FFEFE
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 13:22:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348629AbhICLWm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 07:22:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348457AbhICLWm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 07:22:42 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E885C061575
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 04:21:42 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id m2so3300053wmm.0
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 04:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d5Vm8czTL3+cyI2rjmlcRETsvgdq2hCBoaTdt0tcxRk=;
        b=Ltqb+2DW00gH5hFRPHIiqQanWa6ocu1K9klT2CfkuvbUEuikwLK4Fn+oyiBkF9Jf+W
         J6phSBiX/crjJn5g+kkLhQBulesHkz/+OXWp14Xp9uWsMBJSMibOZZ/9cESfHSnN30B8
         X8CghO5CfQle9eMwgK695zphiyZ5yzfa+NsQEJtvnvo/ZGE7R9GUH1DSFGbY1F+hP7OH
         LWUuIuTcHifulaPWqF9u15CTC39IgiT+iSppf1zN9gzVqzppv4SVcdmtiUtBgbv7wMxt
         CJ6CYJrPA/u55tBBdNVXE0hOP/Vhg5TYK8CW3n0MgQm5Kc3l7T5ZnyJnyhNar8U98cit
         NXjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d5Vm8czTL3+cyI2rjmlcRETsvgdq2hCBoaTdt0tcxRk=;
        b=PTyFLIWKkjXPOKUq86RVu704ZM4cp4+aOsMcrl0NmwDb8YKgFFYXj8xmUsaqtTpm7A
         J/EG5n4FC4cHtN6lfSz0+zT/iZEGHbDYlVjcw7BvCnomkix+JdVdcVdEKARj3XSqsl/5
         1VxZqW7y8NaGH+BXG1x4uw958xkdiei/UWh3g41gHTuMiOaRLlKCHT1KpCacchM5GTXD
         93iU23x6VHcl8LDqMDSiz186g+tJrd4ZoGU+XdvWW94pMVS0XC6EWf1yDmuqVFPpPSe/
         AtTwpDrCTeNlt1m9iSyAAlg+9cQ6pmST7DbWHN7WvHttiv8UPhFUM/po3E0xS3jhWnBC
         VpSQ==
X-Gm-Message-State: AOAM531sZNMG+do44R60XWBZFwrReQow+b8DaHngMGwJmLguxxlExM1o
        PJXdXhRsLmTZTx0fe3clMmaGhw==
X-Google-Smtp-Source: ABdhPJwD6vgMakshKTex1cn0m+Z670al13ANnqwiTM9bLMjwHtOYTC2n8odz9s/AQHWE+BrDAQdlYA==
X-Received: by 2002:a1c:1d84:: with SMTP id d126mr2836057wmd.160.1630668100851;
        Fri, 03 Sep 2021 04:21:40 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id f20sm3881877wmb.32.2021.09.03.04.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 04:21:40 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v5 07/21] ASoC: dt-bindings: move LPASS clocks related bindings out of q6afe
Date:   Fri,  3 Sep 2021 12:20:18 +0100
Message-Id: <20210903112032.25834-8-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
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
index 000000000000..589c3f1e2008
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
+            q6afecc@2 {
+              compatible = "qcom,q6afe-clocks";
+              reg = <2>;
+              #clock-cells = <2>;
+            };
+        };
+      };
-- 
2.21.0

