Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D818B341845
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 10:30:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbhCSJaZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 05:30:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229648AbhCSJaG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 05:30:06 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BA18C06174A
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 02:30:06 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id k128so2674460wmk.4
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 02:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kX11wjGhwRDOmfVtKMxRD8vF9bDHJtDwcM7zsW8G2As=;
        b=f+c8+9QOEQKy9I12fbejSVakqo8j7e49GcpQgH+DJKxlc2y0BRAJBCSPIQ+3mXSRBI
         HP55lFsgS3ZlwkJ6EXiBVLh95BZ+KNah8CYgDciBs2RWFfOyx3X4JNCTdvyPjNNgaar6
         bWuSpM22qAGlkfGEdcukg1Wj8PGaPguZeGMI5pO2oyaGTPFnGBBUy9o6kF6Jwo9Abo7V
         TtTwrfmxAEPsjJ6C73oSHoorfV+zVEcADkhfBvjIdsLs1+e8djEaMCABzrK1Wc1Ww21S
         MxKVAL28Aj43aIYcxFWrmvGgok1DHzzDVMOS7s82CWrsQSkeL2AKKbk7EZaOFND8K9qo
         HpMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kX11wjGhwRDOmfVtKMxRD8vF9bDHJtDwcM7zsW8G2As=;
        b=XqU9KVgeZSSX5IyzGXffwcQzmxtsCaGC6ZF9FLJ5yky61PkbwlSyWmQndfYQZiM8tL
         C9kY2taWogMk3BZ3NxYkSbNw82P2GD7dIcOZr4DjbcYQ6sx2fczd9RHaPo+z+XglMcmV
         fRbfaFUjHBbtN2s5eG/2FEgHYGPsFUiw7M/MH+Sew71A7BrnawW05dB/KUNX3DaelHSz
         BvqhpavsNuxXbOEWUgpcjGag403qcEaCh/Jg22EsUTbmd7w/b3FbPu2haJ1wEmoFnOdf
         KPAHVPl+bay3PBgXf52QXQCyKDZqKhT3nTZTu5zODDLJjieEaFn+r5mTs0u/TSNbOVHN
         GOXw==
X-Gm-Message-State: AOAM532Ch3/EejIweAeeAnIIHW5blds2sgiz988SDX2Gy/rnN1Y1trY0
        5dA3op8rd06GCX82cpw5RnQ5Pw==
X-Google-Smtp-Source: ABdhPJxlOn/oy8XURhCu/Hw0PrkNF854lzvcbSpDwV/5sSRY6JFOjrqSCoc9fSiDkS5T+6QNk6I1uQ==
X-Received: by 2002:a05:600c:2053:: with SMTP id p19mr2799477wmg.87.1616146204843;
        Fri, 19 Mar 2021 02:30:04 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id p6sm6779058wru.2.2021.03.19.02.30.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 02:30:04 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, lgirdwood@gmail.com,
        perex@perex.cz, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 1/7] ASoC: dt-bindings: wcd938x: add bindings for wcd938x
Date:   Fri, 19 Mar 2021 09:29:13 +0000
Message-Id: <20210319092919.21218-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210319092919.21218-1-srinivas.kandagatla@linaro.org>
References: <20210319092919.21218-1-srinivas.kandagatla@linaro.org>
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
 .../bindings/sound/qcom,wcd938x.yaml          | 165 ++++++++++++++++++
 1 file changed, 165 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
new file mode 100644
index 000000000000..fe47e483d4b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
@@ -0,0 +1,165 @@
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
+    description: Indicates that Headset Ground switch type is normally closed
+    type: boolean
+
+  qcom,mbhc-button0-vthreshold-microvolt:
+    description: Voltage threshold value headset button0
+    minimum: 0
+    maximum: 500000
+
+  qcom,mbhc-button1-vthreshold-microvolt:
+    description: Voltage threshold value headset button1
+    minimum: 0
+    maximum: 500000
+
+  qcom,mbhc-button2-vthreshold-microvolt:
+    description: Voltage threshold value headset button2
+    minimum: 0
+    maximum: 500000
+
+  qcom,mbhc-button3-vthreshold-microvolt:
+    description: Voltage threshold value headset button3
+    minimum: 0
+    maximum: 500000
+
+  qcom,mbhc-button4-vthreshold-microvolt:
+    description: Voltage threshold value headset button4
+    minimum: 0
+    maximum: 500000
+
+  qcom,mbhc-button5-vthreshold-microvolt:
+    description: Voltage threshold value headset button5
+    minimum: 0
+    maximum: 500000
+
+  qcom,mbhc-button6-vthreshold-microvolt:
+    description: Voltage threshold value headset button6
+    minimum: 0
+    maximum: 500000
+
+  qcom,mbhc-button7-vthreshold-microvolt:
+    description: Voltage threshold value headset button7
+    minimum: 0
+    maximum: 500000
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
+            qcom,mbhc-button0-vthreshold-microvolt = <75000>;
+            qcom,mbhc-button1-vthreshold-microvolt = <150000>;
+            qcom,mbhc-button2-vthreshold-microvolt = <237000>;
+            qcom,mbhc-button3-vthreshold-microvolt = <500000>;
+            qcom,mbhc-button5-vthreshold-microvolt = <500000>;
+            qcom,mbhc-button6-vthreshold-microvolt = <500000>;
+            qcom,mbhc-button7-vthreshold-microvolt = <500000>;
+            qcom,port-mapping = <2 3 4 5>;
+        };
+    };
+
+...
-- 
2.21.0

