Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 236243DEE4D
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 14:54:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236051AbhHCMys (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 08:54:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235635AbhHCMyn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 08:54:43 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5302FC0613D5
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 05:54:31 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id d8so25185118wrm.4
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 05:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yT1WsZzlE0eUDYlRwQaXQCE4J3/gCiPzPuZfeGR1VK8=;
        b=aIr2pWBKDB4M9arf8ZcU2feep2lh01V176PlNamu6beHiTfSB6XPGZbG6oEksZbRVP
         HsiiWvaIXIuFvX2PgAlkUc3dwbt0dbTlGM2q5NStxEbQy4ie4WeT3iTSEJKjawX53Y29
         h3Y+zVJQW3F+N1J3CSYA5VNhflfa29OXEZjCtgUSL0y/lvppERzpJ3K0dzIB5kAhrKJO
         xIiWLAIFihzPJ1+f8kwuD5PcuyauVCzOk77bgncyZ/iQRq37SPlhzUccqG5s8Ns3vsdV
         LhgyX+rD8Ihsf6EZCofJrG1LsJC763d+HkEdeghaF5em/3LyXWdV0HALkFhVnvX8PEqm
         KoAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yT1WsZzlE0eUDYlRwQaXQCE4J3/gCiPzPuZfeGR1VK8=;
        b=JoqDTRAsCYwIHoPEJNV5OaFK1d9aO0/UN7+GGoTmI+dBmwoBQeh/K4ZxzYcd9ZZVAe
         mQPUOv18iR59v5fcL5hhiYixdfE5KvzSp/lmsIUY9cnOwYRkCnrjZy7hhXpG20fN4jf4
         yPxPCHQNRNwnnDb2beeI1Tx7zvp6GaH7louQCVGwRyDbgOybr8+Ynz8vLEcbFzZ3UVx3
         xstC0sgWxiMcZGxDoMjKPnlqvRqpIpu3yJLqk6ttde3Sp0YPjJJ25gonhzSbY892CiNw
         ZayRSuQjHCU36hGidIuGQXoWGqSgV5GPO8zIT+ofSofS9In0LlRPAu1NAXUIWU4m/4HE
         h6Ng==
X-Gm-Message-State: AOAM530f+B2Z90iE8kOfHPh65jdC/70j6YaBjXhfMu1PAM8fTnTxOBbE
        JyviWa2TmfksT0RjXzSILYJI+g==
X-Google-Smtp-Source: ABdhPJxJKuLI5ViW+trLKXA1VVFm2kBnvPS5kUy89pH3LxhPEPOUctp0VrBwfVpi6nZwkz9gOW5GJA==
X-Received: by 2002:adf:db07:: with SMTP id s7mr23829386wri.106.1627995269955;
        Tue, 03 Aug 2021 05:54:29 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h14sm14695574wrp.55.2021.08.03.05.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 05:54:29 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 06/20] ASoC: dt-bindings: replace q6afe-clk with q6dsp audio clk bindings
Date:   Tue,  3 Aug 2021 13:53:57 +0100
Message-Id: <20210803125411.28066-7-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DSP Audio clock bindings have been documented with DSP services bindings
which makes it difficult to reuse them, so pull them out in to a dedicated
bindings.
Also as part of this change convert them into yaml format.

q6afe-clocks were part of q6afe bindings which are deleted in previous patch, this
patch just adds replacement bindings for clocks in yaml format.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../sound/qcom,q6dsp-audio-clocks.yaml        | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-clocks.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-clocks.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-clocks.yaml
new file mode 100644
index 000000000000..03ab7451eb1c
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-clocks.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/sound/qcom,q6dsp-audio-clocks.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm DSP Clock Controller binding
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  This binding describes the Qualcomm DSP Clock Controller
+
+properties:
+  compatible:
+    const: qcom,q6afe-clocks
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 2
+    description:
+      Clock Id is followed by clock coupling attributes.
+        1 = for no coupled clock
+        2 = for dividend of the coupled clock
+        3 = for divisor of the coupled clock
+        4 = for inverted and no couple clock
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/soc/qcom,apr.h>
+    #include <dt-bindings/sound/qcom,q6afe.h>
+    apr {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        apr-service@4 {
+            reg = <APR_SVC_AFE>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            q6afecc@2 {
+              compatible = "qcom,q6afe-clocks";
+              reg = <2>;
+              #clock-cells = <2>;
+            };
+        };
+      };
-- 
2.21.0

