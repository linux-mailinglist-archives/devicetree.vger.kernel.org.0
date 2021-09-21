Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C344413477
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 15:39:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233125AbhIUNkx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 09:40:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233096AbhIUNkw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 09:40:52 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38B42C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:39:24 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id v5so72816512edc.2
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5vdPowBSP002gLBTD4MKdOWRYyPdeqdj8V7OSJ7NaNY=;
        b=KbQoLyJY4PIvqn4AiEJdNJWoVL2PwRjxyi5zCOYtaL5xKmy7y7P+vthjl3Lo6lUmI0
         MWy5bbyXV6fjQYnDkIZhAqgoFqu76ys4119dze8mR8W2ZzdreCQEohtMD92cLwcIweVt
         wUG9KGDlg2mdI5mZhUV1aSDl8EuCflSLOQ5ANKjdMUSZbzKn4UaQSBd7JbHdFatDGLUS
         L9n6NehkVMJJOoHuHzuofDqUHRKNQFo9lFW9uZtt8D9XxOJw1LZflZR5/14qsahcJOnW
         J4zt5gjcnE2KbW2Q0Txs3f+5E++JCpXNUQO5hdyeRal8p8w0BefYU85I9h6eVJGOdoeo
         uI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5vdPowBSP002gLBTD4MKdOWRYyPdeqdj8V7OSJ7NaNY=;
        b=JlvBIVnFkhySa7R9eMn8Vpr7aSfD+nPDBhTqoifVOj7IuMxcpjbxv2S5W+Z1ru1xop
         pT+SZxgmavGo9qBe7KJLUNxG7On/MI/aZEA/VBNhWszKCly7u4f/MFr9UE5klQUgkTwj
         MgUlUr6NOPFKfcDP3R9YMlJ1/Vh1/hbxuJh0sW++APlTev9/CXbT9/YaKa8/5Snk9WuX
         aEK8cAgWEnlLU5OB7bmc3IPt+R+7UXUnB0vjmG07rYwS+TRSkmaCFbL8SiD92Z5Jrh08
         91K9UweTVb6hME/pGoZq6rBNkaiZrtxq8croUxpse/v/i6p0eRdW/PU0QPPQcZc+hJPx
         LgCw==
X-Gm-Message-State: AOAM533BRu7kVFgnffHaFcyvjmSRXRKejI7GtyXJjEpXpyRWMxBus4fq
        NOrd1IP3F2FRIjRdVmxEwSXNUQ==
X-Google-Smtp-Source: ABdhPJx5+R2FdXxPCDX7OL4mOtD6x8zNEbAIqwRuOMfcYauBUo25tCKZ21UQ3ELCjHc7QJ0yLd4f5w==
X-Received: by 2002:aa7:c744:: with SMTP id c4mr35673209eds.0.1632231444220;
        Tue, 21 Sep 2021 06:37:24 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b3sm7915799edx.55.2021.09.21.06.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 06:37:23 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v7 01/22] soc: dt-bindings: qcom: apr: convert to yaml
Date:   Tue, 21 Sep 2021 14:36:48 +0100
Message-Id: <20210921133709.4973-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert APR bindings to yaml format so that we could add new bindings support.

All the dsp services bindings are now part of apr bindings instead
of adding them to audio bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/soc/qcom/qcom,apr.txt | 134 -----------------
 .../bindings/soc/qcom/qcom,apr.yaml           | 135 ++++++++++++++++++
 2 files changed, 135 insertions(+), 134 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
