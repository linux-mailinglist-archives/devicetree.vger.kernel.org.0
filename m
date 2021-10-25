Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63B5F439D4A
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 19:17:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232742AbhJYRTn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 13:19:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232410AbhJYRTm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 13:19:42 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E9DCC061767
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:20 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id k7so9484455wrd.13
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZUTQPGMld1NjfHqBeBgP6Q5d4oV2F6unCGQSSDbPgkI=;
        b=wzF5NefaWuJV1SiBItHQZTQ+EQ6Wii51YLv2LcaNV+DYBZcevM3rTvH9bVI7Nt1ItL
         TNvgVRW8Agz91hECjveULwumyf1CDpjFOsdSu/3CRZueKjvBSXkKtZmOt906+hXZaPJ8
         qEqlHb0qQhYsk4jqpQQwmHQ2IMDyRXI+HMm4VpO5nSyZWWwQsUYFjjnq8ab3VGu2eflG
         HXURgLuGzqk9lklIpHgyudqDKK7vMs3f858vsSy7V3+yeH5I1w4kslpUaaK3Mg/6yupC
         Kkw8Gs92pH8tcaUcxensMMqXg94rfEsP5BA7EESEyaeHDjqayDBDsWxH5QT5/Fbe9MbU
         GKwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZUTQPGMld1NjfHqBeBgP6Q5d4oV2F6unCGQSSDbPgkI=;
        b=DKnMjA3KYDfx9qB8w7Ax2GJJCB31a9yMAD/Knsg43tp1dOeTdTrxRR3hOpBxWEYhS/
         sMIJGIUwZSiEWpz73qCAJNtjZ/u0V8GDS4JN89214LC2gNlxIp6w8uO+fYoMNd9Hdfki
         eJDVO+ZXdxoNq4kgoV2T8/Y6quJdawgxUkTz9SUIgdBayC6xHVTn/MTcwuGDN85tUR6/
         5mhkSGaety006wnV8mcy89LLW2Xs9xwmRhD9TD1N3e8dyRv/UrFVbjQQpIThLWBDr7/4
         +9Uerc1mlnD9126Tl0Huox+fKuNXFZLGvWKddDGcmPCHMfIECr4SgB5fuBE8SV0caGMy
         irCA==
X-Gm-Message-State: AOAM5328bg8Fsl/THhCTP+5ymB9Cooe2zQAAt6et1dG+3CDRVqanSFqU
        xkyUc0ml/dHcHtgR+mkj9WmE3g==
X-Google-Smtp-Source: ABdhPJwoWPto9WG3m61QzjZnDE2aejUvuK9tn0SIenbQwblhQt6IR2sBdd+St+GgOOSRYa4qenIoOQ==
X-Received: by 2002:a5d:438b:: with SMTP id i11mr9969426wrq.188.1635182238986;
        Mon, 25 Oct 2021 10:17:18 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id r11sm5181012wrt.42.2021.10.25.10.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 10:17:18 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v10 08/17] ASoC: dt-bindings: add q6apm digital audio stream bindings
Date:   Mon, 25 Oct 2021 18:16:40 +0100
Message-Id: <20211025171649.17730-9-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
References: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On AudioReach audio Framework, Audio Streams (PCM/Compressed) are managed by
Q6APM(Audio Process Manager) service. This patch adds bindings for this DAIs
exposed by the DSP.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Hi Rob, 

You might see a dt_binding_check errors as QCOM SoC relevant non-audio patches
in this series have been merged into the Qualcomm drivers-for-5.16 tree,
as this series depends those patches an immutable tag is available at:
https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git
tags/20210927135559.738-6-srinivas.kandagatla@linaro.org

thanks,
srini

 .../bindings/sound/qcom,q6apm-dai.yaml        | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
new file mode 100644
index 000000000000..5d972784321d
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
@@ -0,0 +1,53 @@
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
+    #include <dt-bindings/soc/qcom,gpr.h>
+    gpr {
+        compatible = "qcom,gpr";
+        #address-cells = <1>;
+        #size-cells = <0>;
+        qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+        service@1 {
+          compatible = "qcom,q6apm";
+          reg = <1>;
+
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          apm-dai@1 {
+            compatible = "qcom,q6apm-dais";
+            iommus = <&apps_smmu 0x1801 0x0>;
+            reg = <1>;
+          };
+        };
+    };
-- 
2.21.0

