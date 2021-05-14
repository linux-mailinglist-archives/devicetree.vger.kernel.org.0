Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCD3D380748
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 12:34:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232859AbhENKfs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 06:35:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232512AbhENKfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 06:35:46 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0390FC06175F
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 03:34:34 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id b11-20020a7bc24b0000b0290148da0694ffso1199767wmj.2
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 03:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wD5Koc4+Y8WGCkqYQ0J6ZM9ix1nXZLNkx7wv0f/ctNc=;
        b=p7rfnDdFplz7oQZhmZvU5pGbbefgRQBfPVgMgKRSsnp1eDEr2TQOerze2J4ouFU1PX
         NRTaowGsZqal4+mdn1QBNcAtDzPwcTnqJ1PaSQZ/2wxHZZUTEJQ4gTMitFDYaKNGjozV
         sNSjDCempf3Oxchd7Ge6rNu5tPR3M5ejVQ1SdqSpRhcdwtKmAdTt0+vJWeHh4QOic7GE
         8GyBoWcB/DWQlslLoctND0ecn9I9Y6NJMVqElsx2Dh+NICea01d+w5wS6oou+HUbUH4z
         NgBFQ8iZMxiNq0TKDb1rCrq8n8ocEB4E0RCoH4dIzm2UmBLkOGYC40E8srGUcSuCM+nh
         BBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wD5Koc4+Y8WGCkqYQ0J6ZM9ix1nXZLNkx7wv0f/ctNc=;
        b=doE661ShZ+jKdTQAk9j69Kh0+i6DhvNJud44VgECfiOkp5mB864BhH4Z/UvHlKxFH1
         9s7TPIOhR79/ZWyWyZfcZlwipGLcuw2B39ihH8EoLRHV405D5Bw3WRKA6MFFdeB/j8Nj
         9RGDo9YrfU++HvkztS2DtOsGSlQx5FGIV4g3uzL9hlROBm6inJz3RURfn8qkucybMSxZ
         5BXcXTUoQb5q7IdJ4BUvdN7WqiDF3Q39R8/DnqMejQKbAv0yDSpxoxbrRTHMPH8Llv6E
         Q0RFjk6kFhbQ4vN+T3ZR4DJZHcY5B9w64PQQD/+mdcF+Q3xKdttZ7xnRQt1iCoiUAYL2
         R+LA==
X-Gm-Message-State: AOAM530jMVR6iD7Y2vDj9odYTLBgRE90eUUSChoQD+OcA9XxuSgkqh8d
        wpj4lJ2+WQ/KNncovwVerpY8iQ==
X-Google-Smtp-Source: ABdhPJydrg8yHoYnTefCkO3f9aDWw6ujj2A14QG5kCaRd5qk8mo49wNEOeTFpEGq8EFjJ/pqzC/0rg==
X-Received: by 2002:a1c:2685:: with SMTP id m127mr8850674wmm.135.1620988473696;
        Fri, 14 May 2021 03:34:33 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id k16sm5015498wmi.44.2021.05.14.03.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 03:34:33 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v5 4/9] ASoC: dt-bindings: wcd938x-sdw: add bindings for wcd938x-sdw
Date:   Fri, 14 May 2021 11:34:00 +0100
Message-Id: <20210514103405.29927-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210514103405.29927-1-srinivas.kandagatla@linaro.org>
References: <20210514103405.29927-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm WCD9380/WCD9385 Codec is a standalone Hi-Fi audio codec IC
connected over SoundWire. This device has two SoundWire devices RX and
TX respectively. This bindings is for those slave devices on WCD9380/WCD9385.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,wcd938x-sdw.yaml      | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml
new file mode 100644
index 000000000000..49a267b306f6
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,wcd938x-sdw.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bindings for Qualcomm SoundWire Slave devices on WCD9380/WCD9385
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  Qualcomm WCD9380/WCD9385 Codec is a standalone Hi-Fi audio codec IC.
+  It has RX and TX Soundwire slave devices. This bindings is for the
+  slave devices.
+
+properties:
+  compatible:
+    const: sdw20217010d00
+
+  reg:
+    maxItems: 1
+
+  qcom,tx-port-mapping:
+    description: |
+      Specifies static port mapping between slave and master tx ports.
+      In the order of slave port index.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 4
+    maxItems: 4
+
+  qcom,rx-port-mapping:
+    description: |
+      Specifies static port mapping between slave and master rx ports.
+      In the order of slave port index.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 5
+    maxItems: 5
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    soundwire@3210000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x03210000 0x2000>;
+        wcd938x_rx: codec@0,4 {
+            compatible = "sdw20217010d00";
+            reg  = <0 4>;
+            qcom,rx-port-mapping = <1 2 3 4 5>;
+        };
+    };
+
+    soundwire@3230000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x03230000 0x2000>;
+        wcd938x_tx: codec@0,3 {
+            compatible = "sdw20217010d00";
+            reg  = <0 3>;
+            qcom,tx-port-mapping = <2 3 4 5>;
+        };
+    };
+
+...
-- 
2.21.0

