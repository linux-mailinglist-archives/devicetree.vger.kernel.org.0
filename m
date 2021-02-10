Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AB0731626C
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 10:37:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229672AbhBJJhA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 04:37:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229787AbhBJJep (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 04:34:45 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2304BC0617A9
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 01:32:30 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id g10so1690123wrx.1
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 01:32:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y4A5Uf4Os6WPGl/YWHkNN/4TU8yF2iW13SGgEG1fF60=;
        b=adzTDDLthXXtZaBFlQRqslziLqKvZsWzA05hRdVadOeTo6a4itsepNDCfhBKcm4H/d
         /DHljJo5F31vdH5ia0X5PLamOixs+5hhp/6a6397c75pPKBj6S4BmzlntJEBzDLi2cvk
         E8Z+u8DzS/lBmK7VCxK5wC1p3rbavEHTa69WtDtFURWm2iGvyxElBXNYOBdzRzkFJ8gp
         cQueylBc9+j4cxgCk/ehqkHYHSaslLtxN6jP0L0Jk5wA4Hmx7k91yzcosxBfvnzdAvdl
         6VU9/m/zncoR4GnNw1ZTqR3uCnJkC/5fhy/ZT8MT6hoJhR5+SzGoP0peI0s/iKj7xtrj
         TSew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y4A5Uf4Os6WPGl/YWHkNN/4TU8yF2iW13SGgEG1fF60=;
        b=DzEkpoW/BWhpIB4hX89FRkf9FCflBcU19SimyQyXFLu5KT6VTBrsBV54sNXtqBSbRc
         Q8iV1zWBclvtc+3mknlfZjTmE+9dMWCVdJ5kvl1W7L5x/3zYrNtSUtSPTiXEfEUKGLsg
         bCunUyg6HVShhyz0sbBcAxZguZEMPLweivXF0vKuJ7q5o2hnDY1xsq/2xhWi4jnLjZZq
         jiFKifw46bQjJJmtMIMCPxLLRbR6bFVanP5XFVx3TgmOekLYeYdCeOQptIVf4P6pBSsD
         OMdncwb96CSLrtLH39yRfnOPlOnklJ/mn4M7vOr1MhJbav+MAuoDdm37lxNeReZgO7u0
         x6xg==
X-Gm-Message-State: AOAM531zszURi+0apIr1ZgmQ7k+8+eyotCAbNPiMi/r5KOWSRk3q31rb
        kMLPf1GS3aweVOGD3Yc/Gi78/Q==
X-Google-Smtp-Source: ABdhPJwh53VbXv1w+xpdN/qRQno7PAQqQ65fFnPwfNieIO4vpJ9+3vDNvUXnu1JZhnq87887ExdDmA==
X-Received: by 2002:adf:fc88:: with SMTP id g8mr2503989wrr.259.1612949548930;
        Wed, 10 Feb 2021 01:32:28 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id t2sm2150583wru.53.2021.02.10.01.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Feb 2021 01:32:28 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 5/7] ASoC: qcom: dt-bindings: add bindings for lpass tx macro codec
Date:   Wed, 10 Feb 2021 09:30:53 +0000
Message-Id: <20210210093055.18350-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210210093055.18350-1-srinivas.kandagatla@linaro.org>
References: <20210210093055.18350-1-srinivas.kandagatla@linaro.org>
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

