Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3E5B33D241
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 11:59:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236911AbhCPK7P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 06:59:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236969AbhCPK6j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 06:58:39 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0407C061762
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 03:58:38 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id m20-20020a7bcb940000b029010cab7e5a9fso1157101wmi.3
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 03:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+sltUJ/pAd1guAQgZ+UXiq+728PKHR6WItd2Z4NbS+4=;
        b=UGw32nzBcODaPuUg7y5aJN3FBwb3hNt1PwkF5jVc8W4w0yiGr7mSZBEUqkfC0W0iEp
         2jkoQn+zH0DY3A229qVGmVrGOQCQwg+/QfcqKbYHoke73TaGHGHHAFNqKPzkVBncpdpO
         0WBAHHXvXGK7rdWPQen3gKplRb57homN0LQo0xe2tG82lLM1HT9YLf7SnwB6u0fcOJQD
         zsB150AGa6W6jgA9ADDvEw5+dhdBeFxfyFNzwlkqdLD1gbByV/k76Kivi6om5zG17ft6
         7CuevOmAAt4w/5+n1mAt6Mly3QKKcBuHs3nQx71sDuCunNHPQ4OnMhAFxrU8bTq/on4x
         8qvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+sltUJ/pAd1guAQgZ+UXiq+728PKHR6WItd2Z4NbS+4=;
        b=KUFo63Y8fzjcABdBUMFmp/6gPuX/TUGULh/rA/6d5mD9RTrzeGQ01RvOQ8ngPQvnbt
         34nm8RqimR++BUyacNEavF51nf3uNeW9pRSMOR48pVO89Qu1D+lw//4kohC6kCIV9FMW
         /EgO17aUHg7Ww+1F7zRfxIOoZKpaUai3VK9sr4f9e7dvUvyznuO+L6Zyoe5oZnYMEWNr
         RsFrhjeSitA1plIvWR5bcvwvkmVYPTtnc9aFjgyp5Dnde0DIDbd9mXhG7JPq91k0/WH1
         UYcdb4Yqbn1YVkNwPI12bNwTufRYDI1cckDQ79jiaCm3IBCa9Hmbr/E10ymfrKeKKcrX
         RVog==
X-Gm-Message-State: AOAM5325qPyDzQ4D+vUiNtr3G4azJQRsjfJEi1o1rJ84YS+iEtaRO+Q1
        syXVcjXitiPlV+lvTxwLSwM/FjLKePWhxw==
X-Google-Smtp-Source: ABdhPJxIp5XJQOPw2zm1i9K8rroLTuc5H07/VFk3+U1PEWXxQzVYYemM7yy+CSgpXQcDsVNqLSEdtw==
X-Received: by 2002:a05:600c:4fd0:: with SMTP id o16mr4140062wmq.123.1615892317564;
        Tue, 16 Mar 2021 03:58:37 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id t8sm21465956wrr.10.2021.03.16.03.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Mar 2021 03:58:37 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, lgirdwood@gmail.com,
        perex@perex.cz, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 1/7] ASoC: dt-bindings: wcd938x: add bindings for wcd938x
Date:   Tue, 16 Mar 2021 10:58:22 +0000
Message-Id: <20210316105828.16436-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210316105828.16436-1-srinivas.kandagatla@linaro.org>
References: <20210316105828.16436-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm WCD9380/WCD9385 Codec is a standalone Hi-Fi audio codec IC
connected over SoundWire. This device has two SoundWire device RX and
TX respectively, supporting 4 x ADCs, ClassH, Ear, Aux PA, 2xHPH,
7 x TX diff inputs, 8 DMICs, MBHC.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,wcd938x.yaml          | 127 ++++++++++++++++++
 1 file changed, 127 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
new file mode 100644
index 000000000000..bac93e2344c7
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
@@ -0,0 +1,127 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,wcd938x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bindings for Qualcomm WCD9380/WCD9385 Audio Codec
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  Qualcomm WCD9380/WCD9385 Codec is a standalone Hi-Fi audio codec IC.
+  It has RX and TX Soundwire slave devices.
+
+properties:
+  compatible:
+    const: sdw20217010d00
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    description: GPIO spec for reset line to use
+    maxItems: 1
+
+  direction:
+    oneOf:
+      - const: rx
+      - const: tx
+
+  vdd-buck-supply:
+    description: A reference to the 1.8V buck supply
+
+  vdd-rxtx-supply:
+    description: A reference to the 1.8V rx supply
+
+  vdd-io-supply:
+    description: A reference to the 1.8V I/O supply
+
+  qcom,micbias1-microvolt:
+    description: micbias1 voltage
+    minimum: 1800000
+    maximum: 2850000
+
+  qcom,micbias2-microvolt:
+    description: micbias2 voltage
+    minimum: 1800000
+    maximum: 2850000
+
+  qcom,micbias3-microvolt:
+    description: micbias3 voltage
+    minimum: 1800000
+    maximum: 2850000
+
+  qcom,micbias4-microvolt:
+    description: micbias4 voltage
+    minimum: 1800000
+    maximum: 2850000
+
+  qcom,mbhc-hphl-switch:
+    description: Indicates that HPHL switch type is normally closed
+    type: boolean
+
+  qcom,mbhc-ground-switch:
+    description: Indicates that Headset Gound switch type is normally closed
+    type: boolean
+
+  qcom,mbhc-vthreshold-microvolt:
+    description: |
+      Voltage threshold values for all the headset buttons
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 8
+    maxItems: 8
+
+  qcom,port-mapping:
+    description: |
+      Specifies static port mapping between slave and master ports.
+      In the order of slave port index.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 4
+    maxItems: 5
+
+  '#sound-dai-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - qcom,micbias1-microvolt
+  - qcom,micbias2-microvolt
+  - qcom,micbias3-microvolt
+  - qcom,micbias4-microvolt
+  - qcom,port-mapping
+  - qcom,mbhc-hphl-switch
+  - qcom,mbhc-ground-switch
+  - qcom,mbhc-vthreshold-microvolt
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    soundwire@3230000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x03230000 0x2000>;
+
+        codec@0,3 {
+            compatible = "sdw20217010d00";
+            reg  = <0 3>;
+            reset-gpios = <&tlmm 32 0>;
+            direction = "tx";
+            #sound-dai-cells = <1>;
+            qcom,micbias1-microvolt = <1800000>;
+            qcom,micbias2-microvolt = <1800000>;
+            qcom,micbias3-microvolt = <1800000>;
+            qcom,micbias4-microvolt = <1800000>;
+            qcom,mbhc-hphl-switch;
+            qcom,mbhc-ground-switch;
+            qcom,mbhc-vthreshold-microvolt = <75000 150000 237000 500000 500000 500000 500000 500000>;
+            qcom,port-mapping = <2 3 4 5>;
+        };
+    };
+
+...
-- 
2.21.0

