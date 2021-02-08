Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35382313515
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 15:25:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232626AbhBHOYW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 09:24:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233023AbhBHOUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 09:20:50 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8033C0617AA
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 06:17:36 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id 7so17381766wrz.0
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 06:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y4A5Uf4Os6WPGl/YWHkNN/4TU8yF2iW13SGgEG1fF60=;
        b=jV8Z1ig+Su7OIrGcQaFNH8CIZy9+023ye/zVak11ID87bCZCHtCeozlxFNBqIEIU3K
         zNUb8jFukFI/sqSK7cOBTRhCrtg0vZ0lbi9cGnu8LmiVIk3w+zmsbom+7pEzQIDCrfIo
         COWkndOu8X8uD77Rv+Jhhcd2fgqzWzxbQwXipJe7VMaDrzCIc8W/AIIxgJim9aflfvtf
         AgWG8fcIa94jiNpHL7KaiutAoO/PpSeyO7CXhB2eN/fM+dQZe0krntFdL4QgylIT6Ep7
         O7IqeN9l4MObVhnyhDRK1s6tXSJAm7zScAtUNIZ39zd7qpYU5ESeqWTWUpKDPc66XaCW
         b5jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y4A5Uf4Os6WPGl/YWHkNN/4TU8yF2iW13SGgEG1fF60=;
        b=gZQYzYsk92D0/wLqVFlMubDnmTd6XkvFCohwuRpLtXadIGy1KX2QkNbtd/U/T6XSz6
         FLX2hGSaK8OJe1tW9fDDgwvGRhOALzA2WCqrBXO7LC12iJeQpgGIb12AN/8HdrXIkZg4
         p900OqcU1EG6dPEu57KhdEPxDE02h44qptvKV78TYbnHcMlccD2DKEuEC5T4szDow/5V
         RcuaIhoicsebXUMOt3Db3eyzdbJI4a825yzdJ0FIxKJEWvTy7BPYLOX6GMK/DN78MwtX
         gjdHKlN8lu4qvLTJ1qjvWaX7M28YKPRFPQxEyGLftqwFq55LS06TWRQs/PIXubMnh7+H
         62EQ==
X-Gm-Message-State: AOAM532xQOpmShjBui5UimjPuPqg4PCBb2oaBHOassmUC/Pu+qCGUB9F
        Gy1grCjZUj2yqmaL9ZpwZJ3+vQ==
X-Google-Smtp-Source: ABdhPJxGGgwhHrnK38ud1EOpjc6OdajzbB2uaUeOkwnXljXr6KEbJBJxZzRPw7qtb3ok3crsEsOnYA==
X-Received: by 2002:adf:b749:: with SMTP id n9mr19880629wre.267.1612793853741;
        Mon, 08 Feb 2021 06:17:33 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id t18sm27949809wrr.56.2021.02.08.06.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Feb 2021 06:17:32 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 5/7] ASoC: qcom: dt-bindings: add bindings for lpass tx macro codec
Date:   Mon,  8 Feb 2021 14:17:17 +0000
Message-Id: <20210208141719.23305-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210208141719.23305-1-srinivas.kandagatla@linaro.org>
References: <20210208141719.23305-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This binding is for LPASS has internal codec TX macro which is
for connecting with Soundwire TX codecs like WCD938x.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,lpass-tx-macro.yaml   | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
new file mode 100644
index 000000000000..6b5ca02ccce4
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,lpass-tx-macro.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LPASS(Low Power Audio Subsystem) TX Macro audio codec DT bindings
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+properties:
+  compatible:
+    const: qcom,sm8250-lpass-tx-macro
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 1
+
+  '#clock-cells':
+    const: 0
+
+  clocks:
+    maxItems: 5
+
+  clock-names:
+    items:
+      - const: mclk
+      - const: npl
+      - const: macro
+      - const: dcodec
+      - const: fsgen
+
+  clock-output-names:
+    items:
+      - const: mclk
+
+  qcom,dmic-sample-rate:
+    description: dmic sample rate
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/sound/qcom,q6afe.h>
+    codec@3220000 {
+      compatible = "qcom,sm8250-lpass-tx-macro";
+      reg = <0x3220000 0x1000>;
+      #sound-dai-cells = <1>;
+      #clock-cells = <0>;
+      clocks = <&aoncc 0>,
+               <&aoncc 1>,
+               <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+               <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+               <&vamacro>;
+      clock-names = "mclk", "npl", "macro", "dcodec", "fsgen";
+      clock-output-names = "mclk";
+      qcom,dmic-sample-rate = <600000>;
+    };
-- 
2.21.0

