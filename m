Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A9693FFF03
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 13:22:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349241AbhICLWx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 07:22:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349253AbhICLWt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 07:22:49 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 067D8C061760
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 04:21:50 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id z4so7727322wrr.6
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 04:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RwkBekoVHbR6mINfcBzFLlTHGm7nkcct6qC3KOCM4UE=;
        b=nnDuaGdzIo6q/ktDdSQ5oNq6FAVQxDKNm3vpvhidfJ+W0+arnzzt8T0i4adPPle3Na
         /X2embjE5Zrfp2eYUGZKthxtgIFJfdh6JECxWbeyOLoyF1HCdyggBvrKPL9qM+gF8Ks+
         bGKG/dV4gKwN8ghzywLXFa2v6ZtgdDKstEDQj06MyO2/L0Dg0rwNGSWRo7B40PIBTlmH
         25fyCDiQ4/0UwMPTwH5WSDIZVo4UrY69fHfEXkcqe6+D9N4Kj4zO9UQti/sgvpm437BN
         2n6mExwvWjbXzLLG1kKfp82UmGZpfvSATTOjL6TKLWpVyRg40QKuu5wSq9j1zJX6ybi7
         G6/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RwkBekoVHbR6mINfcBzFLlTHGm7nkcct6qC3KOCM4UE=;
        b=LjTg++EsYuxb9DlNfKbY2OTPnl7QQ2mwxRhSn5fmB7Gr3S+qGuAMOSZQPKo8OsIvRp
         U3+FxssNPSfHR5XjU+jG85l4BDPUs0lJaDsEXkx+0c7RYPA77w/SvndOSugIouoehIF+
         NypRfNheeiOlrvJwzh1Jr0IN6JOPgbP1+iMx6tWU0XM/elr53Xqv/gjmxqAxWHHr4Oos
         u4DXMbwLPmz54aoeR9kr9laIXnTOfe17yq9+Yx3mUmb/wxFfTsCeXLMVEWg/qRhW0we6
         lDH5OVungzA/3hjfTseUk0oXnSBw7N96Jbg00Ex55Onq91T3tLiS7DDe+AlGCw3YdiFm
         hygQ==
X-Gm-Message-State: AOAM530ey6Jei6UBokUHzWBSW3gzmFOItvSZYR4FMu1fcPf7jmu+gYzB
        L89oPvOqE+ObGexLZMzB1SsPXg==
X-Google-Smtp-Source: ABdhPJzwBsuoA054xPFPRaAoZeV82ZrjBVhXF2UfSP+zszzIu2WwjBzQ1sQL90BX/skDPztfsvcUKw==
X-Received: by 2002:adf:80e5:: with SMTP id 92mr3506130wrl.300.1630668108623;
        Fri, 03 Sep 2021 04:21:48 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id f20sm3881877wmb.32.2021.09.03.04.21.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 04:21:48 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v5 13/21] ASoC: dt-bindings: add q6apm digital audio stream bindings
Date:   Fri,  3 Sep 2021 12:20:24 +0100
Message-Id: <20210903112032.25834-14-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On AudioReach audio Framework, Audio Streams (PCM/Compressed) are managed by
Q6APM(Audio Process Manager) service. This patch adds bindings for this DAIs
exposed by the DSP.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,q6apm-dai.yaml        | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
new file mode 100644
index 000000000000..75431d1c0b2a
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/sound/qcom,q6apm-dai.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm Audio Process Manager Digital Audio Interfaces binding
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  This binding describes the Qualcomm APM DAIs in DSP
+
+properties:
+  compatible:
+    const: qcom,q6apm-dais
+
+  reg:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - iommus
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    gpr {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        gprservice@1 {
+          compatible = "qcom,q6apm";
+          reg = <1>;
+
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          apm@1 {
+            compatible = "qcom,q6apm-dais";
+            iommus = <&apps_smmu 0x1801 0x0>;
+            reg = <1>;
+          };
+        };
+    };
-- 
2.21.0

