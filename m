Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E0C66D4421
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 17:27:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726698AbfJKP1L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 11:27:11 -0400
Received: from mail-wr1-f54.google.com ([209.85.221.54]:41137 "EHLO
        mail-wr1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726521AbfJKP1L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 11:27:11 -0400
Received: by mail-wr1-f54.google.com with SMTP id q9so12394932wrm.8
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 08:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8RzjK5Ht69tgaUqi7M8XuzUgX+3LalFIhFT3YvqgXYI=;
        b=smkDpgyPUSRs3qWiU19SbRGZJoJ00Tl2Mk2aMAhPuQjVoakddit71i7zOGifuz6s9b
         08c/rchHohR8rKZwiFQi0ApGao+RWbpHUPcywc6LBymwM3FIBiogo53kGp57SpJKD7ak
         nXIuPM7llcdu4AI2wIr0DQ1tpwKJ18Fzi3lvCBk20SNjl44Hsj8mIRGOJrk+W9/TSQxO
         HlybBTHjE7/4NhsHCM/q8oSszBr/nLAdN7k+x6KX4PukJk37OAsDArI3YaCirXsw+UL4
         vxHLT7EFUGSk/+KY4B17wxSPufn/wMWlVSYFZQMsOfK4pPOn91rPIbwU1My+jhxuCib4
         fP7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8RzjK5Ht69tgaUqi7M8XuzUgX+3LalFIhFT3YvqgXYI=;
        b=c1nqjrkibRj/8LLOkFDW0S1w9eHM5R5YqHpaLR2fhVQUif4lQBDbJi/46WlC1ONSlr
         MBImFDL4u4DJt/9ark2ifvskocrSuRTZZYVIXqP9f+SJBuITIHyYpAhl+lMmCYjZ7Vox
         Uo1vWS7N/yehlHVm49ROR1NcRZW+X5OwpdgOS8cSo7FsGssTKA/wqnCwdtawpdM9nzOK
         oq1Yn0+yhEpXcni3rqwaLRbgfsWOXsxSjfLyId6iGbdD2Xj9uDxTQUgxH7YnD4bVKgVR
         dirH3eItkXwLxzZ4E04ODGvvuu0W/+4daxWM01qikX8JTcQyJpmDS3JMx9Xpzaw9rPGo
         32pw==
X-Gm-Message-State: APjAAAVfre4TEtq3Xx4tWFbN3yllJwGyUJxtAf45AOS3dQzz+DOi5Fz3
        tJC8fkfn39u5ndB7glGAw+MwXF5ef4E=
X-Google-Smtp-Source: APXvYqyagr6ebQfEXwwaoxQrIjpTGZYVrfZOh1+amPFcWgoLg3hETqbk93jkUGgYSZzL4N/dtiJfHg==
X-Received: by 2002:adf:f306:: with SMTP id i6mr14115948wro.196.1570807628953;
        Fri, 11 Oct 2019 08:27:08 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id a204sm16439979wmh.21.2019.10.11.08.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 08:27:08 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        spapothi@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        vkoul@kernel.org, lgirdwood@gmail.com, bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 1/3] dt-bindings: ASoC: Add WSA881x bindings
Date:   Fri, 11 Oct 2019 16:24:44 +0100
Message-Id: <20191011152446.5925-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191011152446.5925-1-srinivas.kandagatla@linaro.org>
References: <20191011152446.5925-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings for WSA8810/WSA8815 Class-D Smart Speaker
Amplifier. This Amplifier also has a simple thermal sensor for
over temperature and speaker protection.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/sound/qcom,wsa881x.yaml          | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
new file mode 100644
index 000000000000..faa90966a33a
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,wsa881x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bindings for Qualcomm WSA8810/WSA8815 Class-D Smart Speaker Amplifier
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  WSA8810 is a class-D smart speaker amplifier and WSA8815
+  is a high-output power class-D smart speaker amplifier.
+  Their primary operating mode uses a SoundWire digital audio
+  interface. This binding is for SoundWire interface.
+
+properties:
+  compatible:
+    const: sdw10217201000
+
+  reg:
+    maxItems: 1
+
+  powerdown-gpios:
+    description: GPIO spec for Powerdown/Shutdown line to use
+    maxItems: 1
+
+  '#thermal-sensor-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - powerdown-gpios
+  - "#thermal-sensor-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    soundwire@c2d0000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x0c2d0000 0x2000>;
+
+        speaker@0,1 {
+            compatible = "sdw10217201000";
+            reg = <0 1>;
+            powerdown-gpios = <&wcdpinctrl 2 0>;
+            #thermal-sensor-cells = <0>;
+        };
+
+        speaker@0,2 {
+            compatible = "sdw10217201000";
+            reg = <0 2>;
+            powerdown-gpios = <&wcdpinctrl 2 0>;
+            #thermal-sensor-cells = <0>;
+        };
+    };
+
+...
-- 
2.21.0

