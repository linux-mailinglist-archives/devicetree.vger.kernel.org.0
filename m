Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D33883077DA
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 15:23:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231484AbhA1OUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 09:20:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231420AbhA1OUh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 09:20:37 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB494C0613D6
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 06:19:56 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id 7so5593794wrz.0
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 06:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5s1sQMKmA5X4b0lhaDVUuKBYgKx/IDMprYcIvq92de4=;
        b=I9vxJn/1Ck4iP8t6coN1ZOIjPhSLezBeAAAS9ehzuUmjGKMEXA3fWU7U0vAwJX/gXN
         +oqWM4aU24qPDxv4ZJf/4WPyimDFaAKc1PeEm9pD8wY++AIttSyIFovhY6iI6xL50o85
         Y25DgXuisgkciQiFDHYol1jrJrOle6w8mSIgOZfwMglkJM3ffY0J/w5LpJnOBBro3QsL
         9qXtGqg81IrdNX30Ww018hT2j4JbAZy2KcGeCCUkLfa1MyUdIsxGluATXUULuVFZqxOo
         RXbDNWeIF3EGccYB/tfb5zFBodWkA0XG3uCyVkS04nt09iL7lfUcaCbVrwVU5Vaav9zD
         zSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5s1sQMKmA5X4b0lhaDVUuKBYgKx/IDMprYcIvq92de4=;
        b=LCj/fH7RS55LuiUGLJeDOyc0kS9SnNte/QmEBjOPwzcGc6C8R0PQ0qDa9PaYs3gbE4
         bEEohSZTprlwwd8rzUfZD6sBBuFkXGWGK4/9bVXpOpsyKFtlx0NN4symdbdmJILDnifK
         DFOBGeE9zNyScNsxA3EIF85XGeERaBgfpKSB4M5jpm1ZIFIixb8vEG+PAZuDsBHEShGI
         PkVXJuYT4Z7ZUx+WxhIQ8bXeUcYPEjqMxtB/+bZKyQ5H2p0dSSDwxN7nfkNcvPM3/nUq
         G442Ipp4s2VX2gDhGAgwUxH6CQAKrbYuz//Wa1zX7lI7aqV15xpOj70WSXT9xoh1mjJI
         ecFA==
X-Gm-Message-State: AOAM531HxhejJ1OP8f4mvUDCw7LHa74qJMuJEUVrZ0B3sDbHGcW/b0R8
        7L811WUaTiqcGmIeqgY9rbCi6dVUt2LhDg==
X-Google-Smtp-Source: ABdhPJyPrFZX+5pwRIKZPPeQK4A4jUwO3uipEsTKpcC6jWj0kzsQuyrY2QTQVfd+Xskfj8KzzUznLw==
X-Received: by 2002:adf:efc2:: with SMTP id i2mr16095837wrp.422.1611843595619;
        Thu, 28 Jan 2021 06:19:55 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id d9sm7257096wrq.74.2021.01.28.06.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 06:19:55 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 1/7] ASoC: qcom: dt-bindings: add bindings for lpass rx macro codec
Date:   Thu, 28 Jan 2021 14:19:23 +0000
Message-Id: <20210128141929.26573-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210128141929.26573-1-srinivas.kandagatla@linaro.org>
References: <20210128141929.26573-1-srinivas.kandagatla@linaro.org>
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

