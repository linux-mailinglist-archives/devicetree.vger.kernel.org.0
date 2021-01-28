Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5167F3077E7
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 15:23:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231672AbhA1OWw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 09:22:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231529AbhA1OV3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 09:21:29 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A511C061794
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 06:20:02 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id g10so5584911wrx.1
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 06:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y4A5Uf4Os6WPGl/YWHkNN/4TU8yF2iW13SGgEG1fF60=;
        b=h9QKz/rb7BLkCNbgzJD+55FjmmybjmFgtq+sPIlpDNLzLjN/vdTTlclqj/Ss4YY2Pc
         5x0RmRkhd8insWMIKw3t3H5aGbuSoGap0l4Mq7RlmxooiRGd5gwr7jY2stypHqwk7d32
         fTL2mm/OJgJcEYRG5iuaOXrJf8jitJEaFCGCj7I6I3lutoHAyJi1oIZorbdrgkMYKax6
         H8JfSkM0ScIXRRi21KlPS3BXk0qPZ3kPeAot/2ALxnCRWxhwVp+QEBNdlFMYrozoyhn+
         gR5aFptgw8oDhPeGEFIbpzWxAly1gYLHatDDKOZbQax/4iFksZBt6rl08sgu5v23uMjU
         H0hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y4A5Uf4Os6WPGl/YWHkNN/4TU8yF2iW13SGgEG1fF60=;
        b=MfYeu64+aVngm8Bflm9bIWw70bBYxBTxItyyfWFkJe8eE+wJtx39Yj7eNTUvt0Pj/o
         11A04n7DUYdleAyOoCVzVEWyuNqfSFNRjIBuxTrZJyX6qhaOKxXbFRhh/t7xVo9q8tpe
         YwG8cLzSLVx8CeiD/MOntE74O5mkcB+AoeUj78ImRvsfYT5VSVsQLSoQkIt1uoN7VCVL
         WmyxXXAnvDRlQ12c1xpF61UOoqcLudx02XwEF2LPNB4E/CJR1fJGxei3Ru6GUK5hF+i5
         mY25i2SQkLq+cILvrQhymXbiKyiFTvkt+UqxSvvVlPhhse8mcfCrO6VLg6QYIHEXJtyS
         YAyw==
X-Gm-Message-State: AOAM532cphvi1zT3F9reKVsi75KpwTHa0TqfwMXdo5MN1cF5dX9U+QGi
        bSAYjNjwO2QIJrepn9ob+uFlwg==
X-Google-Smtp-Source: ABdhPJyEoIwHPMCkB2Os9C2lPvlLoxmuo8itnm8vL+LmbwjXXlO8+2bcjXyKzEL8XSamUZmv+BYFYg==
X-Received: by 2002:adf:f58b:: with SMTP id f11mr16624976wro.3.1611843601338;
        Thu, 28 Jan 2021 06:20:01 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id d9sm7257096wrq.74.2021.01.28.06.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 06:20:00 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 5/7] ASoC: qcom: dt-bindings: add bindings for lpass tx macro codec
Date:   Thu, 28 Jan 2021 14:19:27 +0000
Message-Id: <20210128141929.26573-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210128141929.26573-1-srinivas.kandagatla@linaro.org>
References: <20210128141929.26573-1-srinivas.kandagatla@linaro.org>
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

