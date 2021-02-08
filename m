Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ACFC313C74
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 19:08:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234939AbhBHSG4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 13:06:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235141AbhBHSEP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 13:04:15 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B2EBC061222
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 10:02:04 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id n6so5475288wrv.8
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 10:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y4A5Uf4Os6WPGl/YWHkNN/4TU8yF2iW13SGgEG1fF60=;
        b=ZUZwlg4sIkgC0iyQpoLuu4UGVFbp+brmBdl+ALXJRciOxNkS3i9LMgZp4AacdYEhbi
         luasaK9K5MSCs2nxnZYeEwcyCnWwDHwpf2ss+cuj/uVo45hE0vJh/qJ/7CtKFMkhtmTr
         viHGwcDDa+ijJaR27Y4hag5ZOvnuQajPxaus3ikDxUoyca1NNxXBIfuU/K226r3piT27
         22gN9jfBO/FpiysPVw63N1R6T1xUTgkHDv5VJjqILOIuZDdOIDqEeYM0lthEe3I07RuE
         /SbqG/UoZpTjJy/95KTMK3fCMyRKB7mQ2hfl+koQa55ixjd+jfz0mbDx7GJQkTZj19/j
         G/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y4A5Uf4Os6WPGl/YWHkNN/4TU8yF2iW13SGgEG1fF60=;
        b=MG77dvK8VpEPJvgBLLzzj2xdaX48gZ8crD1D6+NU2VzzSLfy5ea+8b3nmU0NvaUXdS
         GM/sTj4iOBrh64PBS1cOcRSDEpafahe8q4di3Ay2KmpbUK1wVd6mUR8Vtj+AsGan/rs4
         DPvFJsxoYE1RLOIxW8bBm3CrlPmSL+o4iNzwLrU6/5o0Lza3uSmUE/wl0tyqwhbFam51
         MCFJG5qZamGWpXSgsg4YT5Tml+9enY/WBkRd1ev9kx7RbvFHPGBO5dtiADwVRVbCR/LU
         LN8sh9d+nO49e35M8uFxOljQrno2WMHz49ofzjCdBFpiJRGtCAqlbu8MSAMIZEjx77VP
         GUMw==
X-Gm-Message-State: AOAM531R1/9i5FOMc7H7ME9MdDASpLK0B1inI1en8/Xwu3ngpRJb9fFu
        BnMfERDQjvBr72ue/2RApguS3Q==
X-Google-Smtp-Source: ABdhPJxaOLEF1a4uID21LDwjtDUeZhwNYyjAGguDTOuNr42hLq+v2r1MjD3Adm5c4hDmIMNIStIcUg==
X-Received: by 2002:a05:6000:1362:: with SMTP id q2mr998608wrz.31.1612807322603;
        Mon, 08 Feb 2021 10:02:02 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id l2sm21194937wmq.17.2021.02.08.10.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Feb 2021 10:02:01 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 5/7] ASoC: qcom: dt-bindings: add bindings for lpass tx macro codec
Date:   Mon,  8 Feb 2021 18:01:07 +0000
Message-Id: <20210208180109.518-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210208180109.518-1-srinivas.kandagatla@linaro.org>
References: <20210208180109.518-1-srinivas.kandagatla@linaro.org>
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

