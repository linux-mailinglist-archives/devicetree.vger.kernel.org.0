Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A8013134EF
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 15:21:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232837AbhBHOUQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 09:20:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232935AbhBHOSH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 09:18:07 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23FB1C06178B
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 06:17:27 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id l12so17362722wry.2
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 06:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5s1sQMKmA5X4b0lhaDVUuKBYgKx/IDMprYcIvq92de4=;
        b=g///r3gPY7GNdhBKs6DE1SEDvLXVa81vGXGmKGu9HUrSVJT3Wh9Sr1+MfJcub7ZaQe
         O0f8grh9i3M7W3NVMAf3XhhViExaiTZVHLcEqYBXIyJNY+irSybgrffJEfOu9jknin7e
         5bBxKPrONG5NtHoEvVXUJRdhXPE/uHyHXsjCKWEM7gA1505WIT7SeeQ2I8GmDEjkA0W2
         FYXMxMm+aGcAD6LZkHArfA8VMx7rjvWBc8R4LB3W4Uygudq4coECVw7xt9qb5U2dr92/
         r6i0nGcUuuWbN2PBGOz5QAj978Ps1QKVm83hkklBVcFRCjiFXbsSPuRfgnjqIXEYttJf
         9saQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5s1sQMKmA5X4b0lhaDVUuKBYgKx/IDMprYcIvq92de4=;
        b=Z42szzg140QBfKr8P4y5qtIOH/HWNQuDMDHD7n0e2zXHbrwEM6vqeqqse3aozbt6kz
         2ax+2TaKivm/Otniu35WLbDzR5T7E7IRGNkx/wjUuODAUMsVRnufWXohvSka+71kz8Us
         hlT5Fh6PsiIxoXZooxx1XZULQvyJfMoQjPim7MVjZOrw7PhV5Cvs0dWiVtE3xo2pBkA9
         JX3XpITYC4TLODjVkpjLEI4PZEJDKyqzF0D1zQroZ0LT4xWGCfKEhS3wzmLVCvvjnJgl
         uv9YnatxsBZ6a7tcuTrc6OXQi5rfCDAWZcOZJhNO/NzpxBEUc9MGZjyFVHd59tctKfAI
         1D/g==
X-Gm-Message-State: AOAM5315FsIwPUudAK0+AJq0Y3Yetsh1VWi1rxwqJp8vkODcZ96JChRB
        7rJFykcrmAytB8m6PmuiGVMHHA==
X-Google-Smtp-Source: ABdhPJwMkCxKYq4tdA44lB6usqGaRMv3DQ6GHp9OnWCsn2MwYabUhWMcc2ubUIOlGVCI3fBF6tK1cg==
X-Received: by 2002:adf:e642:: with SMTP id b2mr20289781wrn.221.1612793845728;
        Mon, 08 Feb 2021 06:17:25 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id t18sm27949809wrr.56.2021.02.08.06.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Feb 2021 06:17:25 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 1/7] ASoC: qcom: dt-bindings: add bindings for lpass rx macro codec
Date:   Mon,  8 Feb 2021 14:17:13 +0000
Message-Id: <20210208141719.23305-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210208141719.23305-1-srinivas.kandagatla@linaro.org>
References: <20210208141719.23305-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This binding is for LPASS has internal codec RX macro which is
for connecting with SoundWire RX codecs like WCD938x.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,lpass-rx-macro.yaml   | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
new file mode 100644
index 000000000000..443d556caa69
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,lpass-rx-macro.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LPASS(Low Power Audio Subsystem) RX Macro audio codec DT bindings
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+properties:
+  compatible:
+    const: qcom,sm8250-lpass-rx-macro
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
+    codec@3200000 {
+      compatible = "qcom,sm8250-lpass-rx-macro";
+      reg = <0x3200000 0x1000>;
+      #sound-dai-cells = <1>;
+      #clock-cells = <0>;
+      clocks = <&audiocc 0>,
+               <&audiocc 1>,
+               <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+               <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+               <&vamacro>;
+      clock-names = "mclk", "npl", "macro", "dcodec", "fsgen";
+      clock-output-names = "mclk";
+    };
-- 
2.21.0

