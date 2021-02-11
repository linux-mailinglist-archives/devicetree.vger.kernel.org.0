Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E69AC318A9F
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 13:34:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbhBKMbN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 07:31:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231390AbhBKM2g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 07:28:36 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFDC7C0613D6
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 04:27:46 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id u14so5554148wmq.4
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 04:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CqOeoZ5rOWKn/umE1C8T+JZK8lqxm0pfRIhp35rn7a8=;
        b=sZOo9pSDJCQlE0taFkAVz8Yanr5CMlblH6hChE3cgddeGGSH7lP+/xQjRB1D9H03QC
         O+/dDfEZ/ULkaAsr6UHdG+6bTBBIxAlDrgeW1MFTOldGQXGfXMtwONaL+vE62boYVZ6/
         xMos6MsBzY/UNZVMum6Od9zz1NUKQbp02qRYhrONmuPRWrHQTNFx+SyFPHZTFRSwTLt4
         vxl9bHLsx0fYl29SZilEdNT1W5v5vE6mF9CtF4GxOjHk4LKUFV1pza8I3QHGRTpOEZYE
         DvAqIsrpKCIePM5Zv3EabhWH/nRjjLlcV+2+3G7lD/+LH/qyjm1WJMVSBZp3tQWs2nWz
         msFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CqOeoZ5rOWKn/umE1C8T+JZK8lqxm0pfRIhp35rn7a8=;
        b=LjU+xy26UQpUCc2cZrZbNbiAeuwtCRh4apPlriRtmB8eVMumhd4xF+bdyZVByRmR9G
         lAFYK0/Gm5cWdm6otZG0dzWT0mAA9am6jWw/+/ltDlIs45Nwlu76aUIeGbxloB8gibHu
         WpdfR2Iai8iCKHJSzvdvpa4Erjq3Eb0amIXOEvXd/lonmFwFT0Qk3ISICVbSIDgUzHmW
         VljisCp0VeIdAdA/TnXmYo0c4rt+VnXOh4YmqN5YO5BqcHCfzkhUBl/+CJBMthVE1oKk
         98dSzhzGvnl+yUE6DgkspEkAs0a0m/J858Iuh/zzLnrlDK/D1EvJosArM1AvSozmSvvz
         bIbw==
X-Gm-Message-State: AOAM530RJy3ZtaQ3TNtlU6doQBKnWdTzn4hL9y6uMEOSn+nvacJVyzBA
        CV0j1w3sq9KGiF3PRLXl/EWreyViHvLjsA==
X-Google-Smtp-Source: ABdhPJw09oXv1VbECNCO7KpfMy0zp70JtFR7JMRop3+xbW6chEVfTw5HIM8edAocV0uRp63Z+rojUw==
X-Received: by 2002:a1c:3b42:: with SMTP id i63mr5093415wma.124.1613046465637;
        Thu, 11 Feb 2021 04:27:45 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id d20sm4026477wrc.12.2021.02.11.04.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 04:27:45 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 1/7] ASoC: qcom: dt-bindings: add bindings for lpass rx macro codec
Date:   Thu, 11 Feb 2021 12:27:29 +0000
Message-Id: <20210211122735.5691-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210211122735.5691-1-srinivas.kandagatla@linaro.org>
References: <20210211122735.5691-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This binding is for LPASS has internal codec RX macro which is
for connecting with SoundWire RX codecs like WCD938x.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
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