deleted file mode 100644
index 2e2f6dc351c0..000000000000
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
+++ /dev/null
@@ -1,134 +0,0 @@
-Qualcomm APR (Asynchronous Packet Router) binding
-
-This binding describes the Qualcomm APR. APR is a IPC protocol for
-communication between Application processor and QDSP. APR is mainly
-used for audio/voice services on the QDSP.
-
-- compatible:
-	Usage: required
-	Value type: <stringlist>
-	Definition: must be "qcom,apr-v<VERSION-NUMBER>", example "qcom,apr-v2"
-
-- qcom,apr-domain
-	Usage: required
-	Value type: <u32>
-	Definition: Destination processor ID.
-	Possible values are :
-			1 - APR simulator
-			2 - PC
-			3 - MODEM
-			4 - ADSP
-			5 - APPS
-			6 - MODEM2
-			7 - APPS2
-
-= APR SERVICES
-Each subnode of the APR node represents service tied to this apr. The name
-of the nodes are not important. The properties of these nodes are defined
-by the individual bindings for the specific service
-- All APR services MUST contain the following property:
-
-- reg
-	Usage: required
-	Value type: <u32>
-	Definition: APR Service ID
-	Possible values are :
-			3 - DSP Core Service
-			4 - Audio Front End Service.
-			5 - Voice Stream Manager Service.
-			6 - Voice processing manager.
-			7 - Audio Stream Manager Service.
-			8 - Audio Device Manager Service.
-			9 - Multimode voice manager.
-			10 - Core voice stream.
-			11 - Core voice processor.
-			12 - Ultrasound stream manager.
-			13 - Listen stream manager.
-
-- qcom,protection-domain
-	Usage: optional
-	Value type: <stringlist>
-	Definition: Must list the protection domain service name and path
-		    that the particular apr service has a dependency on.
-	Possible values are :
-			"avs/audio", "msm/adsp/audio_pd".
-			"kernel/elf_loader", "msm/modem/wlan_pd".
-			"tms/servreg", "msm/adsp/audio_pd".
-			"tms/servreg", "msm/modem/wlan_pd".
-			"tms/servreg", "msm/slpi/sensor_pd".
-
-= EXAMPLE
-The following example represents a QDSP based sound card on a MSM8996 device
-which uses apr as communication between Apps and QDSP.
-
-	apr {
-		compatible = "qcom,apr-v2";
-		qcom,apr-domain = <APR_DOMAIN_ADSP>;
-
-		apr-service@3 {
-			compatible = "qcom,q6core";
-			reg = <APR_SVC_ADSP_CORE>;
-		};
-
-		apr-service@4 {
-			compatible = "qcom,q6afe";
-			reg = <APR_SVC_AFE>;
-
-			dais {
-				#sound-dai-cells = <1>;
-				dai@1 {
-					reg = <HDMI_RX>;
-				};
-			};
-		};
-
-		apr-service@7 {
-			compatible = "qcom,q6asm";
-			reg = <APR_SVC_ASM>;
-			...
-		};
-
-		apr-service@8 {
-			compatible = "qcom,q6adm";
-			reg = <APR_SVC_ADM>;
-			...
-		};
-	};
-
-= EXAMPLE 2
-The following example represents a QDSP based sound card with protection domain
-dependencies specified. Here some of the apr services are dependent on services
-running on protection domain hosted on ADSP/SLPI remote processors while others
-have no such dependency.
-
-	apr {
-		compatible = "qcom,apr-v2";
-		qcom,glink-channels = "apr_audio_svc";
-		qcom,apr-domain = <APR_DOMAIN_ADSP>;
-
-		apr-service@3 {
-			compatible = "qcom,q6core";
-			reg = <APR_SVC_ADSP_CORE>;
-		};
-
-		q6afe: apr-service@4 {
-			compatible = "qcom,q6afe";
-			reg = <APR_SVC_AFE>;
-			qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
-			...
-		};
-
-		q6asm: apr-service@7 {
-			compatible = "qcom,q6asm";
-			reg = <APR_SVC_ASM>;
-			qcom,protection-domain = "tms/servreg", "msm/slpi/sensor_pd";
-			...
-		};
-
-		q6adm: apr-service@8 {
-			compatible = "qcom,q6adm";
-			reg = <APR_SVC_ADM>;
-			qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
-			...
-		};
-	};
diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
new file mode 100644
index 000000000000..a52b955b8b39
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
@@ -0,0 +1,135 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/soc/qcom/qcom,apr.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm APR (Asynchronous Packet Router) binding
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  This binding describes the Qualcomm APR, APR is a IPC protocol for
+  communication between Application processor and QDSP. APR is mainly
+  used for audio/voice services on the QDSP.
+
+properties:
+  compatible:
+    enum:
+      - qcom,apr-v2
+
+  qcom,apr-domain:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [1, 2, 3, 4, 5, 6, 7]
+    description:
+      Selects the processor domain for apr
+        1 = APR simulator
+        2 = PC Domain
+        3 = Modem Domain
+        4 = ADSP Domain
+        5 = Application processor Domain
+        6 = Modem2 Domain
+        7 = Application Processor2 Domain
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+#APR Services
+patternProperties:
+  "^service@[3-9a-d]$":
+    type: object
+    description:
+      APR node's client devices use subnodes for desired static port services.
+
+    properties:
+      compatible:
+        enum:
+          - qcom,q6core
+          - qcom,q6asm
+          - qcom,q6afe
+          - qcom,q6adm
+
+      reg:
+        minimum: 3
+        maximum: 13
+        description:
+          APR Service ID
+            3 = DSP Core Service
+            4 = Audio  Front End Service.
+            5 = Voice Stream Manager Service.
+            6 = Voice processing manager.
+            7 = Audio Stream Manager Service.
+            8 = Audio Device Manager Service.
+            9 = Multimode voice manager.
+            10 = Core voice stream.
+            11 = Core voice processor.
+            12 = Ultrasound stream manager.
+            13 = Listen stream manager.
+
+      qcom,protection-domain:
+        $ref: /schemas/types.yaml#/definitions/string-array
+        description: protection domain service name and path for apr service
+          possible values are
+          "avs/audio", "msm/adsp/audio_pd".
+          "kernel/elf_loader", "msm/modem/wlan_pd".
+          "tms/servreg", "msm/adsp/audio_pd".
+          "tms/servreg", "msm/modem/wlan_pd".
+          "tms/servreg", "msm/slpi/sensor_pd".
+
+      '#address-cells':
+        const: 1
+
+      '#size-cells':
+        const: 0
+
+    patternProperties:
+      "^.*@[0-9a-f]+$":
+        type: object
+        description:
+          Service based devices like clock controllers or digital audio interfaces.
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - qcom,apr-domain
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/soc/qcom,apr.h>
+    apr {
+        compatible = "qcom,apr-v2";
+        qcom,apr-domain = <APR_DOMAIN_ADSP>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        q6core: service@3 {
+          compatible = "qcom,q6core";
+          reg = <APR_SVC_ADSP_CORE>;
+          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+        };
+
+        q6afe: service@4 {
+          compatible = "qcom,q6afe";
+          reg = <APR_SVC_AFE>;
+          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+        };
+
+        q6asm: service@7 {
+          compatible = "qcom,q6asm";
+          reg = <APR_SVC_ASM>;
+          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+        };
+
+        q6adm: service@8 {
+          compatible = "qcom,q6adm";
+          reg = <APR_SVC_ADM>;
+          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+        };
+    };
-- 
2.21.0

