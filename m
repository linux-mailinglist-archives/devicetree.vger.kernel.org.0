Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E3EF29EA14
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 12:10:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727499AbgJ2LIu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 07:08:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727482AbgJ2LIr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 07:08:47 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66319C0613CF
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 04:08:47 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id w1so2297209wrm.4
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 04:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Pb7xypbNoJbZw5gP7ennlwPkwkNiPmMk0DOyYJok4RQ=;
        b=HM3q6a3yJCGdXY1DBlswPFUkHxkfvm4jfKDKHbt3jmHArOSddOjmbKEoY3kMN6T56y
         FZVVmpnQhkKM6VXHY3obPjGwtTuBJ1HSjQ28T4MH3ggIbVCOnK9j6YdqSkpbMUO5TBkN
         WDPoyTzo7Tm0Dxg9xHLy2y+1S3bg7VIDL87ZwlwTsf8E9tmNGowwP5+g6Ea2SkWqOrKY
         Qrdy0Hsi5Q+O1DbFpNCEIKjkgGvm+qMPyJXm1AXm97VFTY/LC67955IM20JkiapwOqb5
         VfrRpxv386HDPvUeMaB2G05U8Q7n/L/b/magbSXBQ6gTHTHf5jM+u0VVwf/GBrIkO52v
         5mtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Pb7xypbNoJbZw5gP7ennlwPkwkNiPmMk0DOyYJok4RQ=;
        b=LfWRC4wT7xvcrBTJJpgqQQFnkkbe4pdKBGR646CsjdfDIAlQh80BNgZ9W/oq6VEp46
         /nudYEtOkjUBb6JbNZL4X5YfYzPSS2ykquL5sHo5nzNEkq7pgkbtEODR9p2gXTTeI+sJ
         SVHHDPW5K0F8KDrZE+MDY5N7BKlcCv6YYVl63w4zVwZ3lDS0G4dWd3LmCUheE8L2kLqR
         zVqH1Bqs78uCvMsL7NV3JMuOo4fhiicap0HTuw3DxfPbWTGGxHQyLXlBK4Wd6FQkrAvs
         u3DDycJMHqC/rJaU+kQmRiqyhKLqC4T71GGpu7Wh5pUOZjscoQgCtFZ08X2BdCh9O0as
         TsjA==
X-Gm-Message-State: AOAM531jyr2NI+YCxzhcCeH8GzM5Ao8T/VnkPUxuNcCG/z2gYArbP6IM
        9v5Kup0QAJs1ab82/+xIBm/M5g==
X-Google-Smtp-Source: ABdhPJwsY44TbhELz8IScFVHaVqQ/MSSf0v7ECfkzqf94KE5Uk+twFQZdBNS6b6K4AR1kVCEzZqLaQ==
X-Received: by 2002:adf:cc82:: with SMTP id p2mr4949833wrj.177.1603969726157;
        Thu, 29 Oct 2020 04:08:46 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n4sm3710830wmi.32.2020.10.29.04.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 04:08:45 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 4/6] ASoC: qcom: dt-bindings: add bindings for lpass va macro codec
Date:   Thu, 29 Oct 2020 11:08:27 +0000
Message-Id: <20201029110829.16425-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20201029110829.16425-1-srinivas.kandagatla@linaro.org>
References: <20201029110829.16425-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This binding is for LPASS has internal codec VA macro which is
for connecting with DMICs.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,lpass-va-macro.yaml   | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
new file mode 100644
index 000000000000..679b49cbe30f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,lpass-va-macro.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LPASS(Low Power Audio Subsystem) VA Macro audio codec DT bindings
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+properties:
+  compatible:
+    const: qcom,sm8250-lpass-va-macro
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
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: mclk
+      - const: core
+      - const: dcodec
+
+  clock-output-names:
+    items:
+      - const: fsgen
+
+  qcom,dmic-sample-rate:
+    description: dmic sample rate
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  vdd-micb-supply:
+    description: phandle to voltage regulator of MIC Bias
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
+    codec@3370000 {
+      compatible = "qcom,sm8250-lpass-va-macro";
+      reg = <0x3370000 0x1000>;
+      #sound-dai-cells = <1>;
+      #clock-cells = <0>;
+      clocks = <&aoncc 0>,
+               <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+               <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+      clock-names = "mclk", "core", "dcodec";
+      clock-output-names = "fsgen";
+      qcom,dmic-sample-rate = <600000>;
+      vdd-micb-supply = <&vreg_s4a_1p8>;
+    };
-- 
2.21.0

