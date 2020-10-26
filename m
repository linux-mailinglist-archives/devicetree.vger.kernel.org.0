Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CFF7298CA6
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 13:02:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1774649AbgJZMC2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 08:02:28 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:38631 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1774640AbgJZMC2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Oct 2020 08:02:28 -0400
Received: by mail-wr1-f67.google.com with SMTP id n18so12136770wrs.5
        for <devicetree@vger.kernel.org>; Mon, 26 Oct 2020 05:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hLnWR4evaA6k5JcpTnqiMDGjsxjllMiiAGlGQ8F3HZE=;
        b=hidCzcr4Evm3Jzp1oLrTxKjeogTphLx+ryAs7Uo4mJCFKK58Vw9X5DEgjLXDvOrDDs
         aJ0iB6p1gkV2AxRqJsySiqpe+swk/B67j3JrkzgwKOoUjKrtALST/i35aV9NZopKcqOJ
         rdY1wcZyIvvYHyYmW8+cIR5ByPRFwChJC0ZKEGDXVto/qYEEE6lGarjO6bjPZyPLNnbX
         ZtYfnb0AXCFFGP6aIWNaNx82aFTQF1nyZMEKdk388rJO7T0uDByy5ufmZ092/dOrQyme
         s65NHIUAztXqA/VqzygvRqfERxv0fqqooYycNa+xVukFgSuHL3Fn0pNYCfEcYhT/yiYV
         011A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hLnWR4evaA6k5JcpTnqiMDGjsxjllMiiAGlGQ8F3HZE=;
        b=S8HlkK2u5CqZy+8urmpS4x+KU+8w8hHM3d3cqbMZgztOxUjDN1I+jXcgyDMgMynsVA
         3GrQAtFxlAzZrZMZ//tbnzZdqBplRJZ0J+V1s7jX66CCCmwBxKef18PiDNcd8fPFyu1h
         jBTITyB7DqntCavaXqgMln2lxLFTEGUghEwmRhMe9QY3o4URDu0OR9cHIabjfeH77WNg
         abXlQFlI4QCoAxpyM1MsHn3u2Q5xir3L/wwZEVoOJ6LE00LlmfD4faGomHyfnHhU2T7S
         hPjbniunkIcgJd5aRLiqJNK4QUrCWlnPHQpyM43Y8cGmAHV7blPSX6OJcgjkZ/9SBee4
         Uncg==
X-Gm-Message-State: AOAM533YrYKwoT4DhWwDlKrPMSUMw54hB3f/N90i26MuQhTsqrVJIawI
        WRbmTgTWbVIm2EpnhrGWAWbc6L7rDdWVWw==
X-Google-Smtp-Source: ABdhPJygzGkcrJqrxLEgNda89Fe4jtqLffzEECZy547P4vFqvtCMMlUhcJLH4ydJPtUVCpeWB1kzUA==
X-Received: by 2002:adf:a31c:: with SMTP id c28mr18377360wrb.351.1603713746202;
        Mon, 26 Oct 2020 05:02:26 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id i33sm23659337wri.79.2020.10.26.05.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 05:02:25 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     sboyd@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bjorn.andersson@linaro.org, mturquette@baylibre.com,
        robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RESEND PATCH v3 1/4] dt-bindings: clock: Add support for LPASS Audio Clock Controller
Date:   Mon, 26 Oct 2020 12:02:18 +0000
Message-Id: <20201026120221.18984-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20201026120221.18984-1-srinivas.kandagatla@linaro.org>
References: <20201026120221.18984-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Audio Clock controller is a block inside LPASS which controls
2 Glitch free muxes to LPASS codec Macros.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/clock/qcom,audiocc-sm8250.yaml   | 58 +++++++++++++++++++
 .../clock/qcom,sm8250-lpass-audiocc.h         | 13 +++++
 2 files changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml
 create mode 100644 include/dt-bindings/clock/qcom,sm8250-lpass-audiocc.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml b/Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml
new file mode 100644
index 000000000000..915d76206ad0
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,audiocc-sm8250.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for LPASS Audio Clock Controller on SM8250 SoCs
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell.
+  See include/dt-bindings/clock/qcom,sm8250-lpass-audiocc.h for the full list
+  of Audio Clock controller clock IDs.
+
+properties:
+  compatible:
+    const: qcom,sm8250-lpass-audiocc
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+  clocks:
+    items:
+      - description: LPASS Core voting clock
+      - description: Glitch Free Mux register clock
+
+  clock-names:
+    items:
+      - const: core
+      - const: bus
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,sm8250-lpass-audiocc.h>
+    #include <dt-bindings/sound/qcom,q6afe.h>
+    clock-controller@3300000 {
+      #clock-cells = <1>;
+      compatible = "qcom,sm8250-lpass-audiocc";
+      reg = <0x03300000 0x30000>;
+      clocks = <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+               <&q6afecc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+      clock-names = "core", "bus";
+    };
diff --git a/include/dt-bindings/clock/qcom,sm8250-lpass-audiocc.h b/include/dt-bindings/clock/qcom,sm8250-lpass-audiocc.h
new file mode 100644
index 000000000000..a1aa6cb5d840
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm8250-lpass-audiocc.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _DT_BINDINGS_CLK_LPASS_AUDIOCC_SM8250_H
+#define _DT_BINDINGS_CLK_LPASS_AUDIOCC_SM8250_H
+
+/* From AudioCC */
+#define LPASS_CDC_WSA_NPL				0
+#define LPASS_CDC_WSA_MCLK				1
+#define LPASS_CDC_RX_MCLK				2
+#define LPASS_CDC_RX_NPL				3
+#define LPASS_CDC_RX_MCLK_MCLK2				4
+
+#endif /* _DT_BINDINGS_CLK_LPASS_AUDIOCC_SM8250_H */
-- 
2.21.0

