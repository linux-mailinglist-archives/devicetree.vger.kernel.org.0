Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0939413476
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 15:39:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233146AbhIUNkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 09:40:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233125AbhIUNko (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 09:40:44 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 543F6C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:39:16 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id c22so74223642edn.12
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kwISwd5A9r+96Ga/POOsImhvVy//AhRYwgp/dJ/hQjg=;
        b=z3KkpCkZQfQRbI9pDEtxTrKQyMNvLm7FVYe7f2CWiW3A3aXXzsP9lWCn23faCeN/Kt
         GeOfjctpeWrTQd5iyCnsnNWGAAal/aVhkrtuJV+SerPdqAEPGsdt9tDG4UtNSUlENO8H
         8ZMfOLA5sJmNlrcSlBJRNKnew3DXmQ0hSfVQ7c59SJJEVKlMuIcEc2JFPS0c1MCaI82X
         y9It06glRcHF9aA62rJ+cd3d5sxLkc4lhA4Jp1LGcNagfVZhOvu1br9VoyvejRM85HR6
         eVbyvY8T4Y2/veRRa+euFqH3+Ikt+1onBB2zwk0/6muElbyggYQcsdZdl4QRBciL5KKY
         4aYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kwISwd5A9r+96Ga/POOsImhvVy//AhRYwgp/dJ/hQjg=;
        b=QeZp7YcegoC+cTkvH7GRBQfzZV+qi+e8iAbXCiU4N81IuD+STp/q/Ap0f2i2wedtsI
         TA/ixhEgbu5xL7K0G79IOcCIlz5bR9XFjt0jw8rHDF1mGXM+zSfosh74gmCwOxeM7HiP
         9TfNZ2XSYen9FMaQrXesOBrH1YYGU2WVkvkBUAxFq44guUJ4GB3O5kk1FXjTeGO/2j8h
         PFxCmvvFTnk4Ah4sEWLzIhAnIO0hKKoewJdOEHX46nB1QBPLxI/yXPzqDfUGong8fmbX
         WDOL4CxkEvIEB2rCOPciFMBUSWwxAQwQONRtOzFX6sSuLZ5Nm1xwm+j5S4AunlS53B7h
         rykA==
X-Gm-Message-State: AOAM532fvqxuljSrj5PoxZ4WJgvLP8vdV3MCU/21fX7QRXPq9EXKi3Lg
        1NBRW6zYJ3XwkyfDC7E3Z3ofUQ==
X-Google-Smtp-Source: ABdhPJz+wtek4aATVG1fizILW3QoHHUZo5pFL4YsOa4VncXXvvHw9Qt+E8R7ko7xqTEfiq7b/b6agQ==
X-Received: by 2002:a50:e188:: with SMTP id k8mr14841401edl.119.1632231463354;
        Tue, 21 Sep 2021 06:37:43 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b3sm7915799edx.55.2021.09.21.06.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 06:37:42 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v7 13/22] ASoC: dt-bindings: add q6apm digital audio stream bindings
Date:   Tue, 21 Sep 2021 14:37:00 +0100
Message-Id: <20210921133709.4973-14-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
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

